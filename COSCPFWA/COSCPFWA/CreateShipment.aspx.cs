using System;
using COSCPFWA.Security;

namespace COSCPFWA
{
    public partial class CreateShipment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Authz.RequireAnyRole("Employee", "DepartmentManager", "FacilityManager", "WebAdmin", "ReportAdmin");
        }
    }
}
