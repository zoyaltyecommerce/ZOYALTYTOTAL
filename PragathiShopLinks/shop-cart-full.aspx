<%@ Page Title="" Language="C#" MasterPageFile="~/_Layout.Master" AutoEventWireup="true" CodeBehind="shop-cart-full.aspx.cs" Inherits="Zoyal.shop_cart_full" %>

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

    <script type="text/javascript">

        function OnSuccessprice(GRAND_TOTAL) {
            document.getElementById("cart_total_footer").innerHTML = GRAND_TOTAL;
            document.getElementById("total_footer").innerHTML = GRAND_TOTAL;
            //document.getElementById("cart_total_footer").innerHTML = result;
            //document.getElementById("total_footer").innerHTML = result;
        }
    </script>

    <script type="text/javascript">
        widow.onload = function () {
            document.getElementById("Myres").style.borderColor = "#fff";
        }

    </script>
    <script type="text/javascript">
        
        function dropcity() {
            debugger;
            var drop = document.getElementById("select_loc");
            var dropvalue = drop.options[drop.selectedIndex].value;
            var selectedText = drop.options[drop.selectedIndex].text;
            document.getElementById('ContentPlaceHolder1_hid_location').value = dropvalue;
            document.getElementById('ContentPlaceHolder1_hid_location_name').value = selectedText;
          
            //         var loc = document.getElementById("ContentPlaceHolder1_select_location").innerHTML;
            //PageMethods.dropcityselect(loc, OnSuccess, onerror)

            //function OnSuccess(result) {

            //}
            //function onerror() {
            //    // alert("somthing error")
            //}
        }
    </script>
  

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Begin Main -->
    <asp:HiddenField runat="server" ID="hid_city" />
     <asp:HiddenField runat="server" ID="hid_city_id" />
    <asp:HiddenField runat="server" ID="hid_location" />
      <asp:HiddenField runat="server" ID="hid_location_name" />
         <asp:HiddenField runat="server" ID="hid_coupon" />
    <div role="main" class="main">

        <!-- Begin page top -->
        <section class="page-top">
            <div class="container">
                <div class="page-top-in">
                    <h2><span>Shopping Bag</span></h2>
                </div>
            </div>
        </section>
        <!-- End page top -->

        <div class="container">

            <div class="row featured-boxes">
                <div class="col-md-12">
                    <h3 id="lbl_count_item" runat="server">Your selection (3 items)</h3>
                    <div class="featured-box featured-box-cart" id="Myres">
                        <div class="box-content">
                            <div>
                                <table cellspacing="0" class="shop_table" width="100%">
                                    <thead>
                                        <tr>
                                            <th class="product-thumbnail">Item
                                            </th>
                                            <th class="product-name">Product name
                                            </th>
                                            <th class="product-price">Price(Rupees)
                                            </th>
                                            <th class="product-quantity">Quantity
                                            </th>
                                            <th class="product-subtotal">SubTotal(Rupees)
                                            </th>
                                            <th class="product-remove">&nbsp;
                                            </th>
                                        </tr>
                                    </thead>


                                    <tbody runat="server" id="tb_cart">

                                        <tr class='cart_table_item'>
                                            <td class='product-thumbnail'>
                                                <a href='shop-product-sidebar.html'>
                                                    <img alt='' width='80' src='images/content/products/product-thumb.jpg'></a>
                                            </td>
                                            <td class='product-name'>
                                                <a href='shop-product-sidebar.html'>Linen shirt with ribbon at the front</a>
                                            </td>
                                            <td class='product-price'>
                                                <span class='amount'>RS299</span>
                                            </td>
                                            <td class='product-quantity'>
                                                <div class='quantity'>
                                                    <input type='button' class='minus' value='-'><input type='text' class='input-text qty text' title='Qty' value='1' name='quantity' min='1' step='1'>
                                                    <input type='button' class='plus' value='+'>
                                                </div>
                                            </td>
                                            <td class='product-subtotal'>

                                                <span class='amount'>RS299</span>
                                            </td>
                                            <td class='product-remove'><a title='Remove this item' class='remove' href='#'>
                                                <i class='fa fa-times-circle'></i>
                                            </a>
                                            </td>
                                        </tr>
                                        <tr class='cart_table_item'>
                                            <td class='product-thumbnail'>
                                                <a href='shop-product-sidebar.html'>
                                                    <img alt='' width='80' src='images/content/products/product-thumb.jpg'></a>
                                            </td>
                                            <td class='product-name'>
                                                <a href='shop-product-sidebar.html'>Linen shirt with ribbon at the front</a>
                                            </td>
                                            <td class='product-price'>
                                                <span class='amount'>RS299</span>
                                            </td>
                                            <td class='product-quantity'>
                                                <div class='quantity'>
                                                    <input type='button' class='minus' value='-'><input type='text' class='input-text qty text' title='Qty' value='1' name='quantity' min='1' step='1'>
                                                    <input type='button' class='plus' value='+'>
                                                </div>
                                            </td>
                                            <td class='product-subtotal'>
                                                <span class='amount'>RS299</span>
                                            </td>
                                            <td class='product-remove'><a title='Remove this item' class='remove' href='#'>
                                                <i class='fa fa-times-circle'></i>
                                            </a>
                                            </td>
                                        </tr>
                                        <tr class='cart_table_item'>
                                            <td class='product-thumbnail'>
                                                <a href='shop-product-sidebar.html'>
                                                    <img alt='' width='80' src='images/content/products/product-thumb.jpg'></a>
                                            </td>
                                            <td class='product-name'>
                                                <a href='shop-product-sidebar.html'>Linen shirt with ribbon at the front</a>
                                            </td>
                                            <td class='product-price'>
                                                <span class='amount'>RS299</span>
                                            </td>
                                            <td class='product-quantity'>
                                                <div class='quantity'>
                                                    <input type='button' class='minus' value='-'><input type='text' class='input-text qty text' title='Qty' value='1' name='quantity' min='1' step='1'>
                                                    <input type='button' class='plus' value='+'>
                                                </div>
                                            </td>
                                            <td class='product-subtotal'>
                                                <span class='amount'>RS299</span>
                                            </td>
                                            <td class='product-remove'><a title='Remove this item' class='remove' href='#'>
                                                <i class='fa fa-times-circle'></i>
                                            </a>
                                            </td>
                                        </tr>
                                        <%--<tr class="cart_table_item">
												
												<td class="product-thumbnail">
													<a href="shop-product-sidebar.html">
														<img alt="" width="80" src="images/content/products/product-thumb.jpg">
													</a>
												</td>
												<td class="product-name">
													<a href="shop-product-sidebar.html">Linen shirt with ribbon at the front</a>
												</td>
												<td class="product-price">
													<span class="amount">RS299</span>
												</td>
												<td class="product-quantity">
													
														<div class="quantity">
															<input type="button" class="minus" value="-">
															<input type="text" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
															<input type="button" class="plus" value="+">
														</div>
													
												</td>
												<td class="product-subtotal">
													<span class="amount">RS299</span>
												</td>
												<td class="product-remove">
													<a title="Remove this item" class="remove" href="#">
														<i class="fa fa-times-circle"></i>
													</a>
												</td>
											</tr>
											<tr class="cart_table_item">
												
												<td class="product-thumbnail">
													<a href="shop-product-sidebar.html">
														<img alt="" width="80" src="images/content/products/product-thumb-1.jpg">
													</a>
												</td>
												<td class="product-name">
													<a href="shop-product-sidebar.html">Poplin shirt with fine pleated bands</a>
												</td>
												<td class="product-price">
													<span class="amount">RS72</span>
												</td>
												<td class="product-quantity">
													<div >
														<div class="quantity">
															<input type="button" class="minus" value="-">
															<input type="text" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
															<input type="button" class="plus" value="+">
														</div>
													</div>
												</td>
												<td class="product-subtotal">
													<span class="amount">RS72</span>
												</td>
												<td class="product-remove">
													<a title="Remove this item" class="remove" href="#">
														<i class="fa fa-times-circle"></i>
													</a>
												</td>
											</tr>
											<tr class="cart_table_item">
												
												<td class="product-thumbnail">
													<a href="shop-product-sidebar.html">
														<img alt="" width="80" src="images/content/products/product-thumb-4.jpg">
													</a>
												</td>
												<td class="product-name">
													<a href="shop-product-sidebar.html">Contrasting shirt</a>
												</td>
												<td class="product-price">
													<span class="amount">RS60</span>
												</td>
												<td class="product-quantity">
													<div >
														<div class="quantity">
															<input type="button" class="minus" value="-">
															<input type="text" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
															<input type="button" class="plus" value="+">
														</div>
													</div>
												</td>
												<td class="product-subtotal">
													<span class="amount">RS60</span>
												</td>
												<td class="product-remove">
													<a title="Remove this item" class="remove" href="#">
														<i class="fa fa-times-circle"></i>
													</a>
												</td>
											</tr>--%>
                                    </tbody>

                                    <tbody>
                                        <tr id="resb">
                                            <td class="tdata"></td>
                                            <td class="tdata"></td>
                                            <td class="tdata" id="result"></td>
                                            <td class="tdata"></td>
                                            <td class="tdata"></td>
                                            <td class="tdata"></td>
                                        </tr>
                                    </tbody>

                                </table>




                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row featured-boxes">
                <div class="col-xs-4">
                    <div class="featured-box featured-box-secondary">
                        <div class="box-content">
                            <h4>Address</h4>

                            <div>
                                <div class="form-group">
                                    <label class="sr-only">Name</label>

                                    <asp:TextBox ID="txt_name" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="procedtocheckout"
                                        ControlToValidate="txt_name" ErrorMessage="Please enter your name" Display="Dynamic" SetFocusOnError="true" ForeColor="red">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only">Email ID</label>
                                    <asp:TextBox ID="txt_email" runat="server" class="form-control" placeholder="Email ID"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="procedtocheckout"
                                        ControlToValidate="txt_email" ErrorMessage="Enter valid Email" Display="Dynamic" SetFocusOnError="true" ForeColor="red">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator Display="Dynamic" ForeColor="White" ID="RegularExpressionValidator2" runat="server" ValidationGroup="procedtocheckout"
                                        ErrorMessage="Enter a valid email address"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        ControlToValidate="txt_email">
                                    </asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only">Phone Number</label>
                                    <asp:TextBox ID="txt_phonenumber" runat="server" class="form-control" placeholder="Phone number" MaxLength="12"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="procedtocheckout"
                                        ControlToValidate="txt_phonenumber" ErrorMessage="Please enter phone-number" Display="Dynamic" ForeColor="red" SetFocusOnError="true">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ForeColor="red"
                                        ControlToValidate="txt_phonenumber" ErrorMessage="Enter the valid phone number"
                                        ValidationExpression="[0-9]{10}" ValidationGroup="procedtocheckout">
                                    </asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only">Alternate Phone Number</label>
                                    <asp:TextBox ID="txt_altphonenumber" runat="server" class="form-control" placeholder="Alternate Phone Number" MaxLength="12"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="procedtocheckout"
                                        ControlToValidate="txt_altphonenumber" ErrorMessage="Please enter phone-number" Display="Dynamic" ForeColor="red" SetFocusOnError="true">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Display="Dynamic" ForeColor="red"
                                        ControlToValidate="txt_altphonenumber" ErrorMessage="Enter the valid phone number" ValidationGroup="procedtocheckout"
                                        ValidationExpression="[0-9]{10}">
                                    </asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only">Country</label>
                                    <%-- <div class="list-sort">
                                            <asp:DropDownList ID="ddlcontry" runat="server" class="formDropdown">
                                                <asp:ListItem>Select a country</asp:ListItem>
                                                  <asp:ListItem>INDIA</asp:ListItem>
                                                  <asp:ListItem>USA</asp:ListItem>
                                                 <asp:ListItem>UK</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="featured-box featured-box-secondary">
                        <div class="box-content">
                            <h4>Address</h4>

                            <div>
                                <div class="form-group" id="select_city" runat="server">
                                   <%-- <label class="sr-only">State/Province</label>--%>
                                    <%-- <asp:DropDownList ID="txt_state" runat="server" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="txt_state_SelectedIndexChanged"  >
                                            <asp:ListItem>State/Province</asp:ListItem>
                                        </asp:DropDownList>--%>
                                   <%-- <select class="form-control" id="city_select" runat="server">
                                        <option value="volvo">--Select-City--</option>

                                    </select>--%>
                                    <%--  <asp:TextBox ID="txt_state" runat="server" class="form-control" placeholder="State/Province"></asp:TextBox>--%>
                                    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                        ControlToValidate="txt_state" ErrorMessage="Please enter your state" Display="Dynamic" SetFocusOnError="true" ForeColor="red">
                                            </asp:RequiredFieldValidator>--%>
                                </div>
                                <div class="form-group"  id="select_location" runat="server">
                                    <%--<label class="sr-only">City</label>
                                    <select class="form-control" id="loc_select" runat="server">
                                        <option value="volvo">--Select-Location--</option>--%>

                                   <%-- </select>--%>
                                    <%-- <asp:TextBox ID="txt_city" runat="server" class="form-control" placeholder="City"></asp:TextBox>--%>
                                    <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="procedtocheckout"
                                                        ControlToValidate="txt_city" ErrorMessage="Please enter your city name" Display="Dynamic" SetFocusOnError="true" ForeColor="red">
                                            </asp:RequiredFieldValidator>--%>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only">Address Line1</label>
                                    <asp:TextBox ID="txt_addline1" runat="server" TextMode="MultiLine" class="form-control" placeholder="Address Line1"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="procedtocheckout"
                                        ControlToValidate="txt_addline1" ErrorMessage="Please enter your address1" Display="Dynamic" SetFocusOnError="true" ForeColor="red">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only">Address Line2</label>
                                    <asp:TextBox ID="txt_addline2" runat="server" TextMode="MultiLine" class="form-control" placeholder="Address Line2"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="procedtocheckout"
                                        ControlToValidate="txt_addline2" ErrorMessage="Please enter your address2" Display="Dynamic" SetFocusOnError="true" ForeColor="red">
                                    </asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group">
                                    <label class="sr-only">Promotional code</label>
                                    <asp:TextBox ID="txt_promocode" runat="server" class="form-control" placeholder="Enter promotional code here"></asp:TextBox>
                                    <asp:Label ID="lbl" runat="server" Visible="true" ForeColor="Red"></asp:Label>
                                </div>
                                <div class="form-group">

                                    <%--<asp:Button ID="btn_submit" runat="server" class="btn btn-grey btn-sm"  data-loading-text="Loading..." Text="Apply Promotion"/>--%>
                                    <input type="button" id="apply1" runat="server" onclick="coupon_price()" value="Apply Promotion" class="btn btn-primary btn-block btn-sm" />
                                    <input type="button" id="Button1" runat="server" onclick="removie_Coupon()" value="remove Promotion" style="display: none" class="btn btn-primary btn-block btn-sm" />

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-4">


                    <div class="featured-box featured-box-secondary">
                        <div class="box-content">
                            <h4>Shopping bag summary</h4>

                            <div id="producttbl" runat="server">
                                <table cellspacing="0" class="cart-totals" width="100%">
                                    <tbody>
                                        <tr class="cart-subtotal">

                                            <th>No of Audience
                                            </th>
                                            <td>
                                                <asp:TextBox ID="txt_audience" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="procedtocheckout"
                                                    ControlToValidate="txt_audience" ErrorMessage="Please Enter No of Audience " Display="Dynamic" SetFocusOnError="true" ForeColor="red" ValidationExpression="[0-9]{10}" >
                                                </asp:RequiredFieldValidator>
                                            
                                            </td>
                                        </tr>
                                        <tr class="cart-subtotal">

                                            <th>start date
                                            </th>
                                            <td>
                                                <%--	<span class="amount" id="Span2" runat="server">12/2/2015</span>--%>
                                                <%--    <input type="date" class="amount" name="startdate">--%>
                                                <edititemtemplate>
    <asp:TextBox ID="txt_startdate" runat="server" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="procedtocheckout"
                                                        ControlToValidate="txt_startdate" ErrorMessage="Please Select start date" Display="Dynamic" SetFocusOnError="true" ForeColor="red">
                                            </asp:RequiredFieldValidator>
</edititemtemplate>
                                            </td>
                                        </tr>
                                        <tr class="cart-subtotal">

                                            <th>End date
                                            </th>
                                            <td>
                                                <edititemtemplate>
    <asp:TextBox ID="txt_enddate" runat="server" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>
                                                    
  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="procedtocheckout"
                                                        ControlToValidate="txt_enddate" ErrorMessage="Please Select End date" Display="Dynamic" SetFocusOnError="true" ForeColor="red">
                                            </asp:RequiredFieldValidator>
</edititemtemplate>
                                            </td>
                                        </tr>
                                        <tr class="cart-subtotal">

                                            <th>Cart Subtotal
                                            </th>
                                            <td>
                                                <span class="amount" id="cart_total_footer" runat="server">RS431</span>
                                            </td>
                                        </tr>
                                        <tr class="shipping">
                                            <th>Shipping
                                            </th>
                                            <td>Free Shipping<input type="hidden" value="free_shipping" id="shipping_method" name="shipping_method">
                                            </td>
                                        </tr>
                                        <tr class="total">
                                            <th>Total
                                            </th>
                                            <td>
                                                <span class="amount" id="total_footer" runat="server">RS431</span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <asp:Label ID="lbl_proced_msg" runat="server" ForeColor="Red"></asp:Label>
                            <p>
                                <asp:Button ID="btn_procedchekout" runat="server" Text="Proceed To checkout" class="btn btn-primary btn-block btn-sm" data-loading-text="Loading..." OnClick="btn_procedchekout_Click" ValidationGroup="procedtocheckout" />
                            </p>
                            <p>
                                <asp:Button ID="btn_conshaping" runat="server" Text="Continue Shopping" class="btn btn-grey btn-block btn-sm" data-loading-text="Loading..." OnClick="btn_conshaping_Click" />
                            </p>

                        </div>
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

    <!-- Theme Initializer -->
    <script src="js/theme.plugins.js"></script>
    <script src="js/theme.js"></script>

    <!-- Style Switcher -->
    <script type="text/javascript" src="style-switcher/js/switcher.js"></script>
    </div>
</asp:Content>
