<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutMe.aspx.cs" Inherits="AboutMe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Holiday - About</title>
<!--
Holiday Template
http://www.templatemo.com/tm-475-holiday
-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">  
  <link href="css/flexslider.css" rel="stylesheet">
  <link href="css/templatemo-style.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">
        .auto-style1 {
            font-family: "Open Sans", sans-serif;
            font-weight: 600;
            font-size: 27px;
            color: #FCDD44;
            text-transform: uppercase;
        }
    </style>

  </head>
  <body class="tm-gray-bg">
  	  <form id="form1" runat="server">
  	<!-- Header -->
  	<div class="tm-header">
  		<div class="container">
  			<div class="row">
  				<div class="col-lg-6 col-md-4 col-sm-3 tm-site-name-container">
  					<a href="#" class="tm-site-name">b</a><a href="#"><span class="auto-style1">OOK ME ON YOUR HOLIDAY</span></a>	
  				</div>
	  			<div class="col-lg-6 col-md-8 col-sm-9">
	  				<div class="mobile-menu-icon">
		              <i class="fa fa-bars"></i>
		            </div>
	  				<nav class="tm-nav">
						<ul>
							<li>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton></li>
							<li>
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Contact</asp:LinkButton></li>
							<li>
                                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">About Us</asp:LinkButton></li>
						</ul>
					</nav>		
	  			</div>				
  			</div>
  		</div>	  	
  	</div>
	
	<!-- Banner -->
	<section class="tm-banner">
		<!-- Flexslider -->
		<div class="flexslider flexslider-banner">
		  <ul class="slides">
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title"><span class="tm-yellow-text">Tour</span> Packages</h1>
					<p class="tm-banner-subtitle">For Your Vacations</p>
				</div>
		      <img src="img/banner-3.jpg" />
		    </li>
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title">Feel free to comment</h1>
					<p class="tm-banner-subtitle">Wonderful Destinations</p>
				</div>
		      <img src="img/banner-2.jpg" />
		    </li>
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title">You are <span class="tm-yellow-text">Warmly</span> Welcommed</h1>
					<p class="tm-banner-subtitle">Nice Surroundings</p>
				</div>
		      <img src="img/banner-1.jpg" />
		    </li>
		  </ul>
		</div>		
	</section>

	<!-- gray bg -->	
	<section class="container tm-home-section-1" id="more">
		<div class="row">
			<!-- slider -->
			<div class="flexslider flexslider-about effect2">
			  <ul class="slides">
			    <li>
			      <img src="img/about-1.jpg" alt="image" />
			      <div class="flex-caption">
			      	<h2 class="slider-title">Welcome To Holiday</h2>
			      	<h3 class="slider-subtitle">Looking for a holiday spending method? You have taken the right decision</h3>
			      	<h3 class="slider-description">Book or contact me any time. Feel free to chat with me</h3>
			      	
			      </div>			      
			    </li>
			    <li>
			      <img src="img/about-1.jpg" alt="image" />
			      <div class="flex-caption">
			      	<h2 class="slider-title">Thank you for choosing us!</h2>
			      	<h3 class="slider-subtitle">Looking for a holiday spending method? You have taken the right decision</h3>
			      	<h3 class="slider-description">Book or contact me any time. Feel free to chat with me</h3>
			      	
			      </div>			      
			    </li>
			    <li>
			      <img src="img/about-1.jpg" alt="image" />
			      <div class="flex-caption">
			      	<h2 class="slider-title">More Programs to come</h2>
			      	<h3 class="slider-subtitle">Book or contact me any time. Feel free to chat with me</h3>
			      	
			      </div>			      
			    </li>
			    <li>
			      <img src="img/about-1.jpg" alt="image" />
			      <div class="flex-caption">
			      	<h2 class="slider-title">Tour and Travel</h2>
			      	<h3 class="slider-subtitle">Looking for a holiday spending method? You have taken the right decision</h3>
			      	<h3 class="slider-description">Book or contact me any time. Feel free to chat with me</h3>
			      			      
			    </li>
			  </ul>
			</div>
		</div>
	
		<div class="section-margin-top about-section">
			<div class="row">				
				<div class="tm-section-header">
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">What you think about Us</h2></div>
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>	
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                     <table class="auto-style1">
                            <tr>
                                <td>Name</td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="nametxt" runat="server" Width="185px" Text="Anonymous"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>Comment</td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="comtxt" runat="server" Height="64px" TextMode="MultiLine" Width="192px"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:Button ID="Button2" runat="server" Text="Add Comment" OnClick="Button1_Click" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Username") %>'></asp:Label>
                                    <br></br>
                                    <asp:Label ID="Label4" runat="server" Text="Comment"></asp:Label>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("HotelComment") %>'></asp:Label>
                                    <br></br>
                                    <br></br>
                                </ItemTemplate>
                            </asp:Repeater>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				</div>
			</div>		
		</div>
	</section>		
	
	<!-- white bg -->
	<section class="tm-white-bg section-padding-bottom">
		<div class="container">
			<div class="row">
				<div class="tm-section-header section-margin-top">
				</div>				
			</div>
			<div class="row">
				<!-- Testimonial -->
				<div class="col-lg-12">
				</div>							
			</div>			
		</div>
	</section>
	<footer class="tm-black-bg">
		<div class="container">
			<div class="row">
			</div>
		</div>		
	</footer>
	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
  	<script type="text/javascript" src="js/bootstrap.min.js"></script>					<!-- bootstrap js -->
  	<script type="text/javascript" src="js/jquery.flexslider-min.js"></script>			<!-- flexslider js -->
  	<script type="text/javascript" src="js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
	<script>
		$(function() {

			// https://css-tricks.com/snippets/jquery/smooth-scrolling/
		  	$('a[href*=#]:not([href=#])').click(function() {
			    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
			      var target = $(this.hash);
			      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
			      if (target.length) {
			        $('html,body').animate({
			          scrollTop: target.offset().top
			        }, 1000);
			        return false;
			      }
			    }
		  	});		  	
		});
		$(window).load(function(){
			// Flexsliders
		  	$('.flexslider.flexslider-banner').flexslider({
			    controlNav: false
		    });
		  	$('.flexslider').flexslider({
		    	animation: "slide",
		    	directionNav: false,
		    	slideshow: false
		  	});
		});
	</script>
      </form>
 </body>
 </html>
