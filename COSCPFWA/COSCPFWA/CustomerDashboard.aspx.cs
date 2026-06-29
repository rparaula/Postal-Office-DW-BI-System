using System;
using COSCPFWA.Security;

namespace COSCPFWA
{
    public partial class CustomerDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Authz.RequireAnyRole("Customer");
        }
    }
}
