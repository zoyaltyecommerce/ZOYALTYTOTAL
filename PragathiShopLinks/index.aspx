<%@ Page Title="" Language="C#" MasterPageFile="~/_Layout.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Zoyal.index" %>

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
    <link href="css/customize.css" rel="stylesheet" />
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Icon Fonts -->
    <link href="css/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
    <script src="Scripts/jquery-1.8.2.min.js"></script>
    <!-- Owl Carousel Assets -->  
   <%-- <link href="vendor/theme-elements.css" rel="stylesheet"> --%>
    <link href="vendor/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="vendor/owl-carousel/owl.theme.css" rel="stylesheet">
    <link href="vendor/owl-carousel/owl.transitions.css" rel="stylesheet">
        <script src="vendor/owl-carousel/owl.carousel.js"></script>

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
    <!-- Bootstrap datetimepicker -->
    <link href="bootstrap/datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <!-- Datetimepicker -->
    <link href="css/datetimepicker.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .form-control {
            height: 27px;
        }
    
       
    </style>
 
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        $(document).ready(function () {
            document.getElementById("li_home").className = "active";
        });
    </script>
    <div role="main" class="main">
        <!-- Begin Main Slide -->
        <section class="main-slide">
            <div id="owl-main-demo" class="owl-carousel main-demo">
                <div class="item" id="item1">
                    <img src="images/content/slides/slider1.jpg" class="img-responsive" alt="Photo">
                    <div class="item-caption">
                        <div class="item-caption-inner">
                            <div class="item-caption-wrap">
                                <p class="item-cat"><a href="#">Fall/Winter 2014</a></p>
                                <h2>Up to 50% off<br>
                                    on selected items</h2>
                                <a href="#" class="btn btn-white hidden-xs">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item" id="item2">
                    <img src="images/content/slides/slider2.jpg" class="img-responsive" alt="Photo">
                    <div class="item-caption">
                        <div class="item-caption-inner">
                            <div class="item-caption-wrap">
                                <p class="item-cat"><a href="#">Top</a></p>
                                <h2>25% off<br>
                                    for pink swim</h2>
                                <a href="#" class="btn btn-white hidden-xs">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item" id="item3">
                    <img src="images/content/slides/slider3.jpg" class="img-responsive" alt="Photo">
                    <div class="item-caption">
                        <div class="item-caption-inner">
                            <div class="item-caption-wrap">
                                <p class="item-cat"><a href="#">Panties</a></p>
                                <h2>Free shipping<br>
                                    on RS50 plus RS20</h2>
                                <a href="#" class="btn btn-white hidden-xs">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Main Slide -->
   <%--     <section style="margin-top: 10px; margin-bottom: 10px">
            <div class="row">
                <div class="col-md-12" style="text-align: center; align-content: center; align-items: center">
                    <div class="container" style="background-color: #333333; padding-bottom: 10px">
                        <div>
                         <div  class="bs-docs-example" runat="server" id="dropselectcity" >
                                

                                
                            </div>
                            <div class="bs-docs-example" id="dropselectlocation" runat="server">
                                <select class="selectpicker" data-style="btn-success">
                              <option selected>Select Location</option>
                                <option>hyddd</option>
                                   
                                </select>
                            </div>
                            <div class="bs-docs-example">
                              <asp:TextBox ID="txt_noaudience" runat="server" class="form-control" name="x" placeholder="No of Audience"></asp:TextBox>

                            </div>
                            <div class="bs-docs-example">
                                <div class='input-group date' style="display: inline-table" id='datetimepicker1'>
                                    <asp:TextBox ID="txt_startdate" runat="server" placeholder="Start Date" style="float: none !important; padding-top: 7px;" class="form-control" name="date_input"  ></asp:TextBox>
                                    <span class="input-group-addon" style="height: 27px; padding: 5px 9px">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                            <div class="bs-docs-example">
                                <div class='input-group date' style="display: inline-table" id='datetimepicker1'>
                                   
                                   <%--<asp:TextBox ID="txt_startdate" runat="server"  placeholder="Start Date" style="float: none !important; padding-top: 7px;" class="form-control" ></asp:TextBox>
                                    <asp:ImageButton ID="imgPopup" ImageUrl="images/calendar.png" ImageAlign="Bottom"
    runat="server" />
<cc1:CalendarExtender ID="Calendar1" PopupButtonID="imgPopup" runat="server" TargetControlID="txt_startdate"
    Format="dd/MM/yyyy">
</cc1:CalendarExtender>--%>
<%--                                    <asp:TextBox ID="txt_enddate" runat="server" placeholder="End Date" style="float: none !important; padding-top: 7px;" class="form-control" name="date_input"  ></asp:TextBox>
                                    
                                    <span class="input-group-addon" style="height: 27px; padding: 5px 9px">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                            <div class="bs-docs-example">
                                <input type="hidden" name="search_param" value="all" id="search_param">
                               
                            <div class="bs-docs-example">
                                <span>
                                    
                                    <asp:Button ID="search_item" runat="server" Text="search" class="btn btn-default" value="Search" style="background-color: #1abc9c; padding: 7px 15px 13px; height: 35px" OnClick="search_item_Click"/>
                                </span>
                            </div>
                                 </div>
                        </div>
                    </div>

                </div>

                <!--<div class="input-group" style="display:inline-block">


        </div>-->


            </div>
        </section>--%>

        <%--<script type="text/javascript">
            window.onload = function () {
                RS('.selectpicker').selectpicker();
                RS('.rm-mustard').click(function () {
                    RS('.remove-example').find('[value=Mustard]').remove();
                    RS('.remove-example').selectpicker('refresh');
                });
                RS('.rm-ketchup').click(function () {
                    RS('.remove-example').find('[value=Ketchup]').remove();
                    RS('.remove-example').selectpicker('refresh');
                });
                RS('.rm-relish').click(function () {
                    RS('.remove-example').find('[value=Relish]').remove();
                    RS('.remove-example').selectpicker('refresh');
                });
                RS('.ex-disable').click(function () {
                    RS('.disable-example').prop('disabled', true);
                    RS('.disable-example').selectpicker('refresh');
                });
                RS('.ex-enable').click(function () {
                    RS('.disable-example').prop('disabled', false);
                    RS('.disable-example').selectpicker('refresh');
                });

                // scrollYou
                RS('.scrollMe .dropdown-menu').scrollyou();

                prettyPrint();
            };
        </script>--%>
        <!-- Begin Top Selling -->
        <section class="products-slide">
            <div class="container" runat="server">
                <h2 class="title"><span>Products</span></h2>
                <div class="row">

                    <div id="product_img" runat="server" >
                       
                        <div class='col-md-3 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'><span class='product-thumb-info-act'><a href='shop-cart-full.html' class='add-to-cart-product' > <span><i class='fa fa-shopping-cart'></i></span></a> </span><img alt='' class='imaheight'  class='img-responsive' src='PRODUCT_IMG/AUTOMATIC.png'></div><div class='product-thumb-info-content'><span class='price pull-right'>29.99 USD</span><h4><a href='shop-product-detail2.html'>Denim shirt</a></h4> <span class='item-cat'><small><a href='#'>Jackets</a></small></span></div></div></div></div>
                        <div class='col-md-3 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'><span class='product-thumb-info-act'><a href='shop-cart-full.html' class='add-to-cart-product' > <span><i class='fa fa-shopping-cart'></i></span></a> </span><img alt=''  class='imaheight'  class='img-responsive' src='PRODUCT_IMG/AUTOMATIC.png'></div><div class='product-thumb-info-content'><span class='price pull-right'>29.99 USD</span><h4><a href='shop-product-detail2.html'>Denim shirt</a></h4> <span class='item-cat'><small><a href='#'>Jackets</a></small></span></div></div></div></div>
                        <div class='col-md-3 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'><span class='product-thumb-info-act'><a href='shop-cart-full.html' class='add-to-cart-product' > <span><i class='fa fa-shopping-cart'></i></span></a> </span><img alt=''  class='imaheight' class='img-responsive' src='PRODUCT_IMG/AUTOMATIC.png'></div><div class='product-thumb-info-content'><span class='price pull-right'>29.99 USD</span><h4><a href='shop-product-detail2.html'>Denim shirt</a></h4> <span class='item-cat'><small><a href='#'>Jackets</a></small></span></div></div></div></div>
                        <div class='col-md-3 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'><span class='product-thumb-info-act'><a href='shop-cart-full.html' class='add-to-cart-product' > <span><i class='fa fa-shopping-cart'></i></span></a> </span><img alt=''  class='imaheight' class='img-responsive' src='PRODUCT_IMG/AUTOMATIC.png'></div><div class='product-thumb-info-content'><span class='price pull-right'>29.99 USD</span><h4><a href='shop-product-detail2.html'>Denim shirt</a></h4> <span class='item-cat'><small><a href='#'>Jackets</a></small></span></div></div></div></div>
                   
                    </div>
                </div>
            </div>
        </section>
        <!-- End Top Selling -->
        <!-- Begin Lookbook Women -->
        <section id="lookbook">
            <div class="container">
                <div class="lookbook">
                    <h2><a href="#">Lookbook Women</a></h2>
                    <p>Etiam aliquam risus ante, quis ultrices enim porta a. Integer et dolor sit amet enim feugiat faucibus. Donec sit amet egestas orci. Proin facilisis mi ornare turpis sollicitudin; vel rutrum est viverra. Vestibulum hendrerit egestas semper.</p>
                </div>
            </div>
        </section>
        <!-- End Lookbook Women -->
        <!-- Begin Parallax -->
        <section class="pi-parallax" data-stellar-background-ratio="0.6">
            <div class="container">
                <div id="owl-text-slide" class="owl-carousel">
                    <div class="item">
                        <blockquote>
                            <p>Design is a funny word. Some people think design means how it looks. But of course, if you dig deeper, it’s really how it works.</p>
                            <footer>by <cite title="Steve Jobs">Steve Jobs</cite></footer>
                        </blockquote>
                    </div>
                    <div class="item">
                        <blockquote>
                            <p>They may forget what you said, but they will never forget how you made them feel.</p>
                            <footer>by <cite title="Steve Jobs">Carl W. Buechner</cite></footer>
                        </blockquote>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Parallax -->
        <!-- Begin Latest Blogs -->
        <!-- Begin Ads -->
        <section class="ads">
            <div class="container">
                <div class="row">
                    <div class="col-xs-4 animation">
                        <a href="#">
                            <img src="images/content/products/ad-1.png" class="img-responsive" alt="Ad"></a>
                    </div>
                    <div class="col-xs-4 animation">
                        <a href="#">
                            <img src="images/content/products/ad-2.png" class="img-responsive" alt="Ad"></a>
                    </div>
                    <div class="col-xs-4 animation">
                        <a href="#">
                            <img src="images/content/products/ad-3.png" class="img-responsive" alt="Ad"></a>
                    </div>
                </div>

            </div>
        </section>
        <!-- End Ads -->
        <!-- End Latest Blogs -->

    </div>
    <script type="text/javascript">
        $(document).ready(function () {
           // debugger;
          //  function ShowCurrentTime() {
           // PageMethods.GETPRODUCTS("test", OnSuccess);
           // }
            function OnSuccess(response, userContext, methodName) {
               // debugger;
                document.getElementById('owl-product-slide').innerHTML = "<div class='col-md-12 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'><span class='product-thumb-info-act'><a href='shop-cart-full.html' class='add-to-cart-product'> <span><i class='fa fa-shopping-cart'></i></span></a> </span><img alt='' class='img-responsive' src='PRODUCT_IMG/AUTOMATIC.png'></div><div class='product-thumb-info-content'><span class='price pull-right'>29.99 USD</span><h4><a href='shop-product-detail2.html'>Denim shirt</a></h4> <span class='item-cat'><small><a href='#'>Jackets</a></small></span></div></div></div></div><div class='col-md-12 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'><span class='product-thumb-info-act'><a href='shop-cart-full.html' class='add-to-cart-product'> <span><i class='fa fa-shopping-cart'></i></span></a> </span><img alt='' class='img-responsive' src='PRODUCT_IMG/AUTOMATIC.png'></div><div class='product-thumb-info-content'><span class='price pull-right'>29.99 USD</span><h4><a href='shop-product-detail2.html'>Denim shirt</a></h4> <span class='item-cat'><small><a href='#'>Jackets</a></small></span></div></div></div></div><div class='col-md-12 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'><span class='product-thumb-info-act'><a href='shop-cart-full.html' class='add-to-cart-product'> <span><i class='fa fa-shopping-cart'></i></span></a> </span><img alt='' class='img-responsive' src='PRODUCT_IMG/AUTOMATIC.png'></div><div class='product-thumb-info-content'><span class='price pull-right'>29.99 USD</span><h4><a href='shop-product-detail2.html'>Denim shirt</a></h4> <span class='item-cat'><small><a href='#'>Jackets</a></small></span></div></div></div></div>";
            }
        });
    
                    
       
    </script>
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
    <script src="bootstrap/datetimepicker/js/moment.js"></script>
    <script src="bootstrap/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
    <!-- Theme Initializer -->
    <script src="js/theme.plugins.js"></script>
    <script src="js/theme.js"></script>

    <!-- Style Switcher -->
    <script type="text/javascript" src="style-switcher/js/switcher.js"></script>
    <%--<script type="text/javascript">
        RS(function () {
            RS('#datetimepicker1').datetimepicker();

        });
    </script>--%>
    
</asp:Content>
