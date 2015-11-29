<%@ Page Title="" Language="C#" MasterPageFile="~/_Layout.Master" AutoEventWireup="true" CodeBehind="index2.aspx.cs" Inherits="Zoyal.index2" %>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    		
		<!-- Begin Main -->
		<div role="main" class="main">
			<!-- Begin Main Slide -->
			<section class="main-slide">
				<div class="container">
					<div id="owl-second-demo" class="owl-carousel main-demo second-demo">
						<div class="item"><img src="images/content/slides/home-slider1.jpg" class="img-responsive" alt="Photo">
							<div class="item-caption">
								<div class="item-caption-inner">
									<div class="item-caption-wrap">
										<p class="item-cat"><a href="#">Fall/Winter 2014</a></p>
										<h2>Up to 50% off<br>on selected items</h2>
										<a href="#" class="btn btn-white hidden-xs">Shop Now</a>
									</div>
								</div>
							</div>
						</div>
						<div class="item"><img src="images/content/slides/home-slider2.jpg" class="img-responsive" alt="Photo">
							<div class="item-caption">
								<div class="item-caption-inner">
									<div class="item-caption-wrap">
										<p class="item-cat"><a href="#">Top</a></p>
										<h2>25% off<br>for pink swim</h2>
										<a href="#" class="btn btn-white hidden-xs">Shop Now</a>
									</div>
								</div>
							</div>
						</div>
						<div class="item"><img src="images/content/slides/home-slider3.jpg" class="img-responsive" alt="Photo">
							<div class="item-caption">
								<div class="item-caption-inner">
									<div class="item-caption-wrap">
										<p class="item-cat"><a href="#">Panties</a></p>
										<h2>Free shipping<br>on RS50 plus RS20</h2>
										<a href="#" class="btn btn-white hidden-xs">Shop Now</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- End Main Slide -->
			
			<!-- Begin Ads -->
			<section class="collections">
				<div class="container">
					<div class="row">
						<div class="col-xs-4 collect-item animation">
							<a href="#" class="collect-item-thumb"><img src="images/content/products/collect-1.jpg" class="img-responsive" alt="Ad"></a>
							<h2>T-shirts for all your summer</h2>
							<p>Elementum vel augue eu, congue accumsan nulla. Curabitur blandit lectus nunc, ac egestas quam facilisis sit amet.</p>
							<a href="#" class="btn">Read More</a>
						</div>
						<div class="col-xs-4 collect-item animation">
							<a href="#" class="collect-item-thumb"><img src="images/content/products/collect-2.jpg" class="img-responsive" alt="Ad"></a>
							<h2>Womens wear collections</h2>
							<p>Vestibulum metus diam, elementum vel augue eu, congue accumsan nulla. Curabitur blandit lectus nunc, ac egestas quam facilisis.</p>
							<a href="#" class="btn">Read More</a>
						</div>
						<div class="col-xs-4 collect-item animation">
							<a href="#" class="collect-item-thumb"><img src="images/content/products/collect-3.jpg" class="img-responsive" alt="Ad"></a>
							<h2>Accesories LookBook 2014</h2>
							<p>Curabitur blandit lectus nunc, ac egestas quam facilisis sit amet. Vestibulum metus diam, elementum vel congue accumsan nulla. </p>
							<a href="#" class="btn">Read More</a>
						</div>
					</div>
				</div>
			</section>
			<!-- End Ads -->
			
			<!-- Begin Lookbook Women -->
			<section id="lookbook">
				<div class="container">
					<div id="bg-red" class="lookbook">
						<h2>Free Shipping on orders over RS75</h2>
						<p>Etiam aliquam risus ante, quis ultrices enim porta a. Integer et dolor sit amet enim feugiat faucibus. Donec sit amet egestas orci. Proin facilisis mi ornare turpis sollicitudin; vel rutrum est viverra. Vestibulum hendrerit egestas semper.</p>
					</div>
				</div>
			</section>
			<!-- End Lookbook Women -->

			<!-- Begin Top Selling -->
			<section class="products-slide">
				<div class="container">
					<h2 class="title"><span>Latest Products</span></h2>
					<div class="row">
						<div id="owl-product-slide" class="owl-carousel product-slide">
							<div class="col-md-12 animation">
								<div class="item product">
									<div class="product-thumb-info">
										
										<div class="product-thumb-info-image">
											<span class="product-thumb-info-act">
												<a href="javascript:void(0);" data-toggle="modal" data-target=".quickview-wrapper" class="view-product">
													<span><i class="fa fa-external-link"></i></span>
												</a>
												<a href="shop-cart-full.html" class="add-to-cart-product">
													<span><i class="fa fa-shopping-cart"></i></span>
												</a>
											</span>
											<img alt="" class="img-responsive" src="images/content/products/product-1.jpg">
										</div>
										
										<div class="product-thumb-info-content">
											<span class="price pull-right">29.99 USD</span>
											<h4><a href="shop-product-detail2.html">Denim shirt</a></h4>
											<span class="item-cat"><small><a href="#">Jackets</a></small></span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12 animation">
								<div class="item product">
									<div class="product-thumb-info">
										<div class="product-thumb-info-image">
											<span class="product-thumb-info-act">
												<a href="javascript:void(0);" data-toggle="modal" data-target=".quickview-wrapper" class="view-product">
													<span><i class="fa fa-external-link"></i></span>
												</a>
												<a href="shop-cart-full.html" class="add-to-cart-product">
													<span><i class="fa fa-shopping-cart"></i></span>
												</a>
											</span>
											<img alt="" class="img-responsive" src="images/content/products/product-2.jpg">
										</div>
										<div class="product-thumb-info-content">
											<span class="price pull-right">25.99 USD</span>
											<h4><a href="shop-product-detail2.html">Poplin shirt with fine pleated bands</a></h4>
											<span class="item-cat"><small><a href="#">Shirts</a></small></span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12 animation">
								<div class="item product">
									<a href="shop-product-detail1.html">
										<span class="bag bag-hot">Hot</span>
									</a>
									<div class="product-thumb-info">
										<div class="product-thumb-info-image">
											<span class="product-thumb-info-act">
												<a href="javascript:void(0);" data-toggle="modal" data-target=".quickview-wrapper" class="view-product">
													<span><i class="fa fa-external-link"></i></span>
												</a>
												<a href="shop-cart-full.html" class="add-to-cart-product">
													<span><i class="fa fa-shopping-cart"></i></span>
												</a>
											</span>
											<img alt="" class="img-responsive" src="images/content/products/product-3.jpg">
										</div>
										<div class="product-thumb-info-content">
											<span class="price pull-right">25.99 USD</span>
											<h4><a href="shop-product-detail2.html">Contrasting shirt</a></h4>
											<span class="item-cat"><small><a href="#">Stock clearance</a></small></span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12 animation">
								<div class="item product">
									<div class="product-thumb-info">
										<div class="product-thumb-info-image">
											<span class="product-thumb-info-act">
												<a href="javascript:void(0);" data-toggle="modal" data-target=".quickview-wrapper" class="view-product">
													<span><i class="fa fa-external-link"></i></span>
												</a>
												<a href="shop-cart-full.html" class="add-to-cart-product">
													<span><i class="fa fa-shopping-cart"></i></span>
												</a>
											</span>
											<img alt="" class="img-responsive" src="images/content/products/product-4.jpg">
										</div>
										<div class="product-thumb-info-content">
											<span class="price pull-right">59.99 USD</span>
											<h4><a href="shop-product-detail2.html">Waistcoat with top stitching</a></h4>
											<span class="item-cat"><small><a href="#">Blazers</a></small></span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12 animation">
								<div class="item product">
									<a href="shop-product-detail1.html">
										<span class="bag bag-cool">Cool</span>
									</a>
									<div class="product-thumb-info">
										<div class="product-thumb-info-image">
											<span class="product-thumb-info-act">
												<a href="javascript:void(0);" data-toggle="modal" data-target=".quickview-wrapper" class="view-product">
													<span><i class="fa fa-external-link"></i></span>
												</a>
												<a href="shop-cart-full.html" class="add-to-cart-product">
													<span><i class="fa fa-shopping-cart"></i></span>
												</a>
											</span>
											<img alt="" class="img-responsive" src="images/content/products/product-5.jpg">
										</div>
										<div class="product-thumb-info-content">
											<span class="price pull-right">39.99 USD</span>
											<h4><a href="shop-product-detail2.html">Loose fit ripped jeans</a></h4>
											<span class="item-cat"><small><a href="#">Jeans</a></small></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- End Top Selling -->
			
			<!-- Begin Parallax -->
			<section class="pi-parallax parallax-shop" data-stellar-background-ratio="0.6">
				<div class="container">
					<div id="owl-text-slide" class="owl-carousel">
						<div class="item">
							<div class="intro">
								<h2>Men’s Fashion and Style</h2>
								<span class="divider"></span>
								<p>Whatever you’re looking for, be it the latest fashion trends, cool outfit ideas or new ways to wear your favourite pieces, we’ve got all the style inspiration you need.</p>
								<a href="#" class="btn btn-white hidden-xs">Shop Now</a>
							</div>
						</div>
						<div class="item">
							<div class="intro">
								<h2>Men’s Fashion and Style 2</h2>
								<span class="divider"></span>
								<p>Whatever you’re looking for, be it the latest fashion trends, cool outfit ideas or new ways to wear your favourite pieces, we’ve got all the style inspiration you need.</p>
								<a href="#" class="btn btn-white hidden-xs">Shop Now</a>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- End Parallax -->
			
			<!-- Begin List Thumbs -->
			<section class="list-thumbs">
				<div class="container">
					<div class="row">
						<div class="col-sm-4 featured animation">
							<h3>Featured</h3>
							<div class="row">
								<div id="owl-featured-slide" class="owl-carousel product-slide product-thumbs-slide">
									<div class="col-md-12">
										<div class="item">
											<ul class="list-unstyled list-thumbs-pro">
												<li class="product">
													<div class="product-thumb-info">
														<div class="product-thumb-info-image">
															<a href="shop-product-detail1.html"><img alt="" width="60" src="images/content/products/product-4.jpg"></a>
														</div>
														
														<div class="product-thumb-info-content">
															<h4><a href="shop-product-detail2.html">Waistcoat with top stitching</a></h4>
															<span class="item-cat"><small><a href="#">Jackets</a></small></span>
															<span class="price">29.99 USD</span>
														</div>
													</div>
												</li>
												<li class="product">
													<div class="product-thumb-info">
														<div class="product-thumb-info-image">
															<a href="shop-product-detail1.html"><img alt="" width="60" src="images/content/products/product-5.jpg"></a>
														</div>
														
														<div class="product-thumb-info-content">
															<h4><a href="shop-product-detail2.html">Poplin shirt with fine pleated bands</a></h4>
															<span class="item-cat"><small><a href="#">Jackets</a></small></span>
															<span class="price">29.99 USD</span>
														</div>
													</div>
												</li>
												<li class="product">
													<div class="product-thumb-info">
														<div class="product-thumb-info-image">
															<a href="shop-product-detail1.html"><img alt="" width="60" src="images/content/products/product-6.jpg"></a>
														</div>
														
														<div class="product-thumb-info-content">
															<h4><a href="shop-product-detail2.html">Contrasting shirt</a></h4>
															<span class="item-cat"><small><a href="#">Jackets</a></small></span>
															<span class="price">29.99 USD</span>
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
									<div class="col-md-12">
										<div class="item">
											<ul class="list-unstyled list-thumbs-pro">
												<li class="product">
													<div class="product-thumb-info">
														<div class="product-thumb-info-image">
															<a href="shop-product-detail1.html"><img alt="" width="60" src="images/content/products/product-24.jpg"></a>
														</div>
														
														<div class="product-thumb-info-content">
															<h4><a href="shop-product-detail2.html">Chain necklace</a></h4>
															<span class="item-cat"><small><a href="#">Accessories</a></small></span>
															<span class="price">29.99 USD</span>
														</div>
													</div>
												</li>
												<li class="product">
													<div class="product-thumb-info">
														<div class="product-thumb-info-image">
															<a href="shop-product-detail1.html"><img alt="" width="60" src="images/content/products/product-23.jpg"></a>
														</div>
														
														<div class="product-thumb-info-content">
															<h4><a href="shop-product-detail2.html">Double chain necklace</a></h4>
															<span class="item-cat"><small><a href="#">Accessories</a></small></span>
															<span class="price">29.99 USD</span>
														</div>
													</div>
												</li>
												<li class="product">
													<div class="product-thumb-info">
														<div class="product-thumb-info-image">
															<a href="shop-product-detail1.html"><img alt="" width="60" src="images/content/products/product-22.jpg"></a>
														</div>
														
														<div class="product-thumb-info-content">
															<h4><a href="shop-product-detail2.html">Zigzag pattern cap</a></h4>
															<span class="item-cat"><small><a href="#">Caps and Hats</a></small></span>
															<span class="price">29.99 USD</span>
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4 bestseller animation">
							<h3>Bestseller</h3>
							<ul class="list-unstyled list-thumbs-pro">
								<li class="product">
									<div class="product-thumb-info">
										<div class="product-thumb-info-image">
											<a href="shop-product-detail1.html"><img alt="" width="60" src="images/content/products/product-10.jpg"></a>
										</div>
										
										<div class="product-thumb-info-content">
											<h4><a href="shop-product-detail2.html">Striped full skirt</a></h4>
											<span class="item-cat"><small><a href="#">Skirts</a></small></span>
											<span class="price">29.99 USD</span>
										</div>
									</div>
								</li>
								<li class="product">
									<div class="product-thumb-info">
										<div class="product-thumb-info-image">
											<a href="shop-product-detail1.html"><img alt="" width="60" src="images/content/products/product-11.jpg"></a>
										</div>
										
										<div class="product-thumb-info-content">
											<h4><a href="shop-product-detail2.html">Structured double-breasted blazer</a></h4>
											<span class="item-cat"><small><a href="#">Outerwear</a></small></span>
											<span class="price">29.99 USD</span>
										</div>
									</div>
								</li>
								<li class="product">
									<div class="product-thumb-info">
										<div class="product-thumb-info-image">
											<a href="shop-product-detail1.html"><img alt="" width="60" src="images/content/products/product-12.jpg"></a>
										</div>
										
										<div class="product-thumb-info-content">
											<h4><a href="shop-product-detail2.html">Sheer overlay dress</a></h4>
											<span class="item-cat"><small><a href="#">Dresses</a></small></span>
											<span class="price">29.99 USD</span>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="col-sm-4 trends animation">
							<h3>Trends</h3>
							<ul class="list-unstyled list-thumbs-pro">
								<li class="product">
									<div class="product-thumb-info">
										<div class="product-thumb-info-image">
											<a href="shop-product-detail1.html"><img alt="" width="60" src="images/content/products/product-7.jpg"></a>
										</div>
										
										<div class="product-thumb-info-content">
											<h4><a href="shop-product-detail2.html">Striped sweater</a></h4>
											<span class="item-cat"><small><a href="#">Stock clearance</a></small></span>
											<span class="price">29.99 USD</span>
										</div>
									</div>
								</li>
								<li class="product">
									<div class="product-thumb-info">
										<div class="product-thumb-info-image">
											<a href="shop-product-detail1.html"><img alt="" width="60" src="images/content/products/product-8.jpg"></a>
										</div>
										
										<div class="product-thumb-info-content">
											<h4><a href="shop-product-detail2.html">Checked shirt with pocket</a></h4>
											<span class="item-cat"><small><a href="#">Shirts</a></small></span>
											<span class="price">29.99 USD</span>
										</div>
									</div>
								</li>
								<li class="product">
									<div class="product-thumb-info">
										<div class="product-thumb-info-image">
											<a href="shop-product-detail1.html"><img alt="" width="60" src="images/content/products/product-9.jpg"></a>
										</div>
										
										<div class="product-thumb-info-content">
											<h4><a href="shop-product-detail2.html">Classic blazer</a></h4>
											<span class="item-cat"><small><a href="#">Outerwear</a></small></span>
											<span class="price">29.99 USD</span>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<ul class="list-inline wp-ads animation">
						<li><i class="fa fa-plane"></i><strong>Delivery worldwide</strong><span>See all conditions</span></li>
						<li><i class="fa fa-refresh"></i><strong>30 days returns</strong><span>For a smooth shopping</span></li>
						<li><i class="fa fa-phone"></i><strong>0123 456 789</strong><span>Contact Customer</span></li>
						<li><i class="fa fa-lock"></i><strong>30 days returns</strong><span>For a smooth shopping</span></li>
						<li><i class="fa fa-question-circle"></i><strong>Shopping Guide</strong><span>Contact Customer</span></li>
					</ul>
				</div>
			</section>
			<!-- End List Thumbs -->
			
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
</asp:Content>
