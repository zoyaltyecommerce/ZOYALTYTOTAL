<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/_admin.Master" AutoEventWireup="true" CodeBehind="vendor_registration.aspx.cs" Inherits="PragathiShopLinks.Admin.vendor_registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Account creation</h3>
    <table>
        <tr>
            <td>Nmae:</td>
            <asp:RequiredFieldValidator ID="req_name" runat="server" ControlToValidate="txtv_name" ErrorMessage="Please enter your name"></asp:RequiredFieldValidator>
            <td><input type="text" id="txtv_name" runat="server" /></td>
        </tr>
        <tr>
            <td>Email:</td>
            <asp:RequiredFieldValidator ID="Req_email" runat="server" ControlToValidate="txtv_email" ErrorMessage="Please enter your email"></asp:RequiredFieldValidator>

            <td><input type="text" id="txtv_email" runat="server" /></td>
        </tr>
        <tr>
            <td>Phone no:</td>
            <asp:RequiredFieldValidator ID="Req_phone" runat="server" ControlToValidate="txtv_phone" ErrorMessage="Please enter your phoneno"></asp:RequiredFieldValidator>
            <td><input type="text" id="txtv_phone" runat="server" /></td>
        </tr>
        <tr>
            <td>Alternate phoneno:</td>
            <td><input type="text" id="txtv_altrphno" runat="server" /></td>
        </tr>
        <tr>
            <td>Create password:</td>
             <asp:RequiredFieldValidator ID="Req_password" runat="server" ControlToValidate="txtv_password" ErrorMessage="Please enter your password"></asp:RequiredFieldValidator>
            <td><input type="password" id="txtv_password" runat="server" /></td>
        </tr>
        <tr>
            <td>Retype password:</td>
             <asp:RequiredFieldValidator ID="Req_rentpass" runat="server" ControlToValidate="txtv_retypass" ErrorMessage="Please Re-enter your password"></asp:RequiredFieldValidator>
            <td><input type="password" id="txtv_retypass" runat="server" /></td>
        </tr>
    </table>
    <h3>Banl Details</h3>
    <table>
        <tr>
            <td>Account Holder Name:</td>
             <asp:RequiredFieldValidator ID="Req_acnthldrname" runat="server" ControlToValidate="txtv_accntholdername" ErrorMessage="Please enter accountholder name"></asp:RequiredFieldValidator>
            <td><input type="text" id="txtv_accntholdername" runat="server" /></td>
        </tr>
        <tr>
            <td>Account no:</td>
             <asp:RequiredFieldValidator ID="Req_accntno" runat="server" ControlToValidate="txtv_acntno" ErrorMessage="Please enter your Account number"></asp:RequiredFieldValidator>
            <td><input type="text" id="txtv_acntno" runat="server" /></td>
        </tr>
        <tr>
            <td>Bank:</td>
             <asp:RequiredFieldValidator ID="Req_bank" runat="server" ControlToValidate="txtv_bank" ErrorMessage="Please enter Bank name"></asp:RequiredFieldValidator>
            <td><input type="text" id="txtv_bank" runat="server" /></td>
        </tr>
        <tr>
            <td>Branch:</td>
             <asp:RequiredFieldValidator ID="Req_branch" runat="server" ControlToValidate="txtv_branch" ErrorMessage="Please enter Branch name"></asp:RequiredFieldValidator>
            <td><input type="text" id="txtv_branch" runat="server" /></td>
        </tr>
        <tr>
            <td>IFSC CODE:</td>
             <asp:RequiredFieldValidator ID="Req_ifsc" runat="server" ControlToValidate="txtv_ifsc" ErrorMessage="Please enter ifsc code of your Bank"></asp:RequiredFieldValidator>
            <td><input type="text" id="txtv_ifsc" runat="server" /></td>
        </tr>
        <tr>
            <td>PAN:</td>
            <td><input type="text" id="txtv_pan" runat="server" /></td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td>city:</td>
             <asp:RequiredFieldValidator ID="Req_city" runat="server" ControlToValidate="txtv_city" ErrorMessage="Please enter your city"></asp:RequiredFieldValidator>
            <td><input type="text" id="txtv_city" runat="server" /></td>
        </tr>
        <tr>
            <td>State:</td>
             <asp:RequiredFieldValidator ID="Req_state" runat="server" ControlToValidate="txtv_state" ErrorMessage="Please enter your state"></asp:RequiredFieldValidator>
            <td><input type="text" id="txtv_state" runat="server" /></td>
        </tr>
        <tr>
            <td>Pincode:</td>
             <asp:RequiredFieldValidator ID="Req_pincode" runat="server" ControlToValidate="txtv_pin" ErrorMessage="Please enter your pincode"></asp:RequiredFieldValidator>
            <td><input type="text" id="txtv_pin" runat="server" /></td>
        </tr>

    </table>
    <h3>Business Details</h3>
    <table>
        <tr>
            <td>Business Name:</td>
             <asp:RequiredFieldValidator ID="Req_businessame" runat="server" ControlToValidate="txtv_bisname" ErrorMessage="Please enter your Business name"></asp:RequiredFieldValidator>
            <td><input type="text" id="txtv_bisname" runat="server" /></td>
        </tr>
        <tr>
            <td>Address:</td>
             <asp:RequiredFieldValidator ID="Req_address" runat="server" ControlToValidate="txtv_address" ErrorMessage="Please enter your address"></asp:RequiredFieldValidator>
        <td><input type="text" id="txtv_address" runat="server" /></td>
            </tr>
        <tr>
          <td>Landline no:</td>
            <td><input type="text" id="txtv_landno" runat="server" /></td>
                  </tr>
    </table>

    <table>
        <tr>
            <td><asp:Button ID="txtv_save" Text="Save" runat="server" OnClick="txtv_save_Click" /></td>
        </tr>
    </table>

</asp:Content>
