<%@ Page Title="" Language="C#" MasterPageFile="~/_Layout.Master" AutoEventWireup="true" CodeBehind="blog-single.aspx.cs" Inherits="Zoyal.blog_single" %>
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
		
			<!-- Begin page top -->
			<section class="page-top-md">
				<div class="container">
					<div class="page-top-in">
						<h2><span>Blog single</span></h2>
					</div>
				</div>
			</section>
			<!-- End page top -->
			
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="blog-posts single-post">
							<article class="post post-large blog-single-post">
								<h3>Standard Post</h3>
								<div class="post-meta">
									<span>By <a href="#">John Doe</a> in <a href="#">Blog</a></span>
									<span><i class="fa fa-clock-o"></i> July 9, 2014</span>
									<span><i class="fa fa-comment-o"></i> <a href="#">212 Comments</a></span>
								</div>
								<div class="post-image single">
									<img class="img-responsive" src="images/content/blog/demo-3.jpg" alt="Blog">
								</div>
								<div class="post-content">
									<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
									<p>Nulla facilisi. Cras convallis vel lectus sed convallis. Duis nec accumsan diam. Vestibulum blandit tempus nulla. Suspendisse consectetur cursus elit, et scelerisque ligula hendrerit id. Maecenas ultrices porta nunc, quis consectetur risus. Morbi non metus eget nibh vulputate tincidunt. Nullam dui quam, suscipit a ligula a, posuere sagittis magna. Pellentesque vitae dolor et nunc lobortis vestibulum. Suspendisse potenti. Pellentesque cursus purus vitae libero hendrerit congue. Aenean erat elit, aliquet at mi quis, sollicitudin sollicitudin libero.</p>
									<blockquote>
										<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
									</blockquote>
									<h1>h1. Heading 1</h1>
									<p>Sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
									<ul>
										<li>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit</li>
										<li>Sed ut perspiciatis unde omnis iste natus error </li>
										<li>Qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</li>
									</ul>
									<h2>h2. Heading 2</h1>
									<p>Sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
									<h3>h3. Heading 3</h3>
									<p>Sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
									
								</div>
								<div class="post-tags">
									<strong>Tags:</strong> <a href="#">fashion</a> <a href="#">new styles</a>
								</div>
								<ul class="post-action">
									<li class="btn-pre"><a href="#">Riff Raff Eats Fried Okra With Oprah on 'Dolce &amp; Gabbana’</a></li>
									<li class="btn-next"><a href="#">Watch Drunk Riff Raff Freestyle About Failed Hoop Dreams for 10 Minutes</a></li>
								</ul>
								<div class="related-posts">
									<h3>You might also like</h3>
									<div class="row">
										<div class="col-xs-4">
											<article class="post">
												<div class="post-image">
													<a href="blog-single.html"><img class="img-responsive" src="images/content/blog/demo-7.jpg" alt="Blog"></a>
												</div>
												<h4><a href="blog-single.html">Paris Fashion Week: the stellar finale to the A/W 2014 season</a></h4>
											</article>
										</div>
										<div class="col-xs-4">
											<article class="post">
												<div class="post-image">
													<a href="blog-single.html"><img class="img-responsive" src="images/content/blog/demo-6.jpg" alt="Blog"></a>
												</div>
												<h4><a href="blog-single.html">Rendez-Vous: Roger Vivier's demi-couture collection </a></h4>
											</article>
											
										</div>
										<div class="col-xs-4">
											<article class="post">
												<div class="post-image">
													<a href="blog-single.html"><img class="img-responsive" src="images/content/blog/demo-5.jpg" alt="Blog"></a>
												</div>
												<h4><a href="blog-single.html">Haute happenings: Tales from the Paris Couture Spring/Summer 2014 season</a></h4>
											</article>
											
										</div>
									</div>
								</div>
								<div class="post-block post-comments clearfix">
									<h3>3 Comments</h3>
									<ul class="comments">
										<li>
											<div class="comment">
												<div class="img-circle"> <img class="avatar" width="50" alt="" src="images/content/blog/avatar.png"> </div>
												<div class="comment-block">
													<span class="comment-by"> <strong>Frank Reman</strong></span>
													<span class="date"><small><i class="fa fa-clock-o"></i> January 12, 2013</small></span>
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae, gravida pellentesque urna varius vitae. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
													<a href="#"><small><i class="fa fa-reply"></i> Reply</small></a>
												</div>
											</div>
											<ul class="comments reply">
												<li>
													<div class="comment">
														<div class="img-circle"> <img class="avatar" width="50" alt="" src="images/content/blog/avatar.png"> </div>
														<div class="comment-block">
															<span class="comment-by"> <strong>Frank Reman</strong></span>
															<span class="date"><small><i class="fa fa-clock-o"></i> July 11, 2014</small></span>
															<p>Nam viverra euismod odio, gravida pellentesque urna varius vitae, gravida pellentesque urna varius vitae. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
															<a href="#"><small><i class="fa fa-reply"></i> Reply</small></a>
														</div>
													</div>
												</li>
												<li>
													<div class="comment">
														<div class="img-circle"> <img class="avatar" width="50" alt="" src="images/content/blog/avatar.png"> </div>
														<div class="comment-block">
															<span class="comment-by"> <strong>Frank Reman</strong></span>
															<span class="date"><small><i class="fa fa-clock-o"></i> July 11, 2014</small></span>
															<p>Gravida pellentesque urna varius vitae. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
															<a href="#"><small><i class="fa fa-reply"></i> Reply</small></a>
														</div>
													</div>
												</li>
											</ul>
										</li>
										<li>
											<div class="comment">
												<div class="img-circle"> <img class="avatar" width="50" alt="" src="images/content/blog/avatar.png"> </div>
												<div class="comment-block">
													<span class="comment-by"> <strong>Frank Reman</strong></span>
													<span class="date"><small><i class="fa fa-clock-o"></i> July 11, 2014</small></span>
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae, gravida pellentesque urna varius vitae</p>
													<a href="#"><small><i class="fa fa-reply"></i> Reply</small></a>
												</div>
											</div>
										</li>
										<li>
											<div class="comment">
												<div class="img-circle"> <img class="avatar" width="50" alt="" src="images/content/blog/avatar.png"> </div>
												<div class="comment-block">
													<span class="comment-by"> <strong>Frank Reman</strong></span>
													<span class="date"><small><i class="fa fa-clock-o"></i> July 11, 2014</small></span>
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
													<a href="#"><small><i class="fa fa-reply"></i> Reply</small></a>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div class="post-block post-leave-comment">
									<h3>Leave a comment</h3>
									<p><small>Make sure you enter the (*) required information where indicated. HTML code is not allowed.</small></p>
									<form action="#" type="post">
										<div class="form-group">
											<div class="row">
												<div class="col-xs-6">
													<label>Your name *</label>
													<input type="text" value="" maxlength="100" class="form-control" name="name" id="name">
												</div>
												<div class="col-xs-6">
													<label>Your email address *</label>
													<input type="email" value="" maxlength="100" class="form-control" name="email" id="email">
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-sm-12">
													<label>Website URL</label>
													<input type="text" value="" maxlength="100" class="form-control" name="url" id="url">
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-sm-12">
													<label>Comment *</label>
													<textarea maxlength="5000" rows="10" class="form-control" name="comment" id="comment"></textarea>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<input type="submit" value="Post Comment" class="btn btn-sm" data-loading-text="Loading...">
											</div>
										</div>
									</form>
								</div>
							</article>
							
						</div>
					</div>
					<div class="col-md-3">
						<aside class="sidebar">
							<aside class="block">
								<form class="form-inline form-search form-search2" class="form-inline" role="form">
									<div class="form-group">
										<label class="sr-only" for="textsearch2">Enter text search</label>
										<input type="text" class="form-control input-lg" id="textsearch2" placeholder="Enter text search">
									</div>
									<button type="submit" class="btn"><i class="fa fa-search"></i></button>
								</form>
							</aside>
							<aside class="block blk-ads">
								<h4>Ads</h4>
								<img class="img-responsive" src="images/content/blog/side-ad.png" alt="Blog">
							</aside>
							<aside class="block tabs">
								<ul class="nav nav-tabs second-tabs">
									<li class="active"><a href="#popularPosts" data-toggle="tab"><i class="icon icon-star"></i> Popular</a></li>
									<li><a href="#latestPosts" data-toggle="tab">Latest</a></li>
									<li><a href="#latestComments" data-toggle="tab">Comments</a></li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane active" id="popularPosts">
										<ul class="list-unstyled simple-post-list">
											<li>
												<div class="post-image">
													<a href="blog-single.html"><img class="img-responsive" src="images/content/blog/demo-thumb-7.jpg" alt="Blog"></a>
												</div>
												<div class="post-info">
													<a href="blog-single.html">New York Fashion Week A/W 2014: women swear</a>
													<div class="post-meta">
														<i class="fa fa-eye"></i> 113 views
													</div>
												</div>
											</li>
											<li>
												<div class="post-image">
													<a href="blog-single.html"><img class="img-responsive" src="images/content/blog/demo-thumb-6.jpg" alt="Blog"></a>
												</div>
												<div class="post-info">
													<a href="blog-single.html">Retail Directory 2014: the finest new openings across</a>
													<div class="post-meta">
														<i class="fa fa-eye"></i> 113 views
													</div>
												</div>
											</li>
											<li>
												<div class="post-image">
													<a href="blog-single.html"><img class="img-responsive" src="images/content/blog/demo-thumb-5.jpg" alt="Blog"></a>
												</div>
												<div class="post-info">
													<a href="blog-single.html">Paris Fashion Week: the stellar finale to the A/W</a>
													<div class="post-meta">
														<i class="fa fa-eye"></i> 113 views
													</div>
												</div>
											</li>
											<li>
												<div class="post-image">
													<a href="blog-single.html"><img class="img-responsive" src="images/content/blog/demo-thumb-4.jpg" alt="Blog"></a>
												</div>
												<div class="post-info">
													<a href="blog-single.html">Excepteur sint occaecat cupidatat non proident</a>
													<div class="post-meta">
														<i class="fa fa-eye"></i> 113 views
													</div>
												</div>
											</li>
											<li>
												<div class="post-image">
													<a href="blog-single.html"><img class="img-responsive" src="images/content/blog/demo-thumb-3.jpg" alt="Blog"></a>
												</div>
												<div class="post-info">
													<a href="blog-single.html">Sed ut perspiciatis unde omnis iste natus error sit</a>
													<div class="post-meta">
														<i class="fa fa-eye"></i> 113 views
													</div>
												</div>
											</li>
										</ul>
									</div>
									<div class="tab-pane" id="latestPosts">
										<ul class="list-unstyled simple-post-list">
											<li>
												<div class="post-image">
													<a href="blog-single.html"><img class="img-responsive" src="images/content/blog/demo-thumb-3.jpg" alt="Blog"></a>
												</div>
												<div class="post-info">
													<a href="blog-single.html">New York Fashion Week A/W 2014: womenswear collections</a>
													<div class="post-meta">
														<i class="fa fa-eye"></i> 113 views
													</div>
												</div>
											</li>
											<li>
												<div class="post-image">
													<a href="blog-single.html"><img class="img-responsive" src="images/content/blog/demo-thumb-4.jpg" alt="Blog"></a>
												</div>
												<div class="post-info">
													<a href="blog-single.html">Retail Directory 2014: the finest new openings across the globe</a>
													<div class="post-meta">
														<i class="fa fa-eye"></i> 113 views
													</div>
												</div>
											</li>
											<li>
												<div class="post-image">
													<a href="blog-single.html"><img class="img-responsive" src="images/content/blog/demo-thumb-5.jpg" alt="Blog"></a>
												</div>
												<div class="post-info">
													<a href="blog-single.html">Paris Fashion Week: the stellar finale to the A/W 2014 season</a>
													<div class="post-meta">
														<i class="fa fa-eye"></i> 113 views
													</div>
												</div>
											</li>
											<li>
												<div class="post-image">
													<a href="blog-single.html"><img class="img-responsive" src="images/content/blog/demo-thumb-6.jpg" alt="Blog"></a>
												</div>
												<div class="post-info">
													<a href="blog-single.html">Excepteur sint occaecat cupidatat non proident</a>
													<div class="post-meta">
														<i class="fa fa-eye"></i> 113 views
													</div>
												</div>
											</li>
											<li>
												<div class="post-image">
													<a href="blog-single.html"><img class="img-responsive" src="images/content/blog/demo-thumb-1.jpg" alt="Blog"></a>
												</div>
												<div class="post-info">
													<a href="blog-single.html">Sed ut perspiciatis unde omnis iste natus error sit</a>
													<div class="post-meta">
														<i class="fa fa-eye"></i> 113 views
													</div>
												</div>
											</li>
										</ul>
									</div>
									<div class="tab-pane" id="latestComments">
										<ul class="simple-post-list">
											<li>
												<div class="post-info">
													<a href="blog-single.html">New York Fashion Week A/W 2014: womenswear collections</a>
													<div class="post-meta">
														<i class="fa fa-eye"></i> 113 views
													</div>
												</div>
											</li>
											<li>
												<div class="post-info">
													<a href="blog-single.html">Retail Directory 2014: the finest new openings across the globe</a>
													<div class="post-meta">
														<i class="fa fa-eye"></i> 113 views
													</div>
												</div>
											</li>
											<li>
												<div class="post-info">
													<a href="blog-single.html">Paris Fashion Week: the stellar finale to the A/W 2014 season</a>
													<div class="post-meta">
														<i class="fa fa-eye"></i> 113 views
													</div>
												</div>
											</li>
											<li>
												<div class="post-info">
													<a href="blog-single.html">Excepteur sint occaecat cupidatat non proident</a>
													<div class="post-meta">
														<i class="fa fa-eye"></i> 113 views
													</div>
												</div>
											</li>
											<li>
												<div class="post-info">
													<a href="blog-single.html">Sed ut perspiciatis unde omnis iste natus error sit</a>
													<div class="post-meta">
														<i class="fa fa-eye"></i> 113 views
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</aside>
							<aside class="block blk-ads">
								<h4>Featured Video</h4>
								<div class="video">
									<iframe src="http://player.vimeo.com/video/28614006?color=0088CC" width="100%" height="169" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe>
								</div>
							</aside>
							<aside class="block blk-ads">
								<h4>Tags</h4>
								<ul class="list-inline tagclouds">
									<li><a href="#">Image</a></li>
									<li><a href="#">Features</a></li>
									<li><a href="#">Gallery</a></li>
									<li><a href="#">Post Formats</a></li>
									<li><a href="#">Typography</a></li>
									<li><a href="#">WooCommerce</a></li>
									<li><a href="#">Shortcodes</a></li>
									<li><a href="#">Best Sellers</a></li>
									<li><a href="#">Slideshow</a></li>
								</ul>
							</aside>
							<aside class="block blk-ads">
								<h4>Flickr Photos</h4>
								<ul class="list-thumb-gallery">
									<li><a href="#"><img class="img-responsive" src="images/content/blog/demo-thumb-1.jpg" alt="Photo"></a></li>
									<li><a href="#"><img class="img-responsive" src="images/content/blog/demo-thumb-2.jpg" alt="Photo"></a></li>
									<li><a href="#"><img class="img-responsive" src="images/content/blog/demo-thumb-3.jpg" alt="Photo"></a></li>
									<li><a href="#"><img class="img-responsive" src="images/content/blog/demo-thumb-4.jpg" alt="Photo"></a></li>
									<li><a href="#"><img class="img-responsive" src="images/content/blog/demo-thumb-5.jpg" alt="Photo"></a></li>
									<li><a href="#"><img class="img-responsive" src="images/content/blog/demo-thumb-6.jpg" alt="Photo"></a></li>
								</ul>
							</aside>
						</aside>
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
</asp:Content>
