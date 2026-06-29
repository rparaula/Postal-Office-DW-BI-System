using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Globalization;
using System.Web.UI;
using COSCPFWA.Security;

namespace COSCPFWA
{
    public partial class SchedulePickup : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Authz.RequireAnyRole("Customer");
        }

        protected void btnSchedulePickup_Click(object sender, EventArgs e)
        {
            string pickupDate = txtPickupDate.Text.Trim();
            string pickupTime = txtPickupTime.Text.Trim();
            string locationValue = ddlLocation.SelectedValue;
            string locationText = ddlLocation.SelectedItem == null ? "" : ddlLocation.SelectedItem.Text;

            if (string.IsNullOrEmpty(pickupDate) || string.IsNullOrEmpty(pickupTime) || string.IsNullOrEmpty(locationValue))
            {
                ShowMessage("Please fill out all fields.", false);
                return;
            }

            if (!DateTime.TryParseExact(pickupDate, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out DateTime parsedDate))
            {
                ShowMessage("Invalid date format. Please use yyyy/mm/dd.", false);
                return;
            }

            string[] timeFormats = { "HH:mm", "H:mm", "h:mm tt", "hh:mm tt" };
            if (!DateTime.TryParseExact(pickupTime, timeFormats, CultureInfo.InvariantCulture, DateTimeStyles.None, out DateTime parsedTime))
            {
                ShowMessage("Invalid time format. Please use HH:mm or h:mm AM/PM.", false);
                return;
            }

            TimeSpan pickupTimeOfDay = parsedTime.TimeOfDay;
            DateTime scheduledPickupAt = parsedDate.Date.Add(pickupTimeOfDay);

            if (parsedDate.DayOfWeek == DayOfWeek.Sunday)
            {
                ShowMessage("Pickup is not available on Sundays.", false);
                return;
            }

            if (parsedDate.DayOfWeek == DayOfWeek.Saturday)
            {
                if (pickupTimeOfDay < TimeSpan.FromHours(9) || pickupTimeOfDay >= TimeSpan.FromHours(15))
                {
                    ShowMessage("Pickup time on Saturday must be between 9:00 AM and 3:00 PM.", false);
                    return;
                }
            }
            else if (pickupTimeOfDay < TimeSpan.FromHours(8) || pickupTimeOfDay >= TimeSpan.FromHours(19))
            {
                ShowMessage("Pickup time on weekdays must be between 8:00 AM and 7:00 PM.", false);
                return;
            }

            string connString = ConfigurationManager.ConnectionStrings["DataBaseConnectionString"]?.ConnectionString;
            if (string.IsNullOrEmpty(connString))
            {
                ShowMessage("Database connection string is missing or misconfigured.", false);
                return;
            }

            using (MySqlConnection conn = new MySqlConnection(connString))
            {
                try
                {
                    // TODO(auth-first): This page still uses legacy pickup/package/customer assumptions.
                    conn.Open();
                    using (MySqlTransaction transaction = conn.BeginTransaction())
                    {
                        try
                        {
                            int customerId = GetCurrentCustomerId(conn, transaction);
                            CustomerInfo customer = GetCustomerInfo(conn, transaction, customerId);
                            int packageStatusId = GetRequiredId(conn, transaction, "package_status", "package_status_id", "status_name", "Received");
                            int serviceTypeId = GetRequiredId(conn, transaction, "service_type", "service_type_id", "service_type_name", "Pickup");

                            string packageQuery = @"
                                INSERT INTO package
                                    (customer_id, package_status_id, service_type_id, received_date, service_type, contents, weight_lbs, length_in, width_in, height_in)
                                VALUES
                                    (@CustomerID, @PackageStatusID, @ServiceTypeID, @ReceivedDate, @ServiceType, @Contents, @WeightLbs, @LengthIn, @WidthIn, @HeightIn)";

                            int packageId;
                            using (MySqlCommand packageCmd = new MySqlCommand(packageQuery, conn, transaction))
                            {
                                packageCmd.Parameters.AddWithValue("@CustomerID", customerId);
                                packageCmd.Parameters.AddWithValue("@PackageStatusID", packageStatusId);
                                packageCmd.Parameters.AddWithValue("@ServiceTypeID", serviceTypeId);
                                packageCmd.Parameters.AddWithValue("@ReceivedDate", scheduledPickupAt);
                                packageCmd.Parameters.AddWithValue("@ServiceType", "Pickup");
                                packageCmd.Parameters.AddWithValue("@Contents", "Scheduled pickup");
                                packageCmd.Parameters.AddWithValue("@WeightLbs", 1m);
                                packageCmd.Parameters.AddWithValue("@LengthIn", 1m);
                                packageCmd.Parameters.AddWithValue("@WidthIn", 1m);
                                packageCmd.Parameters.AddWithValue("@HeightIn", 1m);
                                packageCmd.ExecuteNonQuery();
                                packageId = Convert.ToInt32(packageCmd.LastInsertedId);
                            }

                            string pickupQuery = @"
                                INSERT INTO pickupdetails
                                    (package_id, sender_customer_id, sender_address, recipient_address, recipient_first_name, recipient_last_name)
                                VALUES
                                    (@PackageID, @SenderCustomerID, @SenderAddress, @RecipientAddress, @RecipientFirstName, @RecipientLastName)";

                            using (MySqlCommand pickupCmd = new MySqlCommand(pickupQuery, conn, transaction))
                            {
                                pickupCmd.Parameters.AddWithValue("@PackageID", packageId);
                                pickupCmd.Parameters.AddWithValue("@SenderCustomerID", customerId);
                                pickupCmd.Parameters.AddWithValue("@SenderAddress", customer.FullAddress);
                                pickupCmd.Parameters.AddWithValue("@RecipientAddress", $"{locationText} pickup scheduled for {scheduledPickupAt:g}");
                                pickupCmd.Parameters.AddWithValue("@RecipientFirstName", customer.FirstName);
                                pickupCmd.Parameters.AddWithValue("@RecipientLastName", customer.LastName);
                                pickupCmd.ExecuteNonQuery();
                            }

                            transaction.Commit();
                            Session["PackageID"] = packageId;
                            ShowMessage("Pickup successfully scheduled!", true);
                            ClearInputs();
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
                    ShowMessage("Database error: " + ex.Message, false);
                }
                catch (Exception ex)
                {
                    ShowMessage("An unexpected error occurred: " + ex.Message, false);
                }
            }
        }

        private int GetCurrentCustomerId(MySqlConnection conn, MySqlTransaction transaction)
        {
            if (Session["CustomerID"] != null)
            {
                return Convert.ToInt32(Session["CustomerID"]);
            }

            if (Session["UserID"] != null)
            {
                string query = "SELECT customer_id FROM customer WHERE user_id = @UserID LIMIT 1";
                using (MySqlCommand cmd = new MySqlCommand(query, conn, transaction))
                {
                    cmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(Session["UserID"]));
                    object result = cmd.ExecuteScalar();
                    if (result != null)
                    {
                        int customerId = Convert.ToInt32(result);
                        Session["CustomerID"] = customerId;
                        return customerId;
                    }
                }
            }

            throw new InvalidOperationException("Please complete shipping information before scheduling a pickup.");
        }

        private CustomerInfo GetCustomerInfo(MySqlConnection conn, MySqlTransaction transaction, int customerId)
        {
            string query = @"
                SELECT first_name, last_name, street_address, city, state_code, zip_code
                FROM customer
                WHERE customer_id = @CustomerID
                LIMIT 1";

            using (MySqlCommand cmd = new MySqlCommand(query, conn, transaction))
            {
                cmd.Parameters.AddWithValue("@CustomerID", customerId);
                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    if (!reader.Read())
                    {
                        throw new InvalidOperationException("The selected customer does not exist.");
                    }

                    string street = reader["street_address"].ToString();
                    string city = reader["city"].ToString();
                    string state = reader["state_code"].ToString();
                    string zip = reader["zip_code"].ToString();

                    return new CustomerInfo
                    {
                        FirstName = reader["first_name"].ToString(),
                        LastName = reader["last_name"].ToString(),
                        FullAddress = $"{street}, {city}, {state} {zip}"
                    };
                }
            }
        }

        private static int GetRequiredId(MySqlConnection conn, MySqlTransaction transaction, string tableName, string idColumn, string nameColumn, string nameValue)
        {
            string query = $"SELECT {idColumn} FROM {tableName} WHERE {nameColumn} = @Name LIMIT 1";
            using (MySqlCommand cmd = new MySqlCommand(query, conn, transaction))
            {
                cmd.Parameters.AddWithValue("@Name", nameValue);
                object result = cmd.ExecuteScalar();
                if (result == null)
                {
                    throw new InvalidOperationException($"Missing required {tableName} row: {nameValue}.");
                }

                return Convert.ToInt32(result);
            }
        }

        private void ShowMessage(string message, bool isSuccess)
        {
            lblMessage.Text = message;
            lblMessage.CssClass = isSuccess ? "alert alert-success" : "alert alert-danger";
            lblMessage.Visible = true;
        }

        private void ClearInputs()
        {
            txtPickupDate.Text = "";
            txtPickupTime.Text = "";
            ddlLocation.SelectedIndex = 0;
        }

        private class CustomerInfo
        {
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string FullAddress { get; set; }
        }
    }
}
