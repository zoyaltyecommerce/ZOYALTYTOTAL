<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/_admin.Master" AutoEventWireup="true" CodeBehind="Cartdetails.aspx.cs" Inherits="PragathiShopLinks.Admin.Cartdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="cart_details" runat="server" >
        <telerik:RadGrid ID="tele_cat" runat="server" AutoGenerateColumns="false" AllowFilteringByColumn="true" AllowSorting="true" AllowPaging="true" PageSize="5" 
            OnNeedDataSource="tele_cat_NeedDataSource" Skin="Sunset" HeaderStyle-HorizontalAlign="Left" GroupingSettings-CaseSensitive="false"  FilterMenu-EnableTextHTMLEncoding="false" Width="100%">
            <MasterTableView Width="100%">
                <Columns >
              
                      <telerik:GridBoundColumn DataField="ADD_FIRSTNAME" HeaderText="Customer_Name" UniqueName="ADD_FIRSTNAME"></telerik:GridBoundColumn>
                      <telerik:GridBoundColumn DataField="PRODUCT_NAME" HeaderText="Products" UniqueName="PRODUCT_NAME"></telerik:GridBoundColumn>
                      <telerik:GridBoundColumn DataField="MAINCART_TOTALPRICE" HeaderText="Total_Amount" UniqueName="MAINCART_TOTALPRICE"></telerik:GridBoundColumn>
                      <telerik:GridBoundColumn DataField="ADD_ADDRESS"  HeaderText="Address" UniqueName="ADD_ADDRESS"></telerik:GridBoundColumn>
                </Columns>

            </MasterTableView>

        </telerik:RadGrid>


    </div>
</asp:Content>
