<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="CabService.Index5" EnableEventValidation="false" validateRequest="false"  %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contacts</title>
		<meta charset="utf-8">
		<meta name = "format-detection" content = "telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/form.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/script.js"></script>
		<script src="js/superfish.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.mobilemenu.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/TMForm.js"></script>
		<script>
			$(document).ready(function(){
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
	<body class="" id="top">
		<div class="main">
<!--==============================header=================================-->
			<header>
				<div class="menu_block ">
					<div class="container_12">
						<div class="grid_12">
							<nav class="horizontal-nav full-width horizontalNav-notprocessed">
								<form id="form1" runat="server">
                                    <nav class="horizontal-nav full-width horizontalNav-notprocessed">
								<ul class="sf-menu">
									<li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton></li>
									<li><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">About</asp:LinkButton></li>
									<li><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Cars</asp:LinkButton></li>									
                                    <li><asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Contact</asp:LinkButton></li>
		
                                </ul>
                                        </nav>
                                    </form>
							</nav>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="container_12">
					<div class="grid_12">
                        <asp:Label ID="Label1" runat="server" Text="Name" Font-Size="XX-Large"></asp:Label><br/>
                        <asp:Label ID="Label2" runat="server" Text="Contact" Font-Size="XX-Large"></asp:Label>
						<h1>
							<a href="index.html">
                                <asp:Image ID="Image1" runat="server" Height="98px" Width="244px" />
							</a>
						</h1>
                        
					</div>
				</div>
				<div class="clear"></div>
			</header>
<!--==============================Content=================================-->
			<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - April 07, 2014!</div>
				<div class="container_12">
					<div class="grid_12">
						<h3>Find Us</h3>
						<div class="map">
							<figure>
								<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d24214.807650104907!2d-73.94846048422478!3d40.65521573400813!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sus!4v1395650655094" style="border:0"></iframe>
							</figure>
						</div>
					</div>
					<div class="grid_5">
						<h3>Contact Info</h3>
						<div class="map">
							<div class="text1 color2"></div>
							<address>
								<dl>
                              <p>Contact me :</p>      <asp:Label ID="Label3" runat="server" Text="Contact No"></asp:Label><br/></br></br>
                               <p>Email me :</p>   <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label><br/>

								</dl>
							</address>
						</div>
					</div>
					<div class="grid_6 prefix_1">
						<h3>Contact Form</h3>
						<form id="form">
							<div class="success_wrapper">
								<div class="success-message">Contact form submitted</div>
							</div>
							<label class="name">
								<input type="text" placeholder="Name:" data-constraints="@Required @JustLetters" />
								<span class="empty-message">*This field is required.</span>
								<span class="error-message">*This is not a valid name.</span>
							</label>
							<label class="email">
								<input type="text" placeholder="E-mail:" data-constraints="@Required @Email" />
								<span class="empty-message">*This field is required.</span>
								<span class="error-message">*This is not a valid email.</span>
							</label>
							<label class="phone">
								<input type="text" placeholder="Phone:" data-constraints="@Required @JustNumbers"/>
								<span class="empty-message">*This field is required.</span>
								<span class="error-message">*This is not a valid phone.</span>
							</label>
							<label class="message">
								<textarea placeholder="Message:" data-constraints='@Required @Length(min=20,max=999999)'></textarea>
								<span class="empty-message">*This field is required.</span>
								<span class="error-message">*The message is too short.</span>
							</label>
							<div>
								<div class="clear"></div>
								<div class="btns">
									<a href="#" data-type="submit" class="btn">Send</a>
									<a href="#" data-type="reset" class="btn">Clear</a>
								</div>
							</div>
						</form>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="f_phone"><span>Call Us:</span> + 1800 559 6580</div>
					<div class="socials">
						<a href="#" class="fa fa-twitter"></a>
						<a href="#" class="fa fa-facebook"></a>
						<a href="#" class="fa fa-google-plus"></a>
					</div>
					<div class="copy">
						<div class="st1">
						<div class="brand">Tour<span class="color1">T</span>axi </div>
						&copy; 2014	| <a href="#">Privacy Policy</a> </div> Website designed by <a href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster.com</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</footer>
	</body>
</html>