using System;
using COSCPFWA.Models;
using COSCPFWA.Services;

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
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text;

            try
            {
                AuthService authService = new AuthService();
                CurrentUser currentUser = authService.Login(username, password);
                if (currentUser == null)
                {
                    lblMessage.Text = "Invalid username/email or password.";
                    return;
                }

                Session["CurrentUser"] = currentUser;
                Session["UserID"] = currentUser.UserId;
                Session["Username"] = currentUser.Username;

                Response.Redirect(RedirectAfterLogin(currentUser), false);
                Context.ApplicationInstance.CompleteRequest();
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }

        private static string RedirectAfterLogin(CurrentUser user)
        {
            if (user.HasRole("Customer") && !user.HasAnyRole("Employee", "DepartmentManager", "FacilityManager", "WebAdmin", "ReportAdmin", "ReportAnalyst"))
            {
                return "~/CustomerDashboard.aspx";
            }

            if (user.HasAnyRole("WebAdmin", "ReportAdmin"))
            {
                return "~/AdminDashboard.aspx";
            }

            if (user.HasAnyRole("Employee", "DepartmentManager", "FacilityManager", "ReportAnalyst"))
            {
                return "~/EmployeeDashboard.aspx";
            }

            return "~/Unauthorized.aspx";
        }
    }
}
