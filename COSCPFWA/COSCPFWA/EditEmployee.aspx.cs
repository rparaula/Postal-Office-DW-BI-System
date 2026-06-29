using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Globalization;
using COSCPFWA.Security;

namespace COSCPFWA
{
    public partial class EditEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Authz.RequireAnyRole("WebAdmin", "ReportAdmin");
            employeeID.Attributes["min"] = "1";
            salary.Attributes["min"] = "0";
            salary.Attributes["step"] = "0.01";
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            int employeeIdValue;
            if (!int.TryParse(employeeID.Text.Trim(), out employeeIdValue) || employeeIdValue <= 0)
            {
                ShowAlert("Employee ID must be a positive whole number.");
                return;
            }

            decimal salaryValue;
            if (!decimal.TryParse(salary.Text.Trim(), NumberStyles.Number, CultureInfo.InvariantCulture, out salaryValue) || salaryValue < 0)
            {
                ShowAlert("Salary must be a valid non-negative number.");
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
                    string query = @"
                        UPDATE employee
                        SET salary = @Salary
                        WHERE employee_id = @EmployeeID";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.Add("@Salary", MySqlDbType.Decimal).Value = salaryValue;
                        cmd.Parameters.AddWithValue("@EmployeeID", employeeIdValue);

                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            ShowAlert("Employee salary updated successfully.");
                        }
                        else
                        {
                            ShowAlert("No matching employee ID was found.");
                        }
                    }
                }
                catch (MySqlException ex)
                {
                    ShowAlert("Database error updating employee salary: " + ex.Message);
                }
                catch (Exception ex)
                {
                    ShowAlert("An unexpected error occurred: " + ex.Message);
                }
            }
        }

        private void ShowAlert(string message)
        {
            string safeMessage = message.Replace("\\", "\\\\").Replace("'", "\\'");
            ClientScript.RegisterStartupScript(GetType(), "editEmployeeAlert", $"alert('{safeMessage}');", true);
        }
    }
}
