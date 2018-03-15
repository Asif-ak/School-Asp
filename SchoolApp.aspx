﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SchoolApp.aspx.cs" Inherits="web_SchoolApp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
<title>School App| Home </title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Schooling Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/jquery-ui.css" type='text/css' />
<link rel="stylesheet" href="css/smoothbox.css" type='text/css' />
<!-- //Custom Theme files -->
<!-- js -->
<script src="js/jquery.min.js"></script>
<!-- //js -->
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Gloria+Hallelujah' rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css' />
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
<body>
    <form id="form1" runat="server">
    <script src="js/jquery.vide.min.js"></script>
	<div data-vide-bg="video/srix">
		<div class="center-container">
			<div class="navigation">
				<div class="container">
					<div class="logo">
						<h1><a href="index.html">Schooling</a></h1>
					</div>
					<div class="navigation-right">
						<span class="menu"><img src="images/menu.png" alt=" " /></span>
						<nav class="link-effect-3" id="link-effect-3">
							<ul class="nav1 nav nav-wil">
								<li class="active"><a data-hover="Home" href="index.html">Home</a></li>
								<li><a data-hover="About" href="#about" class="scroll">About</a></li>
								<li><a data-hover="Gallery" href="#gallery" class="scroll">Gallery</a></li>
								<li><a data-hover="Contact" href="#contact" class="scroll">Contact</a></li>
                                <li><a data-hover="Signin" href="/admin/Signin.aspx">Signin</a></li>
							</ul>
						</nav>
							<!-- script-for-menu -->
								<script>
								   $( "span.menu" ).click(function() {
									 $( "ul.nav1" ).slideToggle( 300, function() {
									 // Animation complete.
									  });
									 });
								</script>
							<!-- /script-for-menu -->
					</div>
                    <div class="clearfix"></div>
				</div>
			</div>
            <div class="w3ls_banner_info">
				<div class="container">
					<div class="w3l_banner_logo">
						<h2>S</h2>
					</div>
					<h3>education brings about opportunity, and in turn inspiration</h3>
					<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					<div class="more">
						<a href="#" class="hvr-underline-from-center" data-toggle="modal" data-target="#myModal">Learn More</a>
					</div>
					<!--modal-video-->
					<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									Schooling
									<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
								</div>
								<section>
									<div class="modal-body">
										<img src="images/17.jpg" alt=" " class="img-responsive" />
										<p>Ut enim ad minima veniam, quis nostrum 
											exercitationem ullam corporis suscipit laboriosam, 
											nisi ut aliquid ex ea commodi consequatur? Quis autem 
											vel eum iure reprehenderit qui in ea voluptate velit 
											esse quam nihil molestiae consequatur, vel illum qui 
											dolorem eum fugiat quo voluptas nulla pariatur.
											<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
												esse quam nihil molestiae consequatur.</i></p>
									</div>
								</section>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- about -->
        <div class="about">
		<div class="container">
			<div class="agileits_about_grids">
				<div class="col-md-6 agileits_about_grid_left">
					<h3>What We Offer</h3>
					<p>Duis aute irure dolor in reprehenderit 
						in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
						Excepteur sint occaecat cupidatat non proident, sunt in culpa qui 
						officia deserunt mollit anim id est laborum.</p>
				</div>
				<div class="col-md-6 agileits_about_grid_right">
					<img src="images/16.jpg" alt=" " class="img-responsive" />
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
        <!-- //about -->
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="col-md-4 wthree_banner_bottom_left">
				<img src="images/1.jpg" alt=" " class="img-responsive" />
			</div>
			<div class="col-md-8 wthree_banner_bottom_right">
				<h3>the whole purpose of education is to turn mirrors into windows</h3>
				<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum 
					dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<ol>
					<li>sunt in culpa qui officia deserunt</li>
					<li>Excepteur sint occaecat cupidatat</li>
					<li>irure dolor in reprehenderit</li>
					<li>proident, sunt in culpa qui officia</li>
					<li>deserunt mollit anim id est laborum</li>
					<li>Duis aute irure dolor in reprehen</li>
				</ol>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //banner-bottom -->
        <!-- banner-bottom-image-text -->
	<div id="about" class="banner-bottom-image-text">
		<div class="col-md-8 banner-bottom-image-text-left">
			<h3>Who We Are</h3>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod 
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse 
				cillum dolore eu fugiat nulla pariatur.</p>
			<h4>education is for improving the lives of others and for leaving your
				community and world better than you found it.</h4>
		</div>
		<div class="col-md-4 banner-bottom-image-text-right">
			<img src="images/2.jpg" alt=" " class="img-responsive" />
		</div>
		<div class="clearfix"> </div>
	</div>
<!-- //banner-bottom-image-text -->
        <!-- team-bottom -->
	<div class="team-bottom">
		<div class="container">
			<h3>Reservation for school admission</h3>
			<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis 
				suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur.</p>
			<div class="reservation">
				<div class="w3_book_date">
					<form action="#" method="post">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
						<input class="date" id="datepicker" type="text" name="Date" value="Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Date';}" required="">
					</form>
				</div>
				<div class="w3_working_time">
					<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					<select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
						<option value="null">Time</option>
						<option value="null">10:00 AM - 12:00 PM</option> 
						<option value="null">02:00 PM - 5:00 PM</option>							
					</select>
				</div>
				<div class="w3_working_time w3_working_time1">
					<span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
					<select id="country" onchange="change_country(this.value)" class="frm-field required sect">
						<option value="null">Classes</option>
						<option value="null">Play Class</option> 
						<option value="null">1st Class to 10th Class</option>							
					</select>
				</div>				
				<div class="clearfix"> </div>	
				<form action="#" method="post">
					<input type="submit" value="Submit">
				</form>
			</div>
			<!-- start-date-piker -->
				<script src="js/jquery-ui.js"></script>
				  <script>
						$(function() {
							$( "#datepicker" ).datepicker();
						});
				  </script>
			<!-- //End-date-piker -->
		</div>
	</div>
<!-- //team-bottom -->
        <!-- gallery -->
	<div class="gallery" id="gallery">
		<h3>Photo Gallery</h3>
		<p class="nostrud">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris</p>
		<div class="w3agile_gallery_grids">
			<div class="col-md-3 w3agile_gallery_grid">
				<div class="w3agile_gallery_image">
					<a class="sb" href="images/8.jpg" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum">
						<figure>
							<img src="images/8.jpg" alt="" class="img-responsive" />
							<figcaption>
								<h4>dolore magna aliqua</h4>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
									tempor incididunt ut labore et dolore magna aliqua.
								</p>
							</figcaption>
						</figure>
					</a>
				</div>
			</div>
			<div class="col-md-3 w3agile_gallery_grid">
				<div class="w3agile_gallery_image">
					<a class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum" href="images/9.jpg">
						<figure>
							<img src="images/9.jpg" alt="" class="img-responsive" />
							<figcaption>
								<h4>dolore magna aliqua</h4>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
									tempor incididunt ut labore et dolore magna aliqua.
								</p>
							</figcaption>
						</figure>
					</a>
				</div>
			</div>
			<div class="col-md-3 w3agile_gallery_grid">
				<div class="w3agile_gallery_image">
					<a class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum" href="images/10.jpg">
						<figure>
							<img src="images/10.jpg" alt="" class="img-responsive" />
							<figcaption>
								<h4>dolore magna aliqua</h4>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
									tempor incididunt ut labore et dolore magna aliqua.
								</p>
							</figcaption>
						</figure>
					</a>
				</div>
			</div>
			<div class="col-md-3 w3agile_gallery_grid">
				<div class="w3agile_gallery_image">
					<a class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum" href="images/11.jpg">
						<figure>
							<img src="images/11.jpg" alt="" class="img-responsive" />
							<figcaption>
								<h4>dolore magna aliqua</h4>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
									tempor incididunt ut labore et dolore magna aliqua.
								</p>
							</figcaption>
						</figure>
					</a>
				</div>
			</div>
			<div class="col-md-3 w3agile_gallery_grid">
				<div class="w3agile_gallery_image">
					<a class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum" href="images/12.jpg">
						<figure>
							<img src="images/12.jpg" alt="" class="img-responsive" />
							<figcaption>
								<h4>dolore magna aliqua</h4>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
									tempor incididunt ut labore et dolore magna aliqua.
								</p>
							</figcaption>
						</figure>
					</a>
				</div>
			</div>
			<div class="col-md-3 w3agile_gallery_grid">
				<div class="w3agile_gallery_image">
					<a class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum" href="images/13.jpg">
						<figure>
							<img src="images/13.jpg" alt="" class="img-responsive" />
							<figcaption>
								<h4>dolore magna aliqua</h4>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
									tempor incididunt ut labore et dolore magna aliqua.
								</p>
							</figcaption>
						</figure>
					</a>
				</div>
			</div>
			<div class="col-md-3 w3agile_gallery_grid">
				<div class="w3agile_gallery_image">
					<a class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum" href="images/14.jpg">
						<figure>
							<img src="images/14.jpg" alt="" class="img-responsive" />
							<figcaption>
								<h4>dolore magna aliqua</h4>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
									tempor incididunt ut labore et dolore magna aliqua.
								</p>
							</figcaption>
						</figure>
					</a>
				</div>
			</div>
			<div class="col-md-3 w3agile_gallery_grid">
				<div class="w3agile_gallery_image">
					<a class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum" href="images/15.jpg">
						<figure>
							<img src="images/15.jpg" alt="" class="img-responsive" />
							<figcaption>
								<h4>dolore magna aliqua</h4>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
									tempor incididunt ut labore et dolore magna aliqua.
								</p>
							</figcaption>
						</figure>
					</a>
				</div>
			</div>
		   <div class="clearfix"> </div>
		</div>
		<script type="text/javascript" src="js/smoothbox.jquery2.js"></script>
	</div>
<!-- //gallery -->
        <!-- contact -->
	<div class="contact" id="contact">
		<div class="col-md-6 w3agile_contact_left">
			<h3>Contact Us</h3>
			<p>Excepteur sint occaecat cupidatat non proident, sunt 
				in culpa qui officia deserunt mollit anim id est laborum reprehenderit in voluptate velit esse 
				cillum dolore eu fugiat nulla pariatur.</p>
			<form action="#" method="post">
				<input type="text" name="Name" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
				<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
				<textarea name="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
				<input type="submit" value="Send">
			</form>
		</div>
		<div class="col-md-6 w3agile_contact_right">
			<h3><a href="index.html">Schooling</a></h3>
			<div class="col-xs-6 w3agile_contact_right_agileinfo">
				<h4>Address</h4>
				<p><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>8921 California Long Beach <i>PO Box 8921 202 East Ocean.</i></p>
				<p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>(+) 0983 010 823</p>
				<p><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:info@example.com">info@example.com</a></p>
			</div>
			<div class="col-xs-6 w3agile_contact_right_agileinfo">
				<h4>Follow Us</h4>
				<div class="agileits_social_icons">
					<a href="#" class="icon-button twitter"><i class="icon-twitter"></i><span></span></a>
					<a href="#" class="icon-button facebook"><i class="icon-facebook"></i><span></span></a>
					<a href="#" class="icon-button google-plus"><i class="icon-google-plus"></i><span></span></a>
				</div>
			</div>
			<div class="clearfix"> </div>
			<div class="w3_copy_right">
				<p>© 2016 Schooling. </p>
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
<!-- //contact -->
        <!-- for bootstrap working -->
<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
    </form>
</body>
</html>
