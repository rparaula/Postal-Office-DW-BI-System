<%@ Page Title="Financial Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FinancialReport.aspx.cs" Inherits="COSCPFWA.FinancialReport" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .powerbi-report-shell {
            width: 100%;
            height: calc(100vh - 160px);
            min-height: 650px;
        }

        .powerbi-report-container {
            width: 100%;
            height: 100%;
            border: none;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="powerbi-report-shell">
        <div id="financeReportContainer" class="powerbi-report-container"></div>

        <asp:HiddenField ID="hfReportId" runat="server" />
        <asp:HiddenField ID="hfEmbedUrl" runat="server" />
        <asp:HiddenField ID="hfEmbedToken" runat="server" />
    </main>
</asp:Content>

<asp:Content ID="ScriptsContent" ContentPlaceHolderID="ScriptsContent" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/powerbi-client@2.23.1/dist/powerbi.min.js"></script>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var reportId = document.getElementById("<%= hfReportId.ClientID %>").value;
            var embedUrl = document.getElementById("<%= hfEmbedUrl.ClientID %>").value;
            var embedToken = document.getElementById("<%= hfEmbedToken.ClientID %>").value;

            if (!reportId || !embedUrl || !embedToken) {
                document.getElementById("financeReportContainer").innerHTML =
                    "<div class='alert alert-warning'>Power BI report embed settings are not configured yet.</div>";
                return;
            }

            var models = window["powerbi-client"].models;

            var config = {
                type: "report",
                id: reportId,
                embedUrl: embedUrl,
                accessToken: embedToken,
                tokenType: models.TokenType.Embed,
                settings: {
                    panes: {
                        filters: { visible: false },
                        pageNavigation: { visible: true }
                    },
                    background: models.BackgroundType.Transparent
                }
            };

            var container = document.getElementById("financeReportContainer");
            powerbi.embed(container, config);
        });
    </script>
</asp:Content>