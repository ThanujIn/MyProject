<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fashion Login Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/Styles.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> <!-- Font-Awesome-Icons-CSS -->

<!-- //Custom Theme files -->
<!-- web font --> 
<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
<!-- //web font --> 
</head>
<body>
	<form id="form1" runat="server">
	<div class="main">
		<h1>&nbsp;Login Form</h1>
		<div class="main-w3lsrow">
			<!-- login form -->
			<div class="login-form login-form-left"> 
				<div class="agile-row">
					<h2>Login to your profile</h2>
					<span class="fa fa-lock"></span>
					<div class="clear"></div>
					<div class="login-agileits-top"> 	
						<div>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                <asp:ListItem Selected="True">Select a Role</asp:ListItem>
                                <asp:ListItem>Tourist</asp:ListItem>
                                <asp:ListItem>Hotel</asp:ListItem>
                                <asp:ListItem>Tour Guide</asp:ListItem>
                                <asp:ListItem>Cab Service</asp:ListItem>
                            </asp:DropDownList></div>
                        <br />
                                                 
                            <asp:TextBox ID="txtLoginEmail" runat="server" class="name" name="user name" Placeholder="Enter Email address" required=""></asp:TextBox>
                            <asp:TextBox ID="txtLoginPassword" runat="server" class="password" name="Password" Placeholder="Password" required="" TextMode="Password"></asp:TextBox>
							
							<asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
						
					</div> 
					<div class="login-agileits-bottom"> 
						<h6><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">I Don't have an Account</asp:LinkButton>
                            </h6>
					</div> 

				</div>  
			</div>  
		</div>	
		
					<div class="login-agileits-bottom1"> 
						<h3>or login with</h3>
					</div> 
					<div class="social_icons agileinfo">
						<ul class="top-links">
									<li><a href="#" class="facebook"><i class="fa fa-facebook"></i>facebook</a></li>
									
								</ul>
					</div>
		
	 
	</div>	
	 </form>
</body>
</html>

