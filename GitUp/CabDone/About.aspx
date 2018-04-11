<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="CabService.Index2" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About</title>
		<meta charset="utf-8">
		<meta name = "format-detection" content = "telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/script.js"></script>
		<script src="js/superfish.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.mobilemenu.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
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
      <form id="form1" runat="server">
		<div class="main">
<!--==============================header=================================-->
			<header>
				<div class="menu_block">
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
						<h1>
							<a href="index.html">
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
							</a>
						</h1>
					</div>
				</div>
				<div class="clear"></div>
			</header>
<!--==============================Content=================================-->
			<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - April 07, 2014!</div>
				<div class="container_12">
					<div class="grid_7">
						<h3>
                            <asp:Label ID="Label5" runat="server" Text="A Few Words About Us"></asp:Label></h3><br/><br/>
                        <asp:Label ID="Label6" runat="server" Text="Discription" Font-Size="X-Large" ForeColor="#6699FF"></asp:Label>
						
						<div class="extra_wrapper">
						</div>
					<div class="clear"></div>
					<div class="grid_12">
						<h3 class="h3__ind1">Testimonials</h3>
					</div>
					<div class="grid_4">
                                                <table class="auto-style1">
                                                    <tr>
                                                        <td>Name</td>
                                                        <td class="auto-style2">
                                                            <asp:TextBox ID="nametxt" runat="server" Width="185px" Text="Anonymous" OnTextChanged="nametxt_TextChanged"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
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
                                                            <asp:Button ID="Button1" runat="server" Text="Add Comment" OnClick="Button1_Click" />
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
                                                            <b><asp:Label ID="Label2" runat="server" Text='<%# Eval("Username") %>' AutoGenerateColumns="true"></asp:Label></b>
                                                            <br>
                                                            </br>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CabComment") %>' AutoGenerateColumns="true"></asp:Label>
                                                            <br>
                                                            </br>
                                                            <br>
                                                            </br>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserConnectionString %>" SelectCommand="SELECT * FROM [CabComment]"></asp:SqlDataSource>
 
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="f_phone"><span>Call Us:a>
					gned by <a href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster.com</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</footer>
                                            								</form>

	</body>
</html>