<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/_admin.Master" AutoEventWireup="true" CodeBehind="product_details.aspx.cs" Inherits="PragathiShopLinks.Admin.product_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
    <div class="col-md-12">
        <asp:HiddenField ID="hid_operation" runat="server" />
        <asp:HiddenField ID="hid_vendorid" runat="server" />
        
         <div id="div1" runat="server">
     <telerik:RadGrid ID="product_grid" runat="server" AllowFilteringByColumn="True" FilterMenu-EnableTextHTMLEncoding="false"
                    AllowPaging="True" AutoGenerateColumns="False" GridLines="None" HeaderStyle-HorizontalAlign="Left"
                    PageSize="10" Skin="Sunset"   OnNeedDataSource="product_grid_NeedDataSource"
                    AllowSorting="true" GroupingSettings-CaseSensitive="false" Width="100%">

              <ClientSettings> 
          <Scrolling AllowScroll="True" ScrollHeight="550" SaveScrollPosition="True"></Scrolling> 
           </ClientSettings>



                    <MasterTableView Width="100%" TableLayout="Auto">
                        <Columns>
                             <telerik:GridBoundColumn DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" AutoPostBackOnFilter="true"
                                UniqueName="PRODUCT_ID">
                            </telerik:GridBoundColumn>

                             <telerik:GridBoundColumn DataField="PRODUCT_NAME" HeaderText="PRODUCT_NAME" AutoPostBackOnFilter="true"
                                UniqueName="PRODUCT_NAME">
                            </telerik:GridBoundColumn>



                             <telerik:GridBoundColumn DataField="PRODUCT_DESC" HeaderText="BRAND_NAME" AutoPostBackOnFilter="true"
                                UniqueName="PRODUCT_DESC">
                            </telerik:GridBoundColumn>

                             <telerik:GridBoundColumn DataField="PRODUCT_TITLE" HeaderText="PRODUCT_TYPE" AutoPostBackOnFilter="true"
                                UniqueName="PRODUCT_TITLE">
                            </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="PRODUCT_PRICE" HeaderText="PRODUCT_PRICE" AutoPostBackOnFilter="true"
                                UniqueName="PRODUCT_PRICE">
                            </telerik:GridBoundColumn>
                             <telerik:GridBoundColumn DataField="PRODUCT_CITYID" HeaderText="PRODUCT_CITYID" AutoPostBackOnFilter="true"
                                UniqueName="PRODUCT_CITYID">
                            </telerik:GridBoundColumn>
                            


                          <telerik:GridTemplateColumn AllowFiltering="false" UniqueName="colTYPE">
                              <ItemTemplate>
                                  <asp:LinkButton ID="TYPES"  runat="server"  CommandArgument='<%#Eval("PRODUCT_ID") %>'
                                        OnCommand="TYPES_Command"  Text="TYPES"></asp:LinkButton>
                              </ItemTemplate>

                          </telerik:GridTemplateColumn>
                            
                          <telerik:GridTemplateColumn AllowFiltering="false" UniqueName="colTPE">
                              <ItemTemplate>
                                  <asp:LinkButton ID="update"  runat="server"  CommandArgument='<%#Eval("PRODUCT_ID") %>'
                                      OnCommand="update_Command"     Text="update"></asp:LinkButton>
                              </ItemTemplate>

                          </telerik:GridTemplateColumn>


                           

                            <telerik:GridTemplateColumn AllowFiltering="false" UniqueName="coldelete">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnk_delete" runat="server" CommandArgument='<%#Eval("PRODUCT_ID") %>'
                                         OnCommand="lnk_delete_Command"  Text="Delete" OnClientClick="return confirm('Are you sure, you want to delete record?');"></asp:LinkButton>
                                </ItemTemplate>
                                </telerik:GridTemplateColumn>
                            </Columns>
                        </MasterTableView>
         </telerik:RadGrid>

        </div>
       <div id="div_grid" runat="server" style="margin-top:10px">
                <telerik:RadGrid ID="rgvendors" runat="server" AllowFilteringByColumn="True" FilterMenu-EnableTextHTMLEncoding="false"
                    AllowPaging="True" AutoGenerateColumns="False" GridLines="None" HeaderStyle-HorizontalAlign="Left"
                     OnNeedDataSource="rgvendors_NeedDataSource" PageSize="10" Skin="Sunset"
                    AllowSorting="true" GroupingSettings-CaseSensitive="false" Width="100%">
                    <MasterTableView Width="100%">
                        <Columns>


                            <telerik:GridBoundColumn DataField="PRODUCTTYPE_ID" HeaderText="PRODUCTTYPE_ID" AutoPostBackOnFilter="true"
                                UniqueName="PRODUCTTYPE_ID">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" AutoPostBackOnFilter="true"
                                UniqueName="PRODUCT_ID">
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn DataField="PRODUCT_TYPID" HeaderText="PRODUCT_TYPID" AutoPostBackOnFilter="true"
                                UniqueName="PRODUCT_TYPID">
                            </telerik:GridBoundColumn>
                            

                        </Columns>
                    </MasterTableView>
                    <PagerStyle AlwaysVisible="True" />
                </telerik:RadGrid>
            </div>

        <div id="update" runat="server">
              <table>
                 <tr>
                     <td>PRODUCT_NAME:</td>
                     <td><asp:TextBox ID="txt_name" runat="server"></asp:TextBox></td>
                 </tr>
                  <tr>
                     <td>PRODUCT_DESC</td>
                     <td><asp:TextBox ID="txt_DESC" runat="server"></asp:TextBox></td>
                 </tr>
                  <tr>
                     <td>PRODUCT_IMAGETITLE</td>
                     <td><asp:TextBox ID="txt_IMAGETITL" runat="server"></asp:TextBox></td>
                 </tr>
                  <tr>
                     <td>PRODUCT_PRICE</td>
                     <td><asp:TextBox ID="txt_PRICE" runat="server"></asp:TextBox></td>
                 </tr>
                  <tr>
                     <td>PRODUCT_TITLE:</td>
                     <td><asp:TextBox ID="txt_TITLE" runat="server"></asp:TextBox></td>
                 </tr>
                 
             </table>
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btn_update" runat="server" Text="Update" OnClick="btn_update_Click" />
                    </td>
                     <td>&nbsp</td>
                    <td>
                        <asp:Button ID="btn_cancel" runat="server" Text="cancel"  OnClick="btn_cancel_Click" />
                    </td>
                </tr>
            </table>
        </div>
     

   </div>
        </div>


       


     





</asp:Content>
