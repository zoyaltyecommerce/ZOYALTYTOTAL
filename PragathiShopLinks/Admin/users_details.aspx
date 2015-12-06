<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/_admin.Master" AutoEventWireup="true" CodeBehind="users_details.aspx.cs" Inherits="PragathiShopLinks.Admin.users_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="div_1" runat="server">
       <telerik:RadGrid ID="tele_grid" runat="server"  AllowFilteringByColumn="true"  FilterMenu-EnableTextHTMLEncoding="false"
            AllowPaging="true"  AutoGenerateColumns="false"  GridLines="None"  HeaderStyle-HorizontalAlign="Left" 
            OnNeedDataSource="tele_grid_NeedDataSource"   PageSize="10"  Skin="Sunset"
            AllowSorting="true"  GroupingSettings-CaseSensitive="false" Width="100%">
           
           <MasterTableView Width="100%">
               <Columns>
                   <telerik:GridBoundColumn DataField="USER_FIRSTNAME" HeaderText="Name" AutoPostBackOnFilter="true"
                        UniqueName="USER_FIRSTNAME"></telerik:GridBoundColumn>

                   <telerik:GridBoundColumn DataField="USER_EMAILID" HeaderText="Email" AutoPostBackOnFilter="true"
                        UniqueName="USER_EMAILID"></telerik:GridBoundColumn>

                   <telerik:GridBoundColumn DataField="STATUS_NAME" HeaderText="status" AutoPostBackOnFilter="true"
                        UniqueName="STATUS_NAME"></telerik:GridBoundColumn>

                   <telerik:GridBoundColumn DataField="USER_PHONE" HeaderText="phonenumber" AutoPostBackOnFilter="true"
                        UniqueName="USER_PHONE"></telerik:GridBoundColumn>
               </Columns>
           </MasterTableView>

       </telerik:RadGrid>

    </div>
</asp:Content>
