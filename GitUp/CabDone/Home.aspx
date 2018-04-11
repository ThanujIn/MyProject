<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="CabService.CabServiceForm" EnableEventValidation="false" validateRequest="false"%>

<!DOCTYPE html>
<script runat="server">

    
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
		<meta charset="utf-8">
		<meta name = "format-detection" content = "telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="booking/css/booking.css">
		<link rel="stylesheet" href="css/camera.css">
		<link rel="stylesheet" href="css/owl.carousel.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/script.js"></script>
		<script src="js/superfish.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.mobilemenu.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/owl.carousel.js"></script>
		<script src="js/camera.js"></script>
		<style type="text/css">
            .auto-style1 {
                display: inline;
                float: left;
                position: relative;
                margin-left: 15px;
                margin-right: 15px;
                left: 0px;
                top: 0px;
            }
        </style>
		<!--[if (gt IE 9)|!(IE)]><!-->
		<script src="js/jquery.mobile.customized.min.js"></script>
		<!--<![endif]-->
		<script src="booking/js/booking.js"></script>
		<script>
			$(document).ready(function(){
				jQuery('#camera_wrap').camera({
					loader: false,
					pagination: false ,
					minHeight: '444',
					thumbnails: false,
					height: '28.28125%',
					caption: true,
					navigation: true,
					fx: 'mosaic'
				});
				$().UItoTop({ easingType: 'easeOutQuart' });
			});
		</script>
		<!--[if lt IE 8]>
			<div style=' clear: both; text-align:center; position: relative;'>
				<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
					<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
				</a>
			</div>
			<![endif]-->
		<!--[if lt IE 9]>
			<script src="js/html5shiv.js"></script>
			<link rel="stylesheet" media="screen" href="css/ie.css">
		<![endif]-->
	</head>
	<body class="page1" id="top">
        <form id="form4" runat="server">
		<div class="main">
<!--==============================header=================================-->
			<header>
				<div class="menu_block ">
					<div class="container_12">
						<div class="grid_12">
							<nav class="horizontal-nav full-width horizontalNav-notprocessed">
								<ul class="sf-menu">
									<li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton></li>
									<li><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">About</asp:LinkButton></li>
									<li><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Cars</asp:LinkButton></li>
									<li><asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Contact</asp:LinkButton></li>
                                </ul>
                                    
							</nav>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="container_12">
					<div class="grid_12">
                        <asp:Label ID="Label2" runat="server" Text="Name" Font-Size="XX-Large"></asp:Label><br/><br/><br/>
                    <asp:Label ID="Label3" runat="server" Text="Contact" Font-Size="XX-Large"></asp:Label>
						<h1>
							<a href="index.html">
                                <asp:Image ID="Image1" runat="server" Height="100px" Width="193px" ImageUrl="" />
							</a>
						</h1>
                        
					</div>
				</div>
				<div class="clear"></div>
			</header>
			<div class="slider_wrapper ">
				<div id="camera_wrap" class="">
					<div data-src="images/slide.jpg" ></div>
					<div data-src="images/slide1.jpg" ></div>
					<div data-src="images/slide2.jpg"></div>
				</div>
			</div>
			<div class="container_12">
				<div class="grid_4">
					<div class="banner">
						<div class="maxheight">
							<div class="banner_title">
								<img src="images/icon1.png" alt="">
								<div class="extra_wrapper">Fast&amp;
									<div class="color1">Safe</div>
								</div>
							</div>
							
							<a href="#" class="fa fa-share-square"></a>
						</div>
					</div>
				</div>
				<div class="grid_4">
					<div class="banner">
						<div class="maxheight">
							<div class="banner_title">
								<img src="images/icon2.png" alt="">
								<div class="extra_wrapper">Best
									<div class="color1">Prices</div>
								</div>
							</div>
							
							<a href="#" class="fa fa-share-square"></a>
						</div>
					</div>
				</div>
				<div class="grid_4">
					<div class="banner">
						<div class="maxheight">
							<div class="banner_title">
								<img src="images/icon3.png" alt="">
								<div class="extra_wrapper">Package
									<div class="color1">Delivery</div>
								</div>
							</div>
							
							<a href="#" class="fa fa-share-square"></a>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="c_phone">
				<div class="container_12">
					<div class="auto-style1">
						<div class="fa fa-phone"></div><asp:Label ID="Label1" runat="server" Text="Contact No"></asp:Label>
						<span>ORDER NOW!</span>
					</div>
					<div class="clear"></div>
				</div>
			</div>
<!--==============================Content=================================-->
			<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - April 07, 2014!</div>
				<div class="container_12">
					<div class="grid_5">
						<h3>Booking Form</h3>
							<div class="fl1">	
								<div class="tmInput">
                                    <div class="tmInput">
                                    <p>Am I ready for a tour?</p>
                                        <asp:Label ID="Label4" runat="server"></asp:Label>
                                        <br/>
								</div>
                                    <asp:Label ID="Label5" runat="server" Text="No Of days" Visible="False"></asp:Label>
                                    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox><br/>
                                    <asp:Label ID="Label6" runat="server" Text="From" Visible="False"></asp:Label>
                                    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
								</div>
							</div>
							<div class="clear"></div>
                        <asp:Label ID="Label7" runat="server" Text="Time" Visible="False"></asp:Label>
							<div class="tmInput">
                                <asp:TextBox ID="TextBox5" runat="server" TextMode="Time" Visible="False"></asp:TextBox>
							</div>
							<div class="clear"></div>
                        <asp:Label ID="Label8" runat="server" Text="Date" Visible="False"></asp:Label>
							<label class="tmDatepicker">
                                <asp:TextBox ID="TextBox6" runat="server" TextMode="Date" Visible="False"></asp:TextBox>
                        
							</label>
							<div class="clear"></div>
							<div class="tmRadio">
								
							</div>
							<div class="clear"></div>
							<div class="fl1 fl2">
                                <asp:Label ID="Label9" runat="server" Text="Number of Persons" Visible="False"></asp:Label>
                                <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
							</div>
							
							<div class="clear"></div>
                        <asp:Button ID="Button2" runat="server" Text="Submit Booking Request" OnClick="Button2_Click" Visible="False" />
						
					</div>
					<div class="grid_6 prefix_1">
						<a href="index2.html" class="type"><img src="images/page1_img1.jpg" alt=""><span class="type_caption">Economy</span></a>
						<a href="index2.html" class="type"><img src="images/page1_img2.jpg" alt=""><span class="type_caption">Standard</span></a>
						<a href="index2.html" class="type"><img src="images/page1_img3.jpg" alt=""><span class="type_caption">Lux</span></a>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			
		</footer>
		<script>
			$(function (){
				$('#bookingForm').bookingForm({
					ownerEmail: '#'
				});
			})
			$(function() {
				$('#bookingForm input, #bookingForm textarea').placeholder();
			});
		</script>
            </form>
	</body>
</html>