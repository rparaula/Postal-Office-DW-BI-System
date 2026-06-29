using System;
using MySql.Data.MySqlClient;
using System.Configuration;
namespace COSCPFWA
{
    public partial class RegisterCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Get user inputs
            string fullName = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string confirmPassword = txtConfirmPassword.Text.Trim();

            if (string.IsNullOrEmpty(fullName) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                lblMessage.Text = "Please fill in all fields.";
                return;
            }

            if (password != confirmPassword)
            {
                lblMessage.Text = "Passwords do not match!";
                return;
            }

            // Separate full name into first and last name.
            string[] nameParts = fullName.Split(new[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
            string firstName = nameParts[0];
            string lastName = nameParts.Length > 1 ? string.Join(" ", nameParts, 1, nameParts.Length - 1) : "";

            try
            {
                string connString = ConfigurationManager.ConnectionStrings["DataBaseConnectionString"].ConnectionString;
                using (MySqlConnection conn = new MySqlConnection(connString))
                {
                    conn.Open();
                    using (MySqlTransaction transaction = conn.BeginTransaction())
                    {
                        try
                        {
                            // Check if the username or email already exists
                            string checkUserQuery = "SELECT COUNT(*) FROM user_logins WHERE username = @Username OR email = @Email";
                            using (MySqlCommand checkCmd = new MySqlCommand(checkUserQuery, conn, transaction))
                            {
                                checkCmd.Parameters.AddWithValue("@Username", username);
                                checkCmd.Parameters.AddWithValue("@Email", email);

                                long existingUserCount = Convert.ToInt64(checkCmd.ExecuteScalar());
                                if (existingUserCount > 0)
                                {
                                    transaction.Rollback();
                                    lblMessage.Text = "Username or Email already exists. Please choose another.";
                                    return;
                                }
                            }

                            string insertUserQuery = @"INSERT INTO user_logins (first_name, last_name, email, username, password_hash, is_active)
                                                       VALUES (@FirstName, @LastName, @Email, @Username, @Password, 1)";
                            using (MySqlCommand insertCmd = new MySqlCommand(insertUserQuery, conn, transaction))
                            {
                                insertCmd.Parameters.AddWithValue("@FirstName", firstName);
                                insertCmd.Parameters.AddWithValue("@LastName", lastName);
                                insertCmd.Parameters.AddWithValue("@Email", email);
                                insertCmd.Parameters.AddWithValue("@Username", username);
                                insertCmd.Parameters.AddWithValue("@Password", password);

                                int rowsAffected = insertCmd.ExecuteNonQuery();
                                if (rowsAffected > 0)
                                {
                                    long newUserId = insertCmd.LastInsertedId;
                                    int customerRoleId = GetCustomerRoleId(conn, transaction);

                                    string insertRoleQuery = "INSERT INTO user_roles (user_id, role_id) VALUES (@UserID, @RoleID)";
                                    using (MySqlCommand roleCmd = new MySqlCommand(insertRoleQuery, conn, transaction))
                                    {
                                        roleCmd.Parameters.AddWithValue("@UserID", newUserId);
                                        roleCmd.Parameters.AddWithValue("@RoleID", customerRoleId);

                                        int roleRowsAffected = roleCmd.ExecuteNonQuery();
                                        if (roleRowsAffected > 0)
                                        {
                                            transaction.Commit();
                                            lblMessage.ForeColor = System.Drawing.Color.Green;
                                            lblMessage.Text = "Registration successful! You can now log in.";
                                            Response.Redirect("~/Login.aspx", false);
                                            Context.ApplicationInstance.CompleteRequest();
                                            return;
                                        }
                                        else
                                        {
                                            transaction.Rollback();
                                            lblMessage.Text = "Error assigning role. Please try again.";
                                        }
                                    }
                                }
                                else
                                {
                                    transaction.Rollback();
                                    lblMessage.Text = "Registration failed. Please try again.";
                                }
                            }
                        }
                        catch
                        {
                            transaction.Rollback();
                            throw;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "An error occurred during registration: " + ex.Message;
            }
        }

        private int GetCustomerRoleId(MySqlConnection conn, MySqlTransaction transaction)
        {
            string selectRoleQuery = "SELECT role_id FROM roles WHERE role_code = 'Customer' LIMIT 1";
            using (MySqlCommand selectRoleCmd = new MySqlCommand(selectRoleQuery, conn, transaction))
            {
                object existingRoleId = selectRoleCmd.ExecuteScalar();
                if (existingRoleId != null)
                {
                    return Convert.ToInt32(existingRoleId);
                }
            }

            throw new InvalidOperationException("The Customer role is missing from roles. Public registration requires a pre-seeded Customer role.");
        }
    }
}
