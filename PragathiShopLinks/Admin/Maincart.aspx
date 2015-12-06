<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/_admin.Master" AutoEventWireup="true" CodeBehind="Maincart.aspx.cs" Inherits="PragathiShopLinks.Admin.Maincart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="div_main" runat="server">

        <telerik:RadGrid  ID="tele_maincart" runat="server" AutoGenerateColumns="false" AllowFilteringByColumn="true"

               AllowSorting="true" GridLines="None" HeaderStyle-HorizontalAlign="Left" Skin="Sunset"  

               AllowPaging="true" PageSize="10" GroupingSettings-CaseSensitive="false"  FilterMenu-EnableTextHTMLEncoding="false"

              OnNeedDataSource="tele_maincart_NeedDataSource" Width="100%"  >

            <MasterTableView Width="100%">
                <Columns>
                    <telerik:GridBoundColumn DataField="MAINCART_ID" HeaderText="MAINCART_ID" AutoPostBackOnFilter="true" UniqueName="MAINCART_ID"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="MAINCART_USERID" HeaderText="USERID" AutoPostBackOnFilter="true" UniqueName="MAINCART_USERID"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="MAINCART_ADDRESS" HeaderText="ADDRESS" AutoPostBackOnFilter="true" UniqueName="MAINCART_ADDRESS"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn  DataField="MAINCART_COUPONID" HeaderText="COUPONID" AutoPostBackOnFilter="true" UniqueName="MAINCART_COUPONID"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="MAINCART_NOOFAUDIENCE" HeaderText="NOOFAUDIENCE" AutoPostBackOnFilter="true" UniqueName="MAINCART_NOOFAUDIENCE"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="MAINCART_STARTDATE" HeaderText="STARTDATE" AutoPostBackOnFilter="true" UniqueName="MAINCART_STARTDATE"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="MAINCART_ENDDATE" HeaderText="ENDDATE" AutoPostBackOnFilter="true" UniqueName="MAINCART_ENDDATE"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="MAINCART_NOOFDAYS" HeaderText="NOOFDAYS" AutoPostBackOnFilter="true" UniqueName="MAINCART_NOOFDAYS"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="MAINCART_SUBTOTAL" HeaderText="SUBTOTAL" AutoPostBackOnFilter="true" UniqueName="MAINCART_SUBTOTAL"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="MAINCART_SHIPPINGCOST" HeaderText="SHIPPINGCOST" AutoPostBackOnFilter="true" UniqueName="MAINCART_SHIPPINGCOST"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="MAINCART_DISCOUNTEDPRICE" HeaderText="DISCOUNTEDPRICE" AutoPostBackOnFilter="true" UniqueName="MAINCART_DISCOUNTEDPRICE"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="MAINCART_TOTALPRICE" HeaderText="TOTALPRICE" AutoPostBackOnFilter="true" UniqueName="MAINCART_TOTALPRICE"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="MAINCART_CREATEDBY" HeaderText="CREATEDBY" AutoPostBackOnFilter="true" UniqueName="MAINCART_CREATEDBY"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="MAINCART_CREATEDDATE" HeaderText="CREATEDDATE" AutoPostBackOnFilter="true" UniqueName="MAINCART_CREATEDDATE"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="MAINCART_MODIFIEDBY" HeaderText="MODIFIEDBY" AutoPostBackOnFilter="true" UniqueName="MAINCART_MODIFIEDBY"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="MAINCART_MODIFIEDDATE" HeaderText="MODIFIEDDATE" AutoPostBackOnFilter="true" UniqueName="MAINCART_MODIFIEDDATE"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="STATUS_NAME" HeaderText="STATUS" AutoPostBackOnFilter="true" UniqueName="MAINCART_STATUS"></telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="MAINCART_TRANSID" HeaderText="TRANSID" AutoPostBackOnFilter="true" UniqueName="MAINCART_TRANSID"></telerik:GridBoundColumn>



                </Columns>
            </MasterTableView>

        </telerik:RadGrid>

    </div>
</asp:Content>

