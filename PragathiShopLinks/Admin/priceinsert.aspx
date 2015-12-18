<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/_admin.Master" AutoEventWireup="true" CodeBehind="priceinsert.aspx.cs" Inherits="PragathiShopLinks.Admin.priceinsert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <label>Name</label>
    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox><br />
    <label>Description</label>
    <asp:TextBox ID="txt_desc" runat="server"></asp:TextBox><br />
    <asp:FileUpload ID="product_img" runat="server" /><br />
      <label>Image title</label>
    <asp:TextBox ID="txt_imgtitle" runat="server"></asp:TextBox><br />
        <label>Product price</label>
    <asp:TextBox ID="txt_product_price" runat="server"></asp:TextBox><br />
        <label>product title</label>
    <asp:TextBox ID="txt_producttitle" runat="server"></asp:TextBox><br /><br />


    <asp:Button ID="btn_submit" runat="server" Text="submit"  OnClick="btn_submit_Click"/>


</asp:Content>
