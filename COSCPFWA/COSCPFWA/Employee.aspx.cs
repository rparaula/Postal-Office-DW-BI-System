using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COSCPFWA
{
    public partial class Employee1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadEmployees();
        }

        private void LoadEmployees()
        {
            string connString = ConfigurationManager.ConnectionStrings["DataBaseConnectionString"]?.ConnectionString;
            if (string.IsNullOrEmpty(connString))
            {
                ShowMessage("Database connection string is missing or misconfigured.");
                return;
            }

            using (MySqlConnection conn = new MySqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    string query = @"
                        SELECT e.employee_id,
                               e.full_name,
                               e.role_name,
                               e.email,
                               e.phone_number,
                               e.street_address,
                               d.department_name,
                               po.postal_office_name,
                               e.salary,
                               e.hours_worked,
                               manager.full_name AS manager_name
                        FROM employee e
                        LEFT JOIN departments d ON e.department_id = d.department_id
                        LEFT JOIN postaloffice po ON e.postal_office_id = po.postal_office_id
                        LEFT JOIN employee manager ON e.manager_employee_id = manager.employee_id
                        ORDER BY e.employee_id";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    using (MySqlDataAdapter adapter = new MySqlDataAdapter(cmd))
                    {
                        DataTable employees = new DataTable();
                        adapter.Fill(employees);
                        BindEmployeeGrid(employees);
                    }
                }
                catch (MySqlException ex)
                {
                    ShowMessage("Database error loading employees: " + ex.Message);
                }
                catch (Exception ex)
                {
                    ShowMessage("An unexpected error occurred loading employees: " + ex.Message);
                }
            }
        }

        private void BindEmployeeGrid(DataTable employees)
        {
            GridView employeeGrid = new GridView
            {
                ID = "EmployeesGrid",
                AutoGenerateColumns = true,
                CssClass = "table table-striped",
                GridLines = GridLines.None,
                DataSource = employees
            };

            employeeGrid.DataBind();
            form1.Controls.Add(new LiteralControl("<div style=\"margin: 20px; overflow-x: auto;\">"));
            form1.Controls.Add(employeeGrid);
            form1.Controls.Add(new LiteralControl("</div>"));
        }

        private void ShowMessage(string message)
        {
            string safeMessage = Server.HtmlEncode(message);
            form1.Controls.Add(new LiteralControl("<div style=\"margin: 20px; color: #b00020;\">" + safeMessage + "</div>"));
        }
    }
}
