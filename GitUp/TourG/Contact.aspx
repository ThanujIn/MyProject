<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Holiday - Tours</title>
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
                          <form id="abc" runat="server">

  	<!-- Header -->
  	<div class="tm-header">
  		<div class="container">
  			<div class="row">
  				<div class="col-lg-6 col-md-4 col-sm-3 tm-site-name-container">
  					<a href="#" class="tm-site-name">B</a><a href="#"><span class="auto-style1">ook me ON YOUR HOLIDAY</span></a>	
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
                                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">About Me</asp:LinkButton></li>
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
					<h1 class="tm-banner-title">Find <span class="tm-yellow-text">Tour</span> Programs</h1>
					<p class="tm-banner-subtitle">For Your Destinations</p>
				</div>
		      <img src="img/banner-2.jpg" />
		    </li>
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title">Fresh Air</h1>
					<p class="tm-banner-subtitle">Wonderful Destinations</p>
				</div>
		      <img src="img/banner-3.jpg" />
		    </li>
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title">Welcome to the paradise</h1>
					<p class="tm-banner-subtitle">Nice Background</p>
				</div>
		      <img src="img/banner-1.jpg" />
		    </li>
		  </ul>
		</div>			
	</section>

	<!-- gray bg -->	
	<section class="container tm-home-section-1" id="more">
		<div class="row">
			</section>		
	
	<!-- white bg -->
	<section class="tm-white-bg section-padding-bottom">
		<div class="container">
			<div class="row">
								
			</div>
            <div class="row">
				<div>
                    <div><asp:Image ID="Image1" runat="server" Height="222px" Width="223px" /></div>
                   <div><div><h3>Name</h3></div><div>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div><br/><br/>
                <div><h3>Email</h3></div><div>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></div><br/><br/>
                <div><h3>Want to contact me easily?</h3></div><div>
                    <asp:Button ID="Button1" runat="server" Text="Chat With Me" />
			           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TouristManagerConnectionString %>" SelectCommand="SELECT * FROM [BookedBy]"></asp:SqlDataSource>
			</div>
			<div class="row">
		
			</div>
			<div class="row">
				<div class="col-lg-12">
					<p class="home-description">
					</p>					
				</div>
			</div>	
		</div>
	</section>
	<footer class="tm-black-bg">
		
	</footer>
	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
  	<script type="text/javascript" src="js/moment.js"></script>							<!-- moment.js -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>					<!-- bootstrap js -->
	<script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>	<!-- bootstrap date time picker js, http://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
   	<script type="text/javascript" src="js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
	<script>
		// HTML document is loaded. DOM is ready.
		$(function() {

			$('#hotelCarTabs a').click(function (e) {
			  e.preventDefault()
			  $(this).tab('show')
			})

        	$('.date').datetimepicker({
            	format: 'MM/DD/YYYY'
            });
            $('.date-time').datetimepicker();
           
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
		
		// Load Flexslider when everything is loaded.
		$(window).load(function() {	  		
		    $('.flexslider').flexslider({
			    controlNav: false
		    });
	  	});
	</script>
                              </form>
 </body>
 </html>
