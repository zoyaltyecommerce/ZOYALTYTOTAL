<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logincheck.aspx.cs" Inherits="Zoyal.logincheck" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zoyalty</title>
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link href="css/login.css" rel="stylesheet"/>  
</head>

<body class="gray-bg">
     
<form id="form1" runat="server">   
     <asp:HiddenField runat="server" ID="hid_user_id" />
    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>
                 <h4><img src="Images/logo.png" class="logo-name" alt="Flatize"></h4>   
            </div>
            <h3>Welcome to User</h3>
            <h2 id="lblmsg" style="display:none">Enter your Email_id</h2>
          <%--  <p>Login in. To see it in action.</p>--%>
            <div class="m-t" >
                <div class="form-group">
                    <asp:TextBox ID="txt_username" runat="server" class="form-control" placeholder="Username" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="login"
                                                        ControlToValidate="txt_username" ErrorMessage="Enter valid Email" Display="Dynamic" SetFocusOnError="true" ForeColor="red">
                                            </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator Display="Dynamic" ForeColor="red" ID="RegularExpressionValidator2" runat="server" 
       ErrorMessage="Enter a valid email address"
       ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
       ControlToValidate="txt_username" >
 </asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txt_password" runat="server" TextMode="Password" class="form-control" placeholder="Password" ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="login"
                                                        ControlToValidate="txt_password" ErrorMessage="Enter valid password" Display="Dynamic" SetFocusOnError="true" ForeColor="red">
                                            </asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txt_fogetpassword" runat="server" class="form-control" placeholder="Username" style="display:none"  ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="forget"
                                                        ControlToValidate="txt_fogetpassword" ErrorMessage="Enter valid Email" Display="Dynamic" SetFocusOnError="true" ForeColor="red">
                                            </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator Display="Dynamic" ForeColor="red" ID="RegularExpressionValidator1" runat="server" 
       ErrorMessage="Enter a valid email address"
       ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
       ControlToValidate="txt_fogetpassword" >
 </asp:RegularExpressionValidator>
                </div>
          <asp:Button ID="btn_submit" runat="server" class="btn btn-primary block full-width m-b" Text="Login" OnClick="btn_submit_Click" />
                <asp:Button ID="btn_forget" runat="server" class="btn btn-primary block full-width m-b" Text="send" OnClick="btn_forget_Click"  style="display:none" />

                <a id="forget" runat="server" href="#"  onclick="forgetpwd();" ><small>Forgot password?</small></a>
                  <a id="back" runat="server" href="shop-cart-full.aspx"><small class="sm">BACK</small></a>
                 <a id="backlogin" runat="server" href="#"  onclick="backtologin();" style="display:none" ><small>Back to Login</small></a>
            </div>
            <p class="m-t"> <small>KonnectsU Technologies&copy; 2015</small> </p>
        </div>
    </div>
    <!-- Mainly scripts -->
    </form>
     <script src="js/jquery-2.1.1.js"></script>
    <script type="text/javascript">
        function forgetpwd() {
            debugger;
            document.getElementById('lblmsg').style.display = 'inline-block'
            document.getElementById('txt_fogetpassword').style.display = "inline-block";
            document.getElementById('txt_username').style.display = 'none';
            document.getElementById('txt_password').style.display = 'none';
            document.getElementById('btn_submit').style.display = 'none';
            document.getElementById('btn_forget').style.display = 'block';
            document.getElementById('forget').style.display = 'none';
            document.getElementById('backlogin').style.display = 'block';
            document.getElementById('back').style.display = "none";
          
        }
        function backtologin()
        {
            document.getElementById('lblmsg').style.display = 'none';
            document.getElementById('txt_fogetpassword').style.display = 'none';
            document.getElementById('btn_forget').style.display = 'none';
            document.getElementById('txt_username').style.display = 'block';
            document.getElementById('txt_password').style.display = 'block';
            document.getElementById('btn_submit').style.display = 'block';
            document.getElementById('forget').style.display = 'inline-block';
            document.getElementById('backlogin').style.display = 'none';
        }
    </script>
</body>

</html>