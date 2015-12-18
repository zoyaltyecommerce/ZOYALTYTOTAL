<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/_admin.Master" AutoEventWireup="true" CodeBehind="LOCATION.aspx.cs" Inherits="PragathiShopLinks.Admin.LOCATION" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblcity" runat="server">City</asp:Label>
    

       <asp:DropDownList ID="drpdown1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpdown1_SelectedIndexChanged"></asp:DropDownList >
    <br />
    <br />
    <br />
    <asp:Label ID="lbllocation" runat="server" >LOCATION NAME</asp:Label>
    <asp:TextBox ID="txtlocation" runat="server">

    </asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnlocation" runat="server" value="save" Text="save.." OnClick="btnlocation_Click" />
    
</asp:Content>
