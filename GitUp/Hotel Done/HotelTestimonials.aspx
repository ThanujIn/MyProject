<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotelTestimonials.aspx.cs" Inherits="Testimonials" EnableEventValidation="false" validateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Five Star Hotel | Testimonials</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<script src="maxheight.js" type="text/javascript"></script>
<!--[if lt IE 7]>
<link href="ie_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, #header .row-2, #header .nav li a, #content, .gallery li');</script>
<![endif]-->
</head>
<body id="page5" onload="new ElementMaxHeight();">
        <form id="Form1" runat="server">

<div id="main">
  <!-- header -->
 <div id="header" class="small">
    <div class="row-1">
      <div class="wrapper">
      </div>
    </div>
    <div class="row-2 alt">
      <div class="indent">
        <!-- header-box-small begin -->
        <div class="header-box-small">
          <div class="inner">
            <ul class="nav">
              <li>
                  <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home Page</asp:LinkButton></li>
              <li>
                  <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Services</asp:LinkButton></li>
              <li>
                  <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Testimonils</asp:LinkButton></li>
              <li>
                  <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Booking</asp:LinkButton></li>
            </ul>
          </div>
        </div>
        <!-- header-box-small end -->
      </div>
    </div>
  </div>
  <!-- content -->
  <div id="content">
    <div class="gallery">
      <ul>
        <li><a href="#"><img alt="" src="images/2page-img1.jpg" /></a></li>
        <li><a href="#"><img alt="" src="images/2page-img2.jpg" /></a></li>
        <li><a href="#"><img alt="" src="images/2page-img3.jpg" /></a></li>
        <li><a href="#"><img alt="" src="images/2page-img4.jpg" /></a></li>
        <li><a href="#"><img alt="" src="images/2page-img5.jpg" /></a></li>
        <li><a href="#"><img alt="" src="images/2page-img6.jpg" /></a></li>
      </ul>
    </div>
    <div class="indent">
      <h2>Customers’ testimonials</h2>
                       
                        <table class="auto-style1">
                            <tr>
                                <td>Name</td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="nametxt" runat="server" Width="185px" Text="Anonymous" OnTextChanged="nametxt_TextChanged"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TouristManagerConnectionString %>" SelectCommand="SELECT * FROM [BookedBy]"></asp:SqlDataSource>
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
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Username") %>'></asp:Label></br>
                                    <asp:Label ID="Label4" runat="server" Text="Comment"></asp:Label>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("HotelComment") %>'></asp:Label></br></br>
                                </ItemTemplate>
                            </asp:Repeater>
 
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserConnectionString %>" SelectCommand="SELECT * FROM [HotelComment]"></asp:SqlDataSource>
 
                       
      <div class="button1">
          <asp:Button ID="Button1" runat="server" Text="SUBMIT YOUR OWN TESTIMONIAL" /></div>
    </div>
  </div>
  <!-- footer -->
  <div id="footer">
    
    <div class="wrapper">
      <div class="fright">Designed by TEAM PRO5</div>
    </div>
  </div>
</div>
            </form>
</body>
</html>
