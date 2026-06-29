using System;
using System.Collections.Generic;
using System.Configuration;
using COSCPFWA.Models;
using MySql.Data.MySqlClient;

namespace COSCPFWA.Services
{
    public class AuthService
    {
        private readonly string _connectionString;

        public AuthService()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["DataBaseConnectionString"]?.ConnectionString;
        }

        public CurrentUser Login(string usernameOrEmail, string password)
        {
            if (string.IsNullOrWhiteSpace(usernameOrEmail) || string.IsNullOrWhiteSpace(password))
            {
                return null;
            }

            if (string.IsNullOrWhiteSpace(_connectionString))
            {
                throw new InvalidOperationException("Database connection string is missing or misconfigured.");
            }

            using (MySqlConnection conn = new MySqlConnection(_connectionString))
            {
                conn.Open();

                LoginRecord loginRecord = GetLoginRecord(conn, usernameOrEmail.Trim());
                if (loginRecord == null || !PasswordService.VerifyPassword(password, loginRecord.PasswordHash))
                {
                    return null;
                }

                return GetCurrentUser(conn, loginRecord.UserId);
            }
        }

        private static LoginRecord GetLoginRecord(MySqlConnection conn, string usernameOrEmail)
        {
            const string query = @"
                SELECT user_id, password_hash
                FROM user_logins
                WHERE is_active = 1
                  AND (username = @UsernameOrEmail OR email = @UsernameOrEmail)
                LIMIT 1";

            using (MySqlCommand cmd = new MySqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@UsernameOrEmail", usernameOrEmail);

                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    if (!reader.Read())
                    {
                        return null;
                    }

                    return new LoginRecord
                    {
                        UserId = Convert.ToInt32(reader["user_id"]),
                        PasswordHash = Convert.ToString(reader["password_hash"])
                    };
                }
            }
        }

        private static CurrentUser GetCurrentUser(MySqlConnection conn, int userId)
        {
            const string query = @"
                SELECT user_id,
                       username,
                       email,
                       first_name,
                       last_name,
                       role_codes,
                       customer_id_hex,
                       employee_id,
                       department_id,
                       facility_id,
                       facility_type_code,
                       facility_type_name,
                       can_view_finance,
                       can_view_logistics,
                       finance_access_scope,
                       logistics_access_scope,
                       effective_customer_scope_key,
                       effective_facility_scope_key,
                       effective_department_scope_key,
                       effective_employee_scope_key
                FROM webvw_user_security_context
                WHERE user_id = @UserID
                LIMIT 1";

            using (MySqlCommand cmd = new MySqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@UserID", userId);

                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    if (!reader.Read())
                    {
                        throw new InvalidOperationException("The authenticated user does not have a security context row.");
                    }

                    return new CurrentUser
                    {
                        UserId = Convert.ToInt32(reader["user_id"]),
                        Username = Convert.ToString(reader["username"]),
                        Email = Convert.ToString(reader["email"]),
                        FirstName = Convert.ToString(reader["first_name"]),
                        LastName = Convert.ToString(reader["last_name"]),
                        Roles = ParseRoles(Convert.ToString(reader["role_codes"])),
                        CustomerIdHex = ReadNullableString(reader, "customer_id_hex"),
                        EmployeeId = ReadNullableInt32(reader, "employee_id"),
                        DepartmentId = ReadNullableInt32(reader, "department_id"),
                        FacilityId = ReadNullableInt32(reader, "facility_id"),
                        FacilityTypeCode = ReadNullableString(reader, "facility_type_code"),
                        FacilityTypeName = ReadNullableString(reader, "facility_type_name"),
                        CanViewFinance = ReadBoolean(reader, "can_view_finance"),
                        CanViewLogistics = ReadBoolean(reader, "can_view_logistics"),
                        FinanceAccessScope = ReadNullableString(reader, "finance_access_scope"),
                        LogisticsAccessScope = ReadNullableString(reader, "logistics_access_scope"),
                        EffectiveCustomerScopeKey = ReadNullableString(reader, "effective_customer_scope_key"),
                        EffectiveFacilityScopeKey = ReadNullableInt32(reader, "effective_facility_scope_key"),
                        EffectiveDepartmentScopeKey = ReadNullableInt32(reader, "effective_department_scope_key"),
                        EffectiveEmployeeScopeKey = ReadNullableInt32(reader, "effective_employee_scope_key")
                    };
                }
            }
        }

        private static HashSet<string> ParseRoles(string roleCodes)
        {
            HashSet<string> roles = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
            if (string.IsNullOrWhiteSpace(roleCodes))
            {
                return roles;
            }

            string[] tokens = roleCodes.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            foreach (string token in tokens)
            {
                string trimmed = token.Trim();
                if (!string.IsNullOrEmpty(trimmed))
                {
                    roles.Add(trimmed);
                }
            }

            return roles;
        }

        private static string ReadNullableString(MySqlDataReader reader, string columnName)
        {
            object value = reader[columnName];
            return value == DBNull.Value ? null : Convert.ToString(value);
        }

        private static int? ReadNullableInt32(MySqlDataReader reader, string columnName)
        {
            object value = reader[columnName];
            return value == DBNull.Value ? (int?)null : Convert.ToInt32(value);
        }

        private static bool ReadBoolean(MySqlDataReader reader, string columnName)
        {
            object value = reader[columnName];
            return value != DBNull.Value && Convert.ToInt32(value) == 1;
        }

        private sealed class LoginRecord
        {
            public int UserId { get; set; }
            public string PasswordHash { get; set; }
        }
    }
}
