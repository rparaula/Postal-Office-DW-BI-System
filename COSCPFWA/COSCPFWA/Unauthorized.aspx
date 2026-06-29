<%@ Page Title="Unauthorized" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Unauthorized.aspx.cs" Inherits="COSCPFWA.Unauthorized" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mt-4 p-4 bg-light border rounded">
        <h2>Unauthorized</h2>
        <p>You do not have permission to access this page or report.</p>
        <p><a runat="server" href="~/Home.aspx">Return to home</a></p>
    </div>
</asp:Content>
