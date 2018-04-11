<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Holiday - Contact</title>
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

    </head>
<body>
    				<form id="form1" runat="server">

	<!-- Header -->
	<div class="tm-header">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-4 col-sm-3 tm-site-name-container">
					<a href="#" class="tm-site-name">BOOK ME ON YOUR Holiday</a>	
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
					<h1 class="tm-banner-title">Your <span class="tm-yellow-text">Special</span> Tour</h1>
					<p class="tm-banner-subtitle">For Upcoming Holidays</p>
				</div>
				<img src="img/banner-3.jpg" alt="Banner 3" />	
		    </li>		    
		  </ul>
		</div>	
	</section>

	<!-- gray bg -->	
	<section class="container tm-home-section-1" id="more">
		<div class="row">
			<!-- slider -->
			<div class="flexslider effect2 effect2-contact tm-contact-box-1">
				<ul class="slides">
					<li>
						<img src="img/world-map.png" alt="image" class="contact-image" />
						<div class="contact-text">
							<h2 class="slider-title">WELCOME TO MY GUIDE PAGE</h2>
							<h3 class="slider-subtitle">I'm here to guide you safe to the destination with tons of information</h3>
							<p class="slider-description">Hi welcome to my tour guide page..Here you can chat with me, get my contact information, see my details and ratings, all the testionials I received..<br/><br/>Let's start journey</p>
							
						</div>			      
					</li>
				</ul>
			</div>
		</div>
	</section>		
	
	<!-- white bg -->
	<section class="section-padding-bottom">
		<div class="container">
			<div class="row">
						
			</div>
			<div class="row">
				<!-- contact form -->
					<div class="col-lg-6 col-md-6">
					<div class="col-lg-6 col-md-6 tm-contact-form-input">
                        <div class="form-group">
                            <asp:Image ID="Image1" runat="server" Height="143px" Width="140px" />
						</div>
						<div class="form-group">
                            <asp:Label ID="Label5" runat="server" Text="Name" ForeColor="Red"></asp:Label>
                            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
						</div>
						<div class="form-group">
                            <asp:Label ID="Label6" runat="server" Text="Gender" ForeColor="Red"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
						</div>
						<div class="form-group">
                            <asp:Label ID="Label7" runat="server" Text="Nationality" ForeColor="Red"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text="Nationality"></asp:Label>
						</div>
						<div class="form-group">
                            <asp:Label ID="Label8" runat="server" Text="Discription" ForeColor="Red"></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text="Discription"></asp:Label>
						</div>
						            
					</div>
			</div>			
		        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserConnectionString %>" SelectCommand="SELECT * FROM [BookedBy]"></asp:SqlDataSource>
		</div>
	</section>
	<footer class="tm-black-bg">
				
	</footer>
	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>					<!-- bootstrap js -->
	<script type="text/javascript" src="js/jquery.flexslider-min.js"></script>			<!-- flexslider js -->
	<script type="text/javascript" src="js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
	<script>
		/* Google map
      	------------------------------------------------*/
      	var map = '';
      	var center;

      	function initialize() {
	        var mapOptions = {
	          	zoom: 14,
	          	center: new google.maps.LatLng(37.769725, -122.462154),
	          	scrollwheel: false
        	};
        
	        map = new google.maps.Map(document.getElementById('google-map'),  mapOptions);

	        google.maps.event.addDomListener(map, 'idle', function() {
	          calculateCenter();
	        });
        
	        google.maps.event.addDomListener(window, 'resize', function() {
	          map.setCenter(center);
	        });
      	}

	    function calculateCenter() {
	        center = map.getCenter();
	    }

	    function loadGoogleMap(){
	        var script = document.createElement('script');
	        script.type = 'text/javascript';
	        script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' + 'callback=initialize';
	        document.body.appendChild(script);
	    }
	
      	// DOM is ready
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

		  	// Flexslider
		  	$('.flexslider').flexslider({
		  		controlNav: false,
		  		directionNav: false
		  	});

		  	// Google Map
		  	loadGoogleMap();
		  });
	</script>
                        </form>
</body>
</html>
