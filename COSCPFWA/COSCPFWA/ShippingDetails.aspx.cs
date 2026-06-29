using System;
using System.Configuration;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using COSCPFWA.Security;

namespace COSCPFWA
{
    public partial class ShippingDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Authz.RequireAnyRole("Customer");
            if (!IsPostBack)
            {
                BindShippingMethods();
            }
        }

        protected void SubmitShippingDetails_Click(object sender, EventArgs e)
        {
            string senderAddressValue = senderAddress.Text.Trim();
            string shippingMethodValue = shippingMethod.SelectedValue;
            string receivingAddressValue = receivingAddress.Text.Trim();
            string receiverNameValue = receiverName.Text.Trim();

            if (string.IsNullOrEmpty(senderAddressValue) ||
                string.IsNullOrEmpty(shippingMethodValue) ||
                string.IsNullOrEmpty(receivingAddressValue) ||
                string.IsNullOrEmpty(receiverNameValue))
            {
                ShowAlert("Please fill in all shipping detail fields.");
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
                    // TODO(auth-first): This page targets legacy shipping detail fields and integer package/customer IDs.
                    conn.Open();
                    int packageId = GetCurrentPackageId();
                    int senderCustomerId = GetSenderCustomerId(conn, packageId);
                    int shippingMethodId = Convert.ToInt32(shippingMethodValue);
                    ParseReceiverName(receiverNameValue, out string recipientFirstName, out string recipientMiddleInitial, out string recipientLastName);

                    string query = @"
                        INSERT INTO shippingdetails
                            (sender_customer_id, package_id, recipient_address, sender_address, shipping_method_id, recipient_first_name, recipient_middle_initial, recipient_last_name)
                        VALUES
                            (@SenderCustomerID, @PackageID, @RecipientAddress, @SenderAddress, @ShippingMethodID, @RecipientFirstName, @RecipientMiddleInitial, @RecipientLastName)
                        ON DUPLICATE KEY UPDATE
                            sender_customer_id = VALUES(sender_customer_id),
                            recipient_address = VALUES(recipient_address),
                            sender_address = VALUES(sender_address),
                            shipping_method_id = VALUES(shipping_method_id),
                            recipient_first_name = VALUES(recipient_first_name),
                            recipient_middle_initial = VALUES(recipient_middle_initial),
                            recipient_last_name = VALUES(recipient_last_name)";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@SenderCustomerID", senderCustomerId);
                        cmd.Parameters.AddWithValue("@PackageID", packageId);
                        cmd.Parameters.AddWithValue("@RecipientAddress", receivingAddressValue);
                        cmd.Parameters.AddWithValue("@SenderAddress", senderAddressValue);
                        cmd.Parameters.AddWithValue("@ShippingMethodID", shippingMethodId);
                        cmd.Parameters.AddWithValue("@RecipientFirstName", recipientFirstName);
                        cmd.Parameters.AddWithValue("@RecipientMiddleInitial", string.IsNullOrEmpty(recipientMiddleInitial) ? (object)DBNull.Value : recipientMiddleInitial);
                        cmd.Parameters.AddWithValue("@RecipientLastName", recipientLastName);
                        cmd.ExecuteNonQuery();
                    }

                    ShowAlert("Shipping details saved successfully.");
                }
                catch (MySqlException sqlEx)
                {
                    ShowAlert("Database error: " + sqlEx.Message);
                }
                catch (Exception ex)
                {
                    ShowAlert("An unexpected error occurred: " + ex.Message);
                }
            }
        }

        private void BindShippingMethods()
        {
            string connString = ConfigurationManager.ConnectionStrings["DataBaseConnectionString"]?.ConnectionString;
            if (string.IsNullOrEmpty(connString))
            {
                return;
            }

            using (MySqlConnection conn = new MySqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    string query = @"
                        SELECT shipping_method_id, shipping_method_name
                        FROM shipping_method
                        WHERE is_active = 1
                        ORDER BY shipping_method_name";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        shippingMethod.Items.Clear();
                        shippingMethod.Items.Add(new ListItem("Select a method", ""));

                        while (reader.Read())
                        {
                            shippingMethod.Items.Add(new ListItem(
                                reader["shipping_method_name"].ToString(),
                                reader["shipping_method_id"].ToString()));
                        }
                    }
                }
                catch
                {
                    shippingMethod.Items.Clear();
                    shippingMethod.Items.Add(new ListItem("Select a method", ""));
                }
            }
        }

        private int GetCurrentPackageId()
        {
            if (Session["PackageID"] != null)
            {
                return Convert.ToInt32(Session["PackageID"]);
            }

            if (int.TryParse(Request.QueryString["package_id"], out int packageId))
            {
                Session["PackageID"] = packageId;
                return packageId;
            }

            throw new InvalidOperationException("Please create package details before adding shipping details.");
        }

        private int GetSenderCustomerId(MySqlConnection conn, int packageId)
        {
            string query = "SELECT customer_id FROM package WHERE package_id = @PackageID LIMIT 1";
            using (MySqlCommand cmd = new MySqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@PackageID", packageId);
                object result = cmd.ExecuteScalar();
                if (result == null)
                {
                    throw new InvalidOperationException("The selected package does not exist.");
                }

                int customerId = Convert.ToInt32(result);
                Session["CustomerID"] = customerId;
                return customerId;
            }
        }

        private static void ParseReceiverName(string fullName, out string firstNameValue, out string middleInitialValue, out string lastNameValue)
        {
            string[] nameParts = fullName.Split(new[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
            firstNameValue = nameParts.Length > 0 ? nameParts[0] : "";
            lastNameValue = nameParts.Length > 1 ? nameParts[nameParts.Length - 1] : "";
            middleInitialValue = nameParts.Length > 2 ? nameParts[1].Substring(0, 1).ToUpperInvariant() : "";
        }

        private void ShowAlert(string message)
        {
            string safeMessage = message.Replace("\\", "\\\\").Replace("'", "\\'");
            ClientScript.RegisterStartupScript(GetType(), "shippingDetailsAlert", $"alert('{safeMessage}');", true);
        }
    }
}
