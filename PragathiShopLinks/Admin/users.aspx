<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/_admin.Master" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="PragathiShopLinks.Admin.users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:HiddenField runat="server" ID="hid_operation" />
    <asp:HiddenField runat="server" ID="hid_userid" />
  <%--  <table align="center">
        <tr><td><asp:LinkButton runat="server" ID="lnk_add" Text="ADD NEW SUSER" OnClick="lnk_add_Click"></asp:LinkButton></td></tr>
    </table>--%>
    <div id="div_grid" runat="server">
        <telerik:RadGrid  ID="tele_grid"  runat="server"  AllowFilteringByColumn="true"   FilterMenu-EnableTextHTMLEncoding="false" AllowPaging="true"
                    AutoGenerateColumns="false"  GridLines="None"  HeaderStyle-HorizontalAlign="Left"  OnNeedDataSource="tele_grid_NeedDataSource"
              PageSize="10"    Skin="Sunset"  AllowSorting="true"   GroupingSettings-CaseSensitive="false"  Width="100%">
            <MasterTableView Width="100%">
                <Columns>
                    
                    <telerik:GridBoundColumn  DataField="USER_FIRSTNAME"  HeaderText="name" AutoPostBackOnFilter="true"
                          UniqueName="USER_FIRSTNAME"></telerik:GridBoundColumn>
                     <telerik:GridBoundColumn DataField="USER_EMAILID" HeaderText="Email" AutoPostBackOnFilter="true"
                                                  UniqueName="USER_EMAILID">
                        </telerik:GridBoundColumn>
                       
                        <telerik:GridBoundColumn DataField="STATUS_NAME" HeaderText="Status" AutoPostBackOnFilter="true"
                                                 UniqueName="STATUS_NAME">
                        </telerik:GridBoundColumn>
                          <telerik:GridBoundColumn DataField="USER_PHONE" HeaderText="Phone Number" AutoPostBackOnFilter="true"
                                                 UniqueName="USER_PHONE">
                        </telerik:GridBoundColumn>
                   <%-- <telerik:GridTemplateColumn  AllowFiltering="false" UniqueName="coledit">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnk_btn"  runat="server"  CommandArgument='<%#Eval("USER_ID") %>'
                                  Text="Edit"  OnCommand="lnk_EDIT_Command" ></asp:LinkButton>
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn AllowFiltering="false" UniqueName="coldelete">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnk_delete" runat="server" CommandArgument='<%#Eval("USER_ID") %>'
                                            Text="Delete" OnCommand="lnk_delete_Command" OnClientClick="return to confirm('are you sure ?do you want to delete');" ></asp:LinkButton>         
                                   </ItemTemplate>
                    </telerik:GridTemplateColumn>--%>

                </Columns>
            </MasterTableView>
            <PagerStyle AlwaysVisible="true" />
        </telerik:RadGrid>
       </div>
           <%-- <div  id="div_add" runat="server">
                <table>
                    <tr>
                         <td>name</td><td>:</td><td><input type="text" id="txt_name" runat="server" /></td>
                    </tr>
                     <tr>
                <td>Email</td><td>:</td><td><input type="text" runat="server" id="txt_email" /></td>
            </tr>
             <tr>
                <td>Phone Number</td><td>:</td><td><input type="text" runat="server" id="txt_phone" /></td>
            </tr>
            <tr>
                <td>Password</td><td>:</td><td><input type="text" runat="server" id="txt_password" /></td>
            </tr>
            
                </table>
                        <table><tr><td><asp:Button runat="server" ID="btn_save" Text="Save" OnClick="btn_save_Click" /></td><td>&nbsp</td><td><asp:Button runat="server" ID="btn_cancel" OnClick="btn_cancel_Click" Text="Cancel" /></td></tr></table>

            </div>--%>--%>
  
</asp:Content>
