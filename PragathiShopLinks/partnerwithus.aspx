<%@ Page Title="" Language="C#" MasterPageFile="~/_Layout.Master" AutoEventWireup="true" CodeBehind="partnerwithus.aspx.cs" Inherits="Zoyal.partnerwithus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="keywords" content="Zoyalty" />
    <meta name="description" content="Zoyalty">
    <meta name="author" content="konnectsu.com">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Zoyalty</title>
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,700,300' rel='stylesheet' type='text/css'>
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap datetimepicker -->
    <link href="bootstrap/datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <!-- Icon Fonts -->
    <link href="css/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
    <!-- Owl Carousel Assets -->
    <link href="vendor/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="vendor/owl-carousel/owl.theme.css" rel="stylesheet">
    <link href="vendor/owl-carousel/owl.transitions.css" rel="stylesheet">

    <!-- bxslider -->
    <link href="vendor/bxslider/jquery.bxslider.css" rel="stylesheet">
    <!-- flexslider -->
    <link rel="stylesheet" href="vendor/flexslider/flexslider.css" media="screen">
    <!-- Theme -->
    <link href="css/theme-animate.css" rel="stylesheet">
    <link href="css/theme-elements.css" rel="stylesheet">
    <link href="css/theme-blog.css" rel="stylesheet">
    <link href="css/theme-shop.css" rel="stylesheet">
    <link href="css/theme.css" rel="stylesheet">

    <!-- Datetimepicker -->
    <link href="css/datetimepicker.css" rel="stylesheet">

    <!-- Style Switcher-->
    <link rel="stylesheet" href="style-switcher/css/style-switcher.css">
    <link href="css/colors/cyan/style.html" rel="stylesheet" id="layoutstyle">
    <!-- Theme Responsive-->
    <link href="css/theme-responsive.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script>
        $(document).ready(function () {
            document.getElementById("li_partner").className = "active";
        });
    </script>
         <!-- Begin Main -->
        <div role="main" class="main">

            <!-- Begin page top -->
            <section class="page-top">
                <div class="container">
                    <div class="page-top-in">
                        <h2><span>PARTNER WITH US</span></h2>
                    </div>
                </div>
            </section>
            <!-- End page top -->
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 animation">
                        <div class="contact-content">
                            <h4>Partner with us</h4>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto.</p>

                        </div>
                    </div>
                    <div class="col-sm-12 animation">
                        <div class="contact-content">

                            <h4>Partnership form</h4>
                            <p>Please fill these details, one of our executive will reach you soon</p>
                            <dic id="contact-form">
                              
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <label for="name">Your Name*</label>
                                              <asp:TextBox ID="txt_yourname" runat="server" class="form-control" value=""  placeholder="Please enter your name."   ></asp:TextBox>

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                        ControlToValidate="txt_yourname" ErrorMessage="Please enter your name" Display="Dynamic" SetFocusOnError="true" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-xs-6">
                                            <label for="customer_mail">Your Email*</label>
                                           <asp:TextBox ID="txt_email" runat="server" class="form-control" value=""  placeholder="Please enter a valid email address." ></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                        ControlToValidate="txt_email" ErrorMessage="Please enter a valid email address" Display="Dynamic" ForeColor="Red" SetFocusOnError="true">
                                            </asp:RequiredFieldValidator>

 <asp:RegularExpressionValidator Display="Dynamic" ForeColor="Red" ID="TxtEmailRegEx" runat="server" 
       ErrorMessage="Enter a valid email address"
       ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
       ControlToValidate="txt_email" >
 </asp:RegularExpressionValidator>

                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                       
                                        <div class="col-xs-6">
                                            <label for="website">Phone Number*</label>
                                             <asp:TextBox ID="txt_phonenumber" runat="server" class="form-control" value="" placeholder="Please enter phone-number."></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                        ControlToValidate="txt_phonenumber" ErrorMessage="Please enter phone-number" Display="Dynamic" ForeColor="Red" SetFocusOnError="true">
                                            </asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ForeColor="Red"
                                                    ControlToValidate="txt_phonenumber" ErrorMessage="Enter the valid phone number"  
                                                        ValidationExpression="[0-9]{10}">
                                             </asp:RegularExpressionValidator>
                                        </div>
                                        <div class="col-xs-6">
                                            <label for="subject">Subject*</label>
                                              <asp:TextBox ID="txt_subject" runat="server" class="form-control" value="" placeholder="Please enter the subject."  ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                        ControlToValidate="txt_subject" ErrorMessage="Please enter the subject" Display="Dynamic" ForeColor="Red" SetFocusOnError="true">
                                            </asp:RequiredFieldValidator>
                                                 </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="comments">Your Message*</label>
                                     <asp:TextBox ID="txt_comments" runat="server" class="form-control" rows="3" TextMode="MultiLine" placeholder="Please enter your message." ></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                                        ControlToValidate="txt_comments" ErrorMessage="Please enter your message" Display="Dynamic" ForeColor="Red" SetFocusOnError="true">
                                            </asp:RequiredFieldValidator>
                              
                                        </div>
                                <div class="form-group">
                                    <asp:Button ID="btn_partner" runat="server" class="btn btn-primary"  Text="Submit" OnClick="btn_partner_Click"   />
                               
                                </div>
                            </dic>
                        </div>
                    </div>
                    
                </div>
            </div>
           
        </div>
        <!-- End Main -->

      
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="vendor/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/bootstrap-hover-dropdown.min.js"></script>
    <script src="vendor/owl-carousel/owl.carousel.js"></script>
    <script src="vendor/modernizr.custom.js"></script>
    <script src="vendor/jquery.stellar.js"></script>
    <script src="vendor/imagesloaded.pkgd.min.js"></script>
    <script src="vendor/masonry.pkgd.min.js"></script>
    <script src="vendor/jquery.pricefilter.js"></script>
    <script src="vendor/bxslider/jquery.bxslider.min.js"></script>
    <script src="vendor/mediaelement-and-player.js"></script>
    <script src="vendor/waypoints.min.js"></script>
    <script src="vendor/flexslider/jquery.flexslider-min.js"></script>
    <script src="vendor/jquery.validation/jquery.validation.js"></script>
    <script src="bootstrap/datetimepicker/js/moment.js"></script>
    <script src="bootstrap/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>

    <script src="js/contact.js"></script>

    <!-- Theme Initializer -->
    <script src="js/theme.plugins.js"></script>
    <script src="js/theme.js"></script>
</asp:Content>
