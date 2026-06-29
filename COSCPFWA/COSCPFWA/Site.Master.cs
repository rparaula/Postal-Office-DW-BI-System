using System;
using COSCPFWA.Models;
using COSCPFWA.Security;

namespace COSCPFWA
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ApplyNavigationVisibility(Authz.CurrentUser);
            SetDashboardLink();
        }

        protected void Logout(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Login.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }

        private void SetDashboardLink()
        {
            CurrentUser user = Authz.CurrentUser;
            if (user == null)
            {
                navbarBrand.HRef = "~/Home.aspx";
                return;
            }

            if (user.HasAnyRole("WebAdmin", "ReportAdmin"))
            {
                navbarBrand.HRef = "~/AdminDashboard.aspx";
                return;
            }

            if (user.HasAnyRole("Employee", "DepartmentManager", "FacilityManager", "ReportAnalyst"))
            {
                navbarBrand.HRef = "~/EmployeeDashboard.aspx";
                return;
            }

            if (user.HasRole("Customer"))
            {
                navbarBrand.HRef = "~/CustomerDashboard.aspx";
                return;
            }

            navbarBrand.HRef = "~/Home.aspx";
        }

        private void ApplyNavigationVisibility(CurrentUser user)
        {
            bool isLoggedIn = user != null;

            phCustomerNav.Visible = isLoggedIn && user.HasRole("Customer");
            phEmployeeNav.Visible = isLoggedIn && user.HasAnyRole("Employee", "DepartmentManager", "FacilityManager", "WebAdmin", "ReportAdmin");
            phFinanceNav.Visible = isLoggedIn && user.CanViewFinance;
            phLogisticsNav.Visible = isLoggedIn && user.CanViewLogistics;
            phAdminNav.Visible = isLoggedIn && user.HasAnyRole("WebAdmin", "ReportAdmin");
            lnkLogin.Visible = !isLoggedIn;
            btnLogout.Visible = isLoggedIn;
        }
    }
}
