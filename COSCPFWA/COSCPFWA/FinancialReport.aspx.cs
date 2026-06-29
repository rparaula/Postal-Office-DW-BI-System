using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COSCPFWA
{
    public partial class FinancialReport : Page
    {
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

            // TODO:
            // Replace these placeholders with values from your Power BI embed service.
            hfReportId.Value = "7b8687f0-b521-4667-8847-6d750dacf07";
            hfEmbedUrl.Value = "https://app.powerbi.com/reportEmbed?reportId=7b8687f0-b521-4667-8847-6d750dacf07a&autoAuth=true&ctid=4598922a-214e-4901-8db4-16bce2cc69da";
            hfEmbedToken.Value = "YOUR_GENERATED_EMBED_TOKEN";

            // Important:
            // If user.FinanceAccessScope == "OwnFacility",
            // your Power BI embed-token generation should apply RLS using
            // user.EffectiveFacilityScopeKey or user.FacilityId.
            //
            // If user.FinanceAccessScope == "AllFacilities",
            // the user can receive the full financial report scope.
        }
    }
}