<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotelHome.aspx.cs" Inherits="Home" EnableEventValidation="false" validateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Five Star Hotel</title>
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
<body id="page1" onload="new ElementMaxHeight();">
    <form id="Form1" runat="server">
<div id="main">
  <!-- header -->
  <div id="header">
    <div class="row-1">
      <div class="wrapper">
        <div class="logo">
          <h1> <asp:Label ID="Label2" runat="server" Text="Hotel Name"></asp:Label></h1>
          <em>Hotel</em> </div>
        <div class="phones"> <asp:Label ID="Label1" runat="server" Text="Contact No"></asp:Label></div>
      </div>
    </div>
    <div class="row-2">
      <div class="indent">
        <!-- header-box begin -->
        <div class="header-box">
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
        <!-- header-box end -->
      </div>
    </div>
  </div>
  <!-- content -->
  <div id="content">
    <div class="wrapper">
      <div class="aside maxheight">
        <!-- box begin -->
        <div class="box maxheight">
          <div class="inner" style="height: 328px">
            <script>
                function initMap() {
                    var location = { lat: -25.363, lng: 131.044 };
                    var map = new google.maps.Map(document.getElementById("map"), {
                        zoom: 4,
                        center: location
                    }); 
                }
            </script>
              <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBXzBkaGviSNffYq5mLrhZLSCad5NOPHXQ&callback=initMap"
                  async defer></script>
          </div>
        </div>
        <!-- box end -->
      </div>
      <div class="content">
        <div class="indent">
          <h2>We are happy to welcome you!</h2>
          <img class="img-indent png" alt="" src="images/1page-img1.png" />
          <p class="alt-top">Come alone or bring your family with you, stay here for a night or for weeks, stay here while on business trip or at some kind of conference - either way our hotel is the best possible variant.</p>
          Feel free to contact us anytime in case you have any questions or concerns.
            <p><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><p>
          <div class="clear"></div>
          <div class="line-hor"></div>
          <div class="wrapper line-ver">
            
            
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- footer -->
  <div id="footer">
   
    <div class="wrapper">
    </div>
  </div>
</div>
        </form>
</body>
</html>
