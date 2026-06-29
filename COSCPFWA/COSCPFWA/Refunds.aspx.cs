using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
using COSCPFWA.Security;

namespace COSCPFWA
{
    public partial class Refunds : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Authz.RequireAnyRole("Employee", "DepartmentManager", "FacilityManager", "WebAdmin", "ReportAdmin");
            if (!IsPostBack)
            {
                LoadRefunds("All");
                CalculateTotalRefund();
            }
        }

        protected void LoadRefunds(string statusFilter)
        {
            string connString = GetConnectionString();
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
                        SELECT r.refund_id,
                               CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
                               r.package_id,
                               r.refund_amount,
                               r.refund_reason,
                               r.refund_date,
                               r.refund_status
                        FROM refunds r
                        JOIN customer c ON r.customer_id = c.customer_id
                        WHERE (@StatusFilter = 'All' OR r.refund_status = @StatusFilter)
                        ORDER BY r.refund_date DESC, r.refund_id DESC";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@StatusFilter", statusFilter);

                        using (MySqlDataReader reader = cmd.ExecuteReader())
                        {
                            DataTable dt = new DataTable();
                            dt.Load(reader);
                            refundRepeater.DataSource = dt;
                            refundRepeater.DataBind();
                        }
                    }
                }
                catch (MySqlException ex)
                {
                    ShowAlert("Database error loading refunds: " + ex.Message);
                }
                catch (Exception ex)
                {
                    ShowAlert("An unexpected error occurred loading refunds: " + ex.Message);
                }
            }
        }

        protected void ddlStatusFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedStatus = ddlStatusFilter.SelectedValue;
            LoadRefunds(selectedStatus);
            CalculateTotalRefund();
        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            Button btnApprove = (Button)sender;
            int refundID;
            if (!int.TryParse(btnApprove.CommandArgument, out refundID))
            {
                ShowAlert("Invalid refund selected.");
                return;
            }

            string connString = GetConnectionString();
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
                        UPDATE refunds
                        SET refund_status = 'Approved'
                        WHERE refund_id = @RefundID";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@RefundID", refundID);
                        cmd.ExecuteNonQuery();
                    }

                    LoadRefunds(ddlStatusFilter.SelectedValue);
                    CalculateTotalRefund();
                }
                catch (MySqlException ex)
                {
                    ShowAlert("Database error approving refund: " + ex.Message);
                }
                catch (Exception ex)
                {
                    ShowAlert("Error approving refund: " + ex.Message);
                }
            }
        }

        protected void CalculateTotalRefund()
        {
            string connString = GetConnectionString();
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
                        SELECT COALESCE(SUM(refund_amount), 0)
                        FROM refunds
                        WHERE (@StatusFilter = 'All' OR refund_status = @StatusFilter)";

                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@StatusFilter", ddlStatusFilter.SelectedValue);

                        object result = cmd.ExecuteScalar();
                        decimal totalRefund = result == null || result == DBNull.Value ? 0 : Convert.ToDecimal(result);
                        lblRefundSum.Text = $"{totalRefund:C}";
                    }
                }
                catch (MySqlException ex)
                {
                    ShowAlert("Database error calculating refunds: " + ex.Message);
                }
                catch (Exception ex)
                {
                    ShowAlert("An unexpected error occurred calculating refunds: " + ex.Message);
                }
            }
        }

        private string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["DataBaseConnectionString"]?.ConnectionString;
        }

        private void ShowAlert(string message)
        {
            string safeMessage = message.Replace("\\", "\\\\").Replace("'", "\\'");
            ClientScript.RegisterStartupScript(GetType(), "refundsAlert", $"alert('{safeMessage}');", true);
        }
    }
}
