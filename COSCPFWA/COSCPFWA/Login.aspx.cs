using System;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace COSCPFWA
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["DataBaseConnectionString"].ConnectionString;
                using (MySqlConnection conn = new MySqlConnection(connString))
                {
                    conn.Open();
                    string query = @"
                        SELECT ul.user_id, r.role_name
                        FROM user_logins ul
                        JOIN user_roles ur ON ul.user_id = ur.user_id
                        JOIN roles r ON ur.role_id = r.role_id
                        WHERE ul.username = @Username
                          AND ul.password_hash = @Password
                          AND ul.is_active = 1
                        LIMIT 1";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Username", username);
                        cmd.Parameters.AddWithValue("@Password", password);

                        using (MySqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                string role = reader["role_name"].ToString();
                                Session["UserID"] = Convert.ToInt32(reader["user_id"]);
                                Session["Username"] = username;
                                Session["RoleName"] = role;

                                // Redirect based on user role
                                if (role == "Admin")
                                {
                                    Response.Redirect("AdminDashboard.aspx", false);
                                    Context.ApplicationInstance.CompleteRequest();
                                    return;
                                }
                                else if (role == "Employee")
                                {
                                    Response.Redirect("EmployeeDashboard.aspx", false);
                                    Context.ApplicationInstance.CompleteRequest();
                                    return;
                                }
                                else if (role == "Customer")
                                {
                                    Response.Redirect("CustomerDashboard.aspx", false);
                                    Context.ApplicationInstance.CompleteRequest();
                                    return;
                                }
                                else
                                {
                                    lblMessage.Text = "Unauthorized.";
                                }
                            }
                            else
                            {
                                lblMessage.Text = "Invalid Username or Password.";
                            }
                        }

                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }

        }

    }
}
