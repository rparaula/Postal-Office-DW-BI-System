<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckPackages.aspx.cs" Inherits="COSCPFWA.CheckPackages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Employee ID (optional):"></asp:Label>
    <asp:TextBox ID="EmployeeIDTextBox" runat="server"></asp:TextBox>
    <asp:Button ID="CheckPackagesButton" runat="server" Text="Check Packages" OnClick="CheckPackagesButton_Click" />

    <asp:GridView
        ID="PackagesGridView"
        runat="server"
        AutoGenerateColumns="false"
        DataKeyNames="package_id"
        OnRowEditing="PackagesGridView_RowEditing"
        OnRowDeleting="PackagesGridView_RowDeleting"
        OnRowUpdating="PackagesGridView_RowUpdating"
        OnRowCancelingEdit="PackagesGridView_RowCancelingEdit">
        <Columns>
            <asp:BoundField DataField="package_id" HeaderText="Package ID" ReadOnly="true" />
            <asp:BoundField DataField="customer_id" HeaderText="Customer ID" ReadOnly="true" />

            <asp:TemplateField HeaderText="Employee ID">
                <EditItemTemplate>
                    <asp:TextBox ID="PackageEmployeeIDTextBox" runat="server" Text='<%# Bind("employee_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelEmployeeID" runat="server" Text='<%# Eval("employee_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Status">
                <EditItemTemplate>
                    <asp:TextBox ID="PackageStatusTextBox" runat="server" Text='<%# Bind("package_status") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelPackageStatus" runat="server" Text='<%# Eval("package_status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Contents">
                <EditItemTemplate>
                    <asp:TextBox ID="ContentsTextBox" runat="server" Text='<%# Bind("contents") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelContents" runat="server" Text='<%# Eval("contents") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Service Type">
                <EditItemTemplate>
                    <asp:TextBox ID="ServiceTypeTextBox" runat="server" Text='<%# Bind("service_type_name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelServiceType" runat="server" Text='<%# Eval("service_type_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Weight (lbs)">
                <EditItemTemplate>
                    <asp:TextBox ID="WeightLbsTextBox" runat="server" Text='<%# Bind("weight_lbs") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelWeightLbs" runat="server" Text='<%# Eval("weight_lbs") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Length (in)">
                <EditItemTemplate>
                    <asp:TextBox ID="LengthInTextBox" runat="server" Text='<%# Bind("length_in") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelLengthIn" runat="server" Text='<%# Eval("length_in") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Width (in)">
                <EditItemTemplate>
                    <asp:TextBox ID="WidthInTextBox" runat="server" Text='<%# Bind("width_in") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelWidthIn" runat="server" Text='<%# Eval("width_in") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Height (in)">
                <EditItemTemplate>
                    <asp:TextBox ID="HeightInTextBox" runat="server" Text='<%# Bind("height_in") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelHeightIn" runat="server" Text='<%# Eval("height_in") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="shipping_cost" HeaderText="Shipping Cost" ReadOnly="true" />
            <asp:BoundField DataField="received_date" HeaderText="Received Date" ReadOnly="true" />
            <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" />
        </Columns>
    </asp:GridView>

    <script type="text/javascript">
        function confirmEdit() {
            return confirm('Are you sure you want to edit this package?');
        }
        function confirmDelete() {
            return confirm('Are you sure you want to delete this package?');
        }
    </script>
</asp:Content>
