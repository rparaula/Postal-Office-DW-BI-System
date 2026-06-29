using System;
using COSCPFWA.Security;

namespace COSCPFWA
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Authz.RequireAnyRole("WebAdmin", "ReportAdmin");
        }
    }
}
