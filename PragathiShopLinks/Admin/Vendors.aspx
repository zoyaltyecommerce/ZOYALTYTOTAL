<%@ Page Title="" Language="C#" MasterPageFile="_admin.Master" AutoEventWireup="true" CodeBehind="Vendors.aspx.cs" Inherits="PragathiShopLinks.Admin.Vendors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <asp:HiddenField runat="server" ID="hid_operation" />
            <asp:HiddenField runat="server" ID="hid_userid" />

            <table align="center">
                <tr>
                    <td>

                        <asp:LinkButton class="btn btn-primary" runat="server" ID="lnk_add" Text="Add new vendor" OnClick="lnk_add_Click"></asp:LinkButton></td>
                </tr>
            </table>


            <div id="div_grid" runat="server" style="margin-top:10px">
                <telerik:RadGrid ID="rgvendors" runat="server" AllowFilteringByColumn="True" FilterMenu-EnableTextHTMLEncoding="false"
                    AllowPaging="True" AutoGenerateColumns="False" GridLines="None" HeaderStyle-HorizontalAlign="Left"
                    OnNeedDataSource="rgvendors_NeedDataSource" PageSize="10" Skin="Sunset"
                    AllowSorting="true" GroupingSettings-CaseSensitive="false" Width="100%">
                    <MasterTableView Width="100%">
                        <Columns>


                            <telerik:GridBoundColumn DataField="USER_FIRSTNAME" HeaderText="Name" AutoPostBackOnFilter="true"
                                UniqueName="USER_FIRSTNAME">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="USER_EMAILID" HeaderText="Email" AutoPostBackOnFilter="true"
                                UniqueName="USER_EMAILID">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn DataField="STATUS_NAME" HeaderText="Status" AutoPostBackOnFilter="true"
                                UniqueName="STATUS_NAME">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="USER_PHONE" HeaderText="Phone Number" AutoPostBackOnFilter="true"
                                UniqueName="USER_PHONE">
                            </telerik:GridBoundColumn>

                            <telerik:GridTemplateColumn AllowFiltering="False"
                                UniqueName="ColEdit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" runat="server" CommandArgument='<%# Eval("USER_ID") %>'
                                        OnCommand="lnkEdit_Command" Text="Edit"></asp:LinkButton>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                            <telerik:GridTemplateColumn AllowFiltering="False"
                                UniqueName="ColDelete">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandArgument='<%# Eval("USER_ID") %>'
                                        OnCommand="lnkDelete_Command" Text="Delete" OnClientClick="return confirm('Are you sure, you want to delete record?');"></asp:LinkButton>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>

                        </Columns>
                    </MasterTableView>
                    <PagerStyle AlwaysVisible="True" />
                </telerik:RadGrid>
            </div>
            <div id="div_add" runat="server">
                <table>
                    <tr>
                        <td>Name</td>
                        <td>:</td>
                        <td>
                            <input type="text" runat="server" id="txt_name" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>:</td>
                        <td>
                            <input type="text" runat="server" id="txt_email" /></td>
                    </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td>:</td>
                        <td>
                            <input type="text" runat="server" id="txt_phone" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>:</td>
                        <td>
                            <input type="text" runat="server" id="txt_password" /></td>
                    </tr>

                </table>
                <table>
                    <tr>
                        <td>
                            <asp:Button runat="server" ID="btn_save" Text="Save" OnClick="btn_save_Click" /></td>
                        <td>&nbsp</td>
                        <td>
                            <asp:Button runat="server" ID="btn_cancel" OnClick="btn_cancel_Click" Text="Cancel" /></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
