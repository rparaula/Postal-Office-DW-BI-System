using System;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace COSCPFWA
{
    public partial class Shipping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string firstNameValue = firstName.Text.Trim();
            string lastNameValue = lastName.Text.Trim();
            string phoneNumberValue = phone.Text.Trim();
            string emailValue = email.Text.Trim();
            string zipCodeValue = zipcode.Text.Trim();
            string cityValue = city.Text.Trim();
            string stateCodeValue = state.Text.Trim().ToUpperInvariant();
            string streetAddressValue = address.Text.Trim();

            if (string.IsNullOrEmpty(firstNameValue) ||
                string.IsNullOrEmpty(lastNameValue) ||
                string.IsNullOrEmpty(phoneNumberValue) ||
                string.IsNullOrEmpty(emailValue) ||
                string.IsNullOrEmpty(zipCodeValue) ||
                string.IsNullOrEmpty(cityValue) ||
                string.IsNullOrEmpty(stateCodeValue) ||
                string.IsNullOrEmpty(streetAddressValue))
            {
                ShowAlert("Please fill in all shipping information fields.");
                return;
            }

            if (stateCodeValue.Length != 2)
            {
                ShowAlert("State must be a two-letter state code.");
                return;
            }

            if (zipCodeValue.Length != 5 && zipCodeValue.Length != 10)
            {
                ShowAlert("Zip code must be 5 or 10 characters.");
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
                    using (MySqlTransaction transaction = conn.BeginTransaction())
                    {
                        try
                        {
                            int postalOfficeId = GetDefaultPostalOfficeId(conn, transaction);
                            int? userId = Session["UserID"] == null ? (int?)null : Convert.ToInt32(Session["UserID"]);
                            int? existingCustomerId = FindExistingCustomerId(conn, transaction, userId, emailValue);
                            int customerId;

                            if (existingCustomerId.HasValue)
                            {
                                customerId = existingCustomerId.Value;
                                string updateQuery = @"
                                    UPDATE customer
                                    SET first_name = @FirstName,
                                        last_name = @LastName,
                                        street_address = @StreetAddress,
                                        city = @City,
                                        state_code = @StateCode,
                                        zip_code = @ZipCode,
                                        phone_number = @PhoneNumber,
                                        email = @Email,
                                        postal_office_id = @PostalOfficeID,
                                        user_id = COALESCE(user_id, @UserID)
                                    WHERE customer_id = @CustomerID";

                                using (MySqlCommand updateCmd = new MySqlCommand(updateQuery, conn, transaction))
                                {
                                    AddCustomerParameters(updateCmd, firstNameValue, lastNameValue, streetAddressValue, cityValue, stateCodeValue, zipCodeValue, phoneNumberValue, emailValue, postalOfficeId, userId);
                                    updateCmd.Parameters.AddWithValue("@CustomerID", customerId);
                                    updateCmd.ExecuteNonQuery();
                                }
                            }
                            else
                            {
                                string insertQuery = @"
                                    INSERT INTO customer
                                        (first_name, last_name, street_address, city, state_code, zip_code, phone_number, email, postal_office_id, user_id)
                                    VALUES
                                        (@FirstName, @LastName, @StreetAddress, @City, @StateCode, @ZipCode, @PhoneNumber, @Email, @PostalOfficeID, @UserID)";

                                using (MySqlCommand insertCmd = new MySqlCommand(insertQuery, conn, transaction))
                                {
                                    AddCustomerParameters(insertCmd, firstNameValue, lastNameValue, streetAddressValue, cityValue, stateCodeValue, zipCodeValue, phoneNumberValue, emailValue, postalOfficeId, userId);
                                    insertCmd.ExecuteNonQuery();
                                    customerId = Convert.ToInt32(insertCmd.LastInsertedId);
                                }
                            }

                            transaction.Commit();
                            Session["CustomerID"] = customerId;
                            Response.Redirect("~/PackageDetails.aspx", false);
                            Context.ApplicationInstance.CompleteRequest();
                        }
                        catch
                        {
                            transaction.Rollback();
                            throw;
                        }
                    }
                }
                catch (MySqlException ex)
                {
                    ShowAlert("MySQL Error: " + ex.Message);
                }
                catch (Exception ex)
                {
                    ShowAlert("An error occurred: " + ex.Message);
                }
            }
        }

        private static void AddCustomerParameters(
            MySqlCommand cmd,
            string firstNameValue,
            string lastNameValue,
            string streetAddressValue,
            string cityValue,
            string stateCodeValue,
            string zipCodeValue,
            string phoneNumberValue,
            string emailValue,
            int postalOfficeId,
            int? userId)
        {
            cmd.Parameters.AddWithValue("@FirstName", firstNameValue);
            cmd.Parameters.AddWithValue("@LastName", lastNameValue);
            cmd.Parameters.AddWithValue("@StreetAddress", streetAddressValue);
            cmd.Parameters.AddWithValue("@City", cityValue);
            cmd.Parameters.AddWithValue("@StateCode", stateCodeValue);
            cmd.Parameters.AddWithValue("@ZipCode", zipCodeValue);
            cmd.Parameters.AddWithValue("@PhoneNumber", phoneNumberValue);
            cmd.Parameters.AddWithValue("@Email", emailValue);
            cmd.Parameters.AddWithValue("@PostalOfficeID", postalOfficeId);
            cmd.Parameters.AddWithValue("@UserID", userId.HasValue ? (object)userId.Value : DBNull.Value);
        }

        private int? FindExistingCustomerId(MySqlConnection conn, MySqlTransaction transaction, int? userId, string emailValue)
        {
            string query = @"
                SELECT customer_id
                FROM customer
                WHERE (@UserID IS NOT NULL AND user_id = @UserID)
                   OR email = @Email
                ORDER BY CASE WHEN user_id = @UserID THEN 0 ELSE 1 END
                LIMIT 1";

            using (MySqlCommand cmd = new MySqlCommand(query, conn, transaction))
            {
                cmd.Parameters.AddWithValue("@UserID", userId.HasValue ? (object)userId.Value : DBNull.Value);
                cmd.Parameters.AddWithValue("@Email", emailValue);

                object result = cmd.ExecuteScalar();
                return result == null ? (int?)null : Convert.ToInt32(result);
            }
        }

        private int GetDefaultPostalOfficeId(MySqlConnection conn, MySqlTransaction transaction)
        {
            string query = "SELECT postal_office_id FROM postaloffice ORDER BY postal_office_id LIMIT 1";
            using (MySqlCommand cmd = new MySqlCommand(query, conn, transaction))
            {
                object result = cmd.ExecuteScalar();
                if (result == null)
                {
                    throw new InvalidOperationException("No postal office is configured in the database.");
                }

                return Convert.ToInt32(result);
            }
        }

        private void ShowAlert(string message)
        {
            string safeMessage = message.Replace("\\", "\\\\").Replace("'", "\\'");
            ClientScript.RegisterStartupScript(GetType(), "shippingAlert", $"alert('{safeMessage}');", true);
        }
    }
}
