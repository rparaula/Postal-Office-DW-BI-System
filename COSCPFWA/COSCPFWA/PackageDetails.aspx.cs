using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Text.RegularExpressions;

namespace COSCPFWA
{
    public partial class PackageDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubmitPackageDetails_Click(object sender, EventArgs e)
        {
            string packageContents = contents.Text.Trim();
            string weightLbsValue = weightLbs.Text.Trim();
            string packageDimensions = dimensions.Text.Trim();

            if (string.IsNullOrEmpty(packageContents) ||
                string.IsNullOrEmpty(weightLbsValue) ||
                string.IsNullOrEmpty(packageDimensions))
            {
                ShowAlert("Please fill in all package detail fields.");
                return;
            }

            if (!decimal.TryParse(weightLbsValue, out decimal parsedWeight) || parsedWeight <= 0)
            {
                ShowAlert("Weight must be a positive number.");
                return;
            }

            if (!TryParseDimensions(packageDimensions, out decimal lengthIn, out decimal widthIn, out decimal heightIn))
            {
                ShowAlert("Dimensions must include length, width, and height, such as 12 x 8 x 6.");
                return;
            }

            if (packageContents.Length > 30)
            {
                packageContents = packageContents.Substring(0, 30);
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
                    int customerId = GetCurrentCustomerId(conn);
                    int packageStatusId = GetRequiredId(conn, "package_status", "package_status_id", "status_name", "Received");
                    int serviceTypeId = GetRequiredId(conn, "service_type", "service_type_id", "service_type_name", "Delivery");

                    string query = @"
                        INSERT INTO package
                            (customer_id, package_status_id, service_type_id, received_date, service_type, contents, weight_lbs, length_in, width_in, height_in)
                        VALUES
                            (@CustomerID, @PackageStatusID, @ServiceTypeID, @ReceivedDate, @ServiceType, @Contents, @WeightLbs, @LengthIn, @WidthIn, @HeightIn)";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@CustomerID", customerId);
                        cmd.Parameters.AddWithValue("@PackageStatusID", packageStatusId);
                        cmd.Parameters.AddWithValue("@ServiceTypeID", serviceTypeId);
                        cmd.Parameters.AddWithValue("@ReceivedDate", DateTime.Now);
                        cmd.Parameters.AddWithValue("@ServiceType", "Delivery");
                        cmd.Parameters.AddWithValue("@Contents", packageContents);
                        cmd.Parameters.AddWithValue("@WeightLbs", parsedWeight);
                        cmd.Parameters.AddWithValue("@LengthIn", lengthIn);
                        cmd.Parameters.AddWithValue("@WidthIn", widthIn);
                        cmd.Parameters.AddWithValue("@HeightIn", heightIn);
                        cmd.ExecuteNonQuery();

                        Session["PackageID"] = Convert.ToInt32(cmd.LastInsertedId);
                    }

                    Response.Redirect("~/ShippingDetails.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
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

        private int GetCurrentCustomerId(MySqlConnection conn)
        {
            if (Session["CustomerID"] != null)
            {
                return Convert.ToInt32(Session["CustomerID"]);
            }

            if (Session["UserID"] != null)
            {
                string query = "SELECT customer_id FROM customer WHERE user_id = @UserID LIMIT 1";
                using (MySqlCommand cmd = new MySqlCommand(query, conn))
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

            throw new InvalidOperationException("Please complete shipping information before adding package details.");
        }

        private static int GetRequiredId(MySqlConnection conn, string tableName, string idColumn, string nameColumn, string nameValue)
        {
            string query = $"SELECT {idColumn} FROM {tableName} WHERE {nameColumn} = @Name LIMIT 1";
            using (MySqlCommand cmd = new MySqlCommand(query, conn))
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

        private static bool TryParseDimensions(string value, out decimal lengthIn, out decimal widthIn, out decimal heightIn)
        {
            MatchCollection matches = Regex.Matches(value, @"\d+(\.\d+)?");
            if (matches.Count < 3 ||
                !decimal.TryParse(matches[0].Value, out lengthIn) ||
                !decimal.TryParse(matches[1].Value, out widthIn) ||
                !decimal.TryParse(matches[2].Value, out heightIn))
            {
                lengthIn = 0;
                widthIn = 0;
                heightIn = 0;
                return false;
            }

            return lengthIn > 0 && widthIn > 0 && heightIn > 0;
        }

        private void ShowAlert(string message)
        {
            string safeMessage = message.Replace("\\", "\\\\").Replace("'", "\\'");
            ClientScript.RegisterStartupScript(GetType(), "packageDetailsAlert", $"alert('{safeMessage}');", true);
        }
    }
}
