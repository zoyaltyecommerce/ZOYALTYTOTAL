<%@ Page Title="" Language="C#" MasterPageFile="~/_Layout.Master" AutoEventWireup="true" CodeBehind="index3.aspx.cs" Inherits="Zoyal.index3" %>
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
					<div id="owl-third-demo" class="owl-carousel main-demo second-demo">
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
			
			<!-- Begin About -->
			<section class="about">
				<div class="container">
					<div class="short-intro text-center">
						<p><strong>Short introduction about</strong></p>
						<h1>About Flatize</h1>
						<span class="divider bg-color"></span>
						<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. </p>
					</div>
					<div class="row row-narrow">
						<div class="col-sm-6 animation">
							<div class="cat-item">
								<figure>
									<a href="shop-full-width.html"><img class="img-responsive" alt="" src="images/content/products/cat-1.jpg"></a>
									<figcaption>
										<div class="cat-description">
											<h3>Men’s Fashion and Style</h3>
											<a href="#">Read More</a>
										</div>
									</figcaption>
								</figure>
							</div>
						</div>
						<div class="col-xs-6 col-sm-3 animation">
							<div class="cat-item">
								<figure>
									<a href="shop-full-width.html"><img class="img-responsive" alt="" src="images/content/products/cat-2.jpg"></a>
									<figcaption>
										<div class="cat-description">
											<h3>Men’s Fashion</h3>
											<a href="#">Read More</a>
										</div>
									</figcaption>
								</figure>
							</div>
						</div>
						<div class="col-xs-6 col-sm-3 animation">
							<div class="cat-item">
								<figure>
									<a href="shop-full-width.html"><img class="img-responsive" alt="" src="images/content/products/cat-3.jpg"></a>
									<figcaption>
										<div class="cat-description">
											<h3>Women Style</h3>
											<a href="#">Read More</a>
										</div>
									</figcaption>
								</figure>
							</div>
						</div>
					</div>
					<div class="row row-narrow">
						<div class="col-xs-6 col-sm-3 animation">
							<div class="cat-item">
								<figure>
									<a href="shop-full-width.html"><img class="img-responsive" alt="" src="images/content/products/cat-4.jpg"></a>
									<figcaption>
										<div class="cat-description">
											<h3>Fashion and Style</h3>
											<a href="#">Read More</a>
										</div>
									</figcaption>
								</figure>
							</div>
						</div>
						<div class="col-xs-6 animation">
							<div class="cat-item">
								<figure>
									<a href="shop-full-width.html"><img class="img-responsive" alt="" src="images/content/products/cat-5.jpg"></a>
									<figcaption>
										<div class="cat-description">
											<h3>Men’s Shoes</h3>
											<a href="#">Read More</a>
										</div>
									</figcaption>
								</figure>
							</div>
						</div>
						<div class="col-xs-6 col-sm-3 animation">
							<div class="cat-item">
								<figure>
									<a href="shop-full-width.html"><img class="img-responsive" alt="" src="images/content/products/cat-6.jpg"></a>
									<figcaption>
										<div class="cat-description">
											<h3>Watch Style</h3>
											<a href="#">Read More</a>
										</div>
									</figcaption>
								</figure>
							</div>
						</div>
						
					</div>
				</div>
			</section>
			<!-- End About -->
			
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
				</div>
			</section>
			<!-- End List Thumbs -->
			
			<!-- Begin Partners -->
			<section class="partners text-center">
				<div class="container">
					<hr>
					<ul class="list-inline">
						<li>
							<a href="#"><img src="images/content/partners/partner-1.jpg" alt=""></a>
						</li>
						<li>
							<a href="#"><img src="images/content/partners/partner-2.jpg" alt=""></a>
						</li>
						<li>
							<a href="#"><img src="images/content/partners/partner-3.jpg" alt=""></a>
						</li>
						<li>
							<a href="#"><img src="images/content/partners/partner-4.jpg" alt=""></a>
						</li>
						<li>
							<a href="#"><img src="images/content/partners/partner-5.jpg" alt=""></a>
						</li>
					</ul>
				</div>
			</section>
			<!-- End Partners -->
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
