<%@ Page Title="Financial Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FinancialReport.aspx.cs" Inherits="COSCPFWA.FinancialReport" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .powerbi-report-shell {
            width: 100%;
            height: calc(100vh - 160px);
            min-height: 650px;
        }

        .powerbi-report-frame {
            width: 100%;
            height: 100%;
            border: none;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="powerbi-report-shell">
        <iframe
            id="financeReportFrame"
            runat="server"
            title="Postal Financial Reports"
            class="powerbi-report-frame"
            frameborder="0"
            allowfullscreen="true">
        </iframe>
    </main>
</asp:Content>