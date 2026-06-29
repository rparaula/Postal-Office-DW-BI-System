using System;
using System.Web;
using System.Web.UI;
using COSCPFWA.Security;

namespace COSCPFWA
{
    public partial class FinancialReport : Page
    {
        private const string FinanceEmbedUrl =
            "https://app.powerbi.com/reportEmbed?reportId=7b8687f0-b521-4667-8847-6d750dacf07a&autoAuth=true&ctid=4598922a-214e-4901-8db4-16bce2cc69da";

        protected void Page_Load(object sender, EventArgs e)
        {
            Authz.RequireFinanceAccess();

            if (!IsPostBack)
            {
                LoadPowerBiReport();
            }
        }

        private void LoadPowerBiReport()
        {
            var user = Authz.CurrentUser;

            if (user == null)
            {
                Response.Redirect("~/Login.aspx", true);
                return;
            }

            string embedUrl = FinanceEmbedUrl;

            if (string.Equals(user.FinanceAccessScope, "OwnFacility", StringComparison.OrdinalIgnoreCase))
            {
                if (!user.EffectiveFacilityScopeKey.HasValue)
                {
                    Response.Redirect("~/Unauthorized.aspx", true);
                    return;
                }

                embedUrl = AddFacilityFilter(embedUrl, user.EffectiveFacilityScopeKey.Value);
            }
            else if (!string.Equals(user.FinanceAccessScope, "AllFacilities", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("~/Unauthorized.aspx", true);
                return;
            }

            financeReportFrame.Attributes["src"] = embedUrl;
        }

        private static string AddFacilityFilter(string embedUrl, int facilityKey)
        {
            // IMPORTANT:
            // Replace DimFacility/FacilityKey with the exact Power BI table/column name.
            // Example alternatives:
            // dim_facility/facility_id
            // DimFacility/FacilityId
            // Facility/facility_key

            string filter = $"DimFacility/FacilityKey eq {facilityKey}";
            return embedUrl + "&filter=" + HttpUtility.UrlEncode(filter);
        }
    }
}