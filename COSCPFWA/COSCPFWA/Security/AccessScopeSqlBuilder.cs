using System;
using System.Collections.Generic;
using COSCPFWA.Models;
using MySql.Data.MySqlClient;

namespace COSCPFWA.Security
{
    public static class AccessScopeSqlBuilder
    {
        public static SqlScopeClause BuildFinanceClause(CurrentUser user, string facilityColumnName)
        {
            if (user == null || !user.CanViewFinance)
            {
                return SqlScopeClause.DenyAll();
            }

            switch ((user.FinanceAccessScope ?? "None").Trim())
            {
                case "AllFacilities":
                    return SqlScopeClause.AllowAll();
                case "OwnFacility":
                    if (!user.FacilityId.HasValue)
                    {
                        return SqlScopeClause.DenyAll();
                    }

                    return SqlScopeClause.FromSingleParameter(
                        facilityColumnName + " = @ScopeFacilityId",
                        "@ScopeFacilityId",
                        user.FacilityId.Value);
                default:
                    return SqlScopeClause.DenyAll();
            }
        }

        public static SqlScopeClause BuildLogisticsClause(
            CurrentUser user,
            string facilityColumnName,
            string departmentColumnName,
            string employeeColumnName,
            string customerColumnName)
        {
            if (user == null || !user.CanViewLogistics)
            {
                return SqlScopeClause.DenyAll();
            }

            switch ((user.LogisticsAccessScope ?? "None").Trim())
            {
                case "AllFacilities":
                    return SqlScopeClause.AllowAll();
                case "OwnFacility":
                    if (!user.FacilityId.HasValue)
                    {
                        return SqlScopeClause.DenyAll();
                    }

                    return SqlScopeClause.FromSingleParameter(
                        facilityColumnName + " = @ScopeFacilityId",
                        "@ScopeFacilityId",
                        user.FacilityId.Value);
                case "OwnDepartment":
                    if (!user.DepartmentId.HasValue)
                    {
                        return SqlScopeClause.DenyAll();
                    }

                    return SqlScopeClause.FromSingleParameter(
                        departmentColumnName + " = @ScopeDepartmentId",
                        "@ScopeDepartmentId",
                        user.DepartmentId.Value);
                case "Self":
                    if (!user.EmployeeId.HasValue)
                    {
                        return SqlScopeClause.DenyAll();
                    }

                    return SqlScopeClause.FromSingleParameter(
                        employeeColumnName + " = @ScopeEmployeeId",
                        "@ScopeEmployeeId",
                        user.EmployeeId.Value);
                case "OwnCustomer":
                    if (string.IsNullOrWhiteSpace(user.CustomerIdHex))
                    {
                        return SqlScopeClause.DenyAll();
                    }

                    return SqlScopeClause.FromSingleParameter(
                        customerColumnName + " = UNHEX(@ScopeCustomerIdHex)",
                        "@ScopeCustomerIdHex",
                        user.CustomerIdHex);
                default:
                    return SqlScopeClause.DenyAll();
            }
        }

        public sealed class SqlScopeClause
        {
            private readonly List<ParameterValue> _parameters = new List<ParameterValue>();

            public string WhereClause { get; private set; }

            public static SqlScopeClause AllowAll()
            {
                return new SqlScopeClause { WhereClause = "1 = 1" };
            }

            public static SqlScopeClause DenyAll()
            {
                return new SqlScopeClause { WhereClause = "1 = 0" };
            }

            public static SqlScopeClause FromSingleParameter(string whereClause, string parameterName, object parameterValue)
            {
                SqlScopeClause clause = new SqlScopeClause { WhereClause = whereClause };
                clause._parameters.Add(new ParameterValue
                {
                    Name = parameterName,
                    Value = parameterValue ?? DBNull.Value
                });

                return clause;
            }

            public void ApplyParameters(MySqlCommand command)
            {
                foreach (ParameterValue parameter in _parameters)
                {
                    command.Parameters.AddWithValue(parameter.Name, parameter.Value);
                }
            }

            private sealed class ParameterValue
            {
                public string Name { get; set; }
                public object Value { get; set; }
            }
        }
    }
}
