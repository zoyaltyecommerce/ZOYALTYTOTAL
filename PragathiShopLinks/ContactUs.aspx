<%@ Page Title="" Language="C#" MasterPageFile="~/_Layout.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Zoyal.contact" %>
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
            document.getElementById("li_contact").className = "active";
        });
    </script> 
    	
		<!-- Begin Main -->
		<div role="main" class="main">
		
			<!-- Begin page top -->
			<section class="page-top">
				<div class="container">
					<div class="page-top-in">
						<h2><span>Get In Touch</span></h2>
					</div>
				</div>
			</section>
			<!-- End page top -->
			<div class="container">
				<div class="row">
					<div class="col-sm-6 animation">
						<div class="contact-content">
							
							<h4>Contact Form</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>Nam scelerisque faucibus risus non iaculis.</p>
                            <div id="contact-form" name="form1">

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <label for="name">Your Name*</label>
                                             <asp:TextBox runat="server" ID="txt_yourname" class="form-control" placeholder="Please enter your name."></asp:TextBox>
                                           
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                        ControlToValidate="txt_yourname" ErrorMessage="Please enter your name" Display="Dynamic" SetFocusOnError="true" ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                              </div>
                                        <div class="col-xs-6">
                                            <label for="customer_mail">Your Email*</label>
                                              <asp:TextBox runat="server" ID="txt_email" class="form-control" placeholder="Please enter your Email Address."></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                        ControlToValidate="txt_email" ErrorMessage="Please enter a valid email address" Display="Dynamic" ForeColor="Red" SetFocusOnError="true">
                                            </asp:RequiredFieldValidator>
       
 <asp:RegularExpressionValidator ID="TxtEmailRegEx" runat="server" 
       ErrorMessage="Enter a valid email address"
       ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
       ControlToValidate="txt_email" ForeColor="Red" >
 </asp:RegularExpressionValidator>
                                              </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <label for="subject">Subject*</label>
                                             <asp:TextBox runat="server" ID="txt_subject" class="form-control" placeholder="Please enter the subject"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                        ControlToValidate="txt_subject" ErrorMessage="Please enter the subject" Display="Dynamic" ForeColor="Red" SetFocusOnError="true">
                                            </asp:RequiredFieldValidator>
                          
                                             </div>
                                        <div class="col-xs-6">
                                            <label for="website">Phone number</label>
                                              <asp:TextBox runat="server" ID="txt_phonenumber" class="form-control" placeholder="Please enter your Phone number."></asp:TextBox>
                                         
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                        ControlToValidate="txt_phonenumber" ErrorMessage="Please enter phone-number" Display="Dynamic" ForeColor="Red" SetFocusOnError="true">
                                            </asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ForeColor="Red"
                                                    ControlToValidate="txt_phonenumber" ErrorMessage="Enter the valid phone number"  
                                                        ValidationExpression="[0-9]{10}">
                                             </asp:RegularExpressionValidator>
                                            
                                            </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="comments">Your Message*</label>
                                     <asp:TextBox TextMode="MultiLine" ID="txt_comments" runat="server" class="form-control" rows="3" placeholder="Please enter subject"></asp:TextBox> 
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                                        ControlToValidate="txt_comments" ErrorMessage="Please enter your message" Display="Dynamic" ForeColor="Red" SetFocusOnError="true">
                                            </asp:RequiredFieldValidator>
                              
                                      </div>
                                <div class="form-group">
                                     <asp:Button runat="server" ID="btn_submit"  class="btn btn-primary"  Text="submit" OnClick="btn_submit_Click"/>
                                   
                                </div>
                            </div>
						</div>
					</div>
					<div class="col-sm-6 animation">
						<div class="contact-content">
							<h4>Get in touch</h4>
							<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto.</p>
							<address>
								<i class="fa fa-map-marker"></i> Begumpet, hyderabad<br>
								V6A 1E1 Canada<br><i class="fa fa-phone"></i>9059132905<br>
								<i class="fa fa-print"></i> 8885629019<br>
								<i class="fa fa-envelope"></i> <a href="mailto:info@zoyalty.in">info@zoyalty.in</a>
							</address>
						</div>
					</div>
				</div>
			</div>
			<!-- Google Map -->
			<div class="animation" id="googlemaps"></div>
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
	
	<!-- Style Switcher -->
	<script type="text/javascript" src="style-switcher/js/switcher.js"></script>
	
	<script type="text/javascript">
		$(function () {
			$('#datetimepicker1').datetimepicker();
			$('#datetimepicker4').datetimepicker({
				pickDate: false
			});
		});
	</script>
	
	<!-- Google Map -->
    <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script src="vendor/jquery.gmap.js"></script>
	<script>

		/*
		Map Settings

			Find the Latitude and Longitude of your address:
				- http://universimmedia.pagesperso-orange.fr/geo/loc.htm
				- http://www.findlatitudeandlongitude.com/find-address-from-latitude-and-longitude/

		*/

		// Map Markers
		var mapMarkers = [{
			address: "1234 Pine Shade Pl, Salt Lake City, UT 84118",
			html: "<strong>Flatize Shop</strong><br>123 Name Ave, Suite 600, Salt Lake City, UT 84118<br><br>",
			popup: false,
			icon: {
				image: "images/maker.png",
				iconsize: [28, 42],
				iconanchor: [28, 32]
			}
		}];

		// Map Initial Location
		var initLatitude = 40.65610;
		var initLongitude = -112.02586;

		// Map Extended Settings
		var mapSettings = {
			controls: {
				panControl: true,
				zoomControl: true,
				mapTypeControl: true,
				scaleControl: true,
				streetViewControl: true,
				overviewMapControl: true
			},
			scrollwheel: false,
			markers: mapMarkers,
			latitude: initLatitude,
			longitude: initLongitude,
			zoom: 15
		};

		var map = $("#googlemaps").gMap(mapSettings);

		// Map Center At
		var mapCenterAt = function(options, e) {
			e.preventDefault();
			$("#googlemaps").gMap("centerAt", options);
		}

	</script>
</asp:Content>
