using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using COSCPFWA.Security;

namespace COSCPFWA
{
    public partial class CheckPackages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Authz.RequireAnyRole("Employee", "DepartmentManager", "FacilityManager", "WebAdmin", "ReportAdmin");
        }

        protected void CheckPackagesButton_Click(object sender, EventArgs e)
        {
            BindPackages();
        }

        protected void PackagesGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            PackagesGridView.EditIndex = e.NewEditIndex;
            BindPackages();
        }

        protected void PackagesGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int packageId = Convert.ToInt32(PackagesGridView.DataKeys[e.RowIndex].Value);
            GridViewRow row = PackagesGridView.Rows[e.RowIndex];

            string employeeIdText = ((TextBox)row.FindControl("PackageEmployeeIDTextBox")).Text.Trim();
            string packageStatus = ((TextBox)row.FindControl("PackageStatusTextBox")).Text.Trim();
            string contents = ((TextBox)row.FindControl("ContentsTextBox")).Text.Trim();
            string serviceType = ((TextBox)row.FindControl("ServiceTypeTextBox")).Text.Trim();
            string weightLbsText = ((TextBox)row.FindControl("WeightLbsTextBox")).Text.Trim();
            string lengthInText = ((TextBox)row.FindControl("LengthInTextBox")).Text.Trim();
            string widthInText = ((TextBox)row.FindControl("WidthInTextBox")).Text.Trim();
            string heightInText = ((TextBox)row.FindControl("HeightInTextBox")).Text.Trim();

            if (!TryParseOptionalInt(employeeIdText, out int? employeeId))
            {
                ShowAlert("Employee ID must be blank or a whole number.");
                return;
            }

            if (string.IsNullOrEmpty(packageStatus))
            {
                ShowAlert("Package status is required.");
                return;
            }

            if (string.IsNullOrEmpty(serviceType))
            {
                ShowAlert("Service type is required.");
                return;
            }

            if (string.IsNullOrEmpty(contents))
            {
                contents = "Unknown";
            }
            else if (contents.Length > 30)
            {
                contents = contents.Substring(0, 30);
            }

            if (!decimal.TryParse(weightLbsText, out decimal weightLbs) || weightLbs <= 0)
            {
                ShowAlert("Weight must be a positive number.");
                return;
            }

            if (!TryParseOptionalDecimal(lengthInText, out decimal? lengthIn) ||
                !TryParseOptionalDecimal(widthInText, out decimal? widthIn) ||
                !TryParseOptionalDecimal(heightInText, out decimal? heightIn))
            {
                ShowAlert("Length, width, and height must be blank or valid numbers.");
                return;
            }

            string connString = ConfigurationManager.ConnectionStrings["DataBaseConnectionString"]?.ConnectionString;
            if (string.IsNullOrEmpty(connString))
            {
                ShowAlert("Database connection string is missing or misconfigured.");
                return;
            }

            using (MySqlConnection conn = new MySqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    int packageStatusId = GetLookupId(conn, "package_status", "package_status_id", "status_name", packageStatus);
                    LookupValue serviceTypeLookup = GetServiceType(conn, serviceType);

                    string query = @"
                        UPDATE package
                        SET employee_id = @EmployeeID,
                            package_status_id = @PackageStatusID,
                            service_type_id = @ServiceTypeID,
                            service_type = @ServiceTypeName,
                            contents = @Contents,
                            weight_lbs = @WeightLbs,
                            length_in = @LengthIn,
                            width_in = @WidthIn,
                            height_in = @HeightIn
                        WHERE package_id = @PackageID";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@PackageID", packageId);
                        cmd.Parameters.AddWithValue("@EmployeeID", employeeId.HasValue ? (object)employeeId.Value : DBNull.Value);
                        cmd.Parameters.AddWithValue("@PackageStatusID", packageStatusId);
                        cmd.Parameters.AddWithValue("@ServiceTypeID", serviceTypeLookup.Id);
                        cmd.Parameters.AddWithValue("@ServiceTypeName", serviceTypeLookup.Name);
                        cmd.Parameters.AddWithValue("@Contents", contents);
                        cmd.Parameters.AddWithValue("@WeightLbs", weightLbs);
                        cmd.Parameters.AddWithValue("@LengthIn", lengthIn.HasValue ? (object)lengthIn.Value : DBNull.Value);
                        cmd.Parameters.AddWithValue("@WidthIn", widthIn.HasValue ? (object)widthIn.Value : DBNull.Value);
                        cmd.Parameters.AddWithValue("@HeightIn", heightIn.HasValue ? (object)heightIn.Value : DBNull.Value);
                        cmd.ExecuteNonQuery();
                    }

                    PackagesGridView.EditIndex = -1;
                    BindPackages();
                }
                catch (MySqlException ex)
                {
                    ShowAlert("Database error: " + ex.Message);
                }
                catch (Exception ex)
                {
                    ShowAlert("An unexpected error occurred: " + ex.Message);
                }
            }
        }

        protected void PackagesGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int packageId = Convert.ToInt32(PackagesGridView.DataKeys[e.RowIndex].Value);
            string connString = ConfigurationManager.ConnectionStrings["DataBaseConnectionString"]?.ConnectionString;
            if (string.IsNullOrEmpty(connString))
            {
                ShowAlert("Database connection string is missing or misconfigured.");
                return;
            }

            using (MySqlConnection conn = new MySqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (MySqlTransaction transaction = conn.BeginTransaction())
                    {
                        try
                        {
                            DeletePackageDependencies(conn, transaction, packageId);

                            using (MySqlCommand cmd = new MySqlCommand("DELETE FROM package WHERE package_id = @PackageID", conn, transaction))
                            {
                                cmd.Parameters.AddWithValue("@PackageID", packageId);
                                cmd.ExecuteNonQuery();
                            }

                            transaction.Commit();
                        }
                        catch
                        {
                            transaction.Rollback();
                            throw;
                        }
                    }

                    BindPackages();
                }
                catch (MySqlException ex)
                {
                    ShowAlert("Database error: " + ex.Message);
                }
                catch (Exception ex)
                {
                    ShowAlert("An unexpected error occurred: " + ex.Message);
                }
            }
        }

        protected void PackagesGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            PackagesGridView.EditIndex = -1;
            BindPackages();
        }

        private void BindPackages()
        {
            string connString = ConfigurationManager.ConnectionStrings["DataBaseConnectionString"]?.ConnectionString;
            if (string.IsNullOrEmpty(connString))
            {
                ShowAlert("Database connection string is missing or misconfigured.");
                return;
            }

            string employeeIdText = EmployeeIDTextBox.Text.Trim();
            int employeeId = 0;
            bool filterByEmployee = !string.IsNullOrEmpty(employeeIdText);

            if (filterByEmployee && !int.TryParse(employeeIdText, out employeeId))
            {
                ShowAlert("Employee ID must be a whole number.");
                return;
            }

            using (MySqlConnection conn = new MySqlConnection(connString))
            {
                string query = @"
                    SELECT
                        p.package_id,
                        p.customer_id,
                        p.employee_id,
                        p.package_status_id,
                        ps.status_name AS package_status,
                        p.service_type_id,
                        COALESCE(st.service_type_name, p.service_type) AS service_type_name,
                        p.contents,
                        p.weight_lbs,
                        p.length_in,
                        p.width_in,
                        p.height_in,
                        p.shipping_cost,
                        p.received_date
                    FROM package p
                    JOIN package_status ps ON p.package_status_id = ps.package_status_id
                    LEFT JOIN service_type st ON p.service_type_id = st.service_type_id";

                if (filterByEmployee)
                {
                    query += " WHERE p.employee_id = @EmployeeID";
                }

                query += " ORDER BY p.package_id";

                using (MySqlDataAdapter da = new MySqlDataAdapter(query, conn))
                {
                    if (filterByEmployee)
                    {
                        da.SelectCommand.Parameters.AddWithValue("@EmployeeID", employeeId);
                    }

                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    PackagesGridView.DataSource = dt;
                    PackagesGridView.DataBind();
                    AddClientConfirmation();
                }
            }
        }

        private static void DeletePackageDependencies(MySqlConnection conn, MySqlTransaction transaction, int packageId)
        {
            string[] dependencyDeletes =
            {
                "DELETE FROM notifications WHERE package_id = @PackageID",
                "DELETE FROM trackinghistory WHERE package_id = @PackageID",
                "DELETE FROM refunds WHERE package_id = @PackageID",
                "DELETE FROM package_to_locker WHERE package_id = @PackageID",
                "DELETE FROM shippingdetails WHERE package_id = @PackageID",
                "DELETE FROM pickupdetails WHERE package_id = @PackageID",
                "UPDATE incident SET package_id = NULL WHERE package_id = @PackageID"
            };

            foreach (string query in dependencyDeletes)
            {
                using (MySqlCommand cmd = new MySqlCommand(query, conn, transaction))
                {
                    cmd.Parameters.AddWithValue("@PackageID", packageId);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        private static int GetLookupId(MySqlConnection conn, string tableName, string idColumn, string nameColumn, string nameValue)
        {
            string query = $@"
                SELECT {idColumn}
                FROM {tableName}
                WHERE LOWER({nameColumn}) = LOWER(@Name)
                LIMIT 1";

            using (MySqlCommand cmd = new MySqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Name", nameValue);
                object result = cmd.ExecuteScalar();
                if (result == null)
                {
                    throw new InvalidOperationException($"Unknown {tableName} value: {nameValue}.");
                }

                return Convert.ToInt32(result);
            }
        }

        private static LookupValue GetServiceType(MySqlConnection conn, string serviceTypeName)
        {
            string query = @"
                SELECT service_type_id, service_type_name
                FROM service_type
                WHERE LOWER(service_type_name) = LOWER(@Name)
                LIMIT 1";

            using (MySqlCommand cmd = new MySqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Name", serviceTypeName);
                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    if (!reader.Read())
                    {
                        throw new InvalidOperationException($"Unknown service type: {serviceTypeName}.");
                    }

                    return new LookupValue
                    {
                        Id = Convert.ToInt32(reader["service_type_id"]),
                        Name = reader["service_type_name"].ToString()
                    };
                }
            }
        }

        private static bool TryParseOptionalInt(string value, out int? result)
        {
            if (string.IsNullOrEmpty(value))
            {
                result = null;
                return true;
            }

            if (int.TryParse(value, out int parsedValue))
            {
                result = parsedValue;
                return true;
            }

            result = null;
            return false;
        }

        private static bool TryParseOptionalDecimal(string value, out decimal? result)
        {
            if (string.IsNullOrEmpty(value))
            {
                result = null;
                return true;
            }

            if (decimal.TryParse(value, out decimal parsedValue) && parsedValue > 0)
            {
                result = parsedValue;
                return true;
            }

            result = null;
            return false;
        }

        private void AddClientConfirmation()
        {
            foreach (GridViewRow row in PackagesGridView.Rows)
            {
                if (row.RowType != DataControlRowType.DataRow)
                {
                    continue;
                }

                foreach (TableCell cell in row.Cells)
                {
                    foreach (Control control in cell.Controls)
                    {
                        if (control is Button button)
                        {
                            AddConfirmation(button);
                        }
                        else if (control is LinkButton linkButton)
                        {
                            AddConfirmation(linkButton);
                        }
                    }
                }
            }
        }

        private static void AddConfirmation(WebControl control)
        {
            if (control is IButtonControl buttonControl)
            {
                if (buttonControl.CommandName == "Delete")
                {
                    control.Attributes["onclick"] = "return confirmDelete();";
                }
                else if (buttonControl.CommandName == "Edit")
                {
                    control.Attributes["onclick"] = "return confirmEdit();";
                }
            }
        }

        private void ShowAlert(string message)
        {
            string safeMessage = message.Replace("\\", "\\\\").Replace("'", "\\'");
            ClientScript.RegisterStartupScript(GetType(), "checkPackagesAlert", $"alert('{safeMessage}');", true);
        }

        private class LookupValue
        {
            public int Id { get; set; }
            public string Name { get; set; }
        }
    }
}
