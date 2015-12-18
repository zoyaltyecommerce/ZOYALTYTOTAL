<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/_admin.Master" AutoEventWireup="true" CodeBehind="city.aspx.cs" Inherits="PragathiShopLinks.Admin.city" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:TextBox ID="txt_city" runat="server"></asp:TextBox></br>
    <asp:button ID="btn_submit" runat="server" Text="submit" OnClick="btn_submit_Click" />


</asp:Content>
