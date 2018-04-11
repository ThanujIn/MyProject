<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotelServices.aspx.cs" Inherits="Services" EnableEventValidation="false" validateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Five Star Hotel | Services</title>
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
<body id="page2" onload="new ElementMaxHeight();">
    <form id="Form2" runat="server">
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
                  <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Testimonials</asp:LinkButton></li>
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
    <div class="wrapper">
                
        </div>
              
        <div class="col-1"> <img alt="" src="HotelPhotoes/2page-img12.png" class="extra-img png"/>
              <dl class="list1">
                <dt>Single Rooms</dt>
                <dd>This room is for a single person.
                    The room has 
                            Air Condition, 
                            Perfect ventilation, 
                            Nice view,
                            Good Surrounding
                    and many other facilities.

                </dd>
                <dd><asp:Label ID="LabelA1" runat="server" Text="1"></asp:Label>No of persons per room</dd>
                <dd class="alt"><asp:Label ID="LabelA2" runat="server" Text="1"></asp:Label>Availability</dd>
                <dd class="last"><asp:Label ID="LabelPrice1" runat="server" Text="5000"></asp:Label>Price(Rs):</dd>
              </dl>
            <div class="button">
                  </div>
            </div>
            <div class="col-2"> <img alt="" src="HotelPhotoes/2page-img12.png" class="extra-img png"/>
              <dl class="list1">
                <dt>Double Rooms</dt>
                <dd>This room is for a Two persons.
                    The room has 
                            Air Condition, 
                            Perfect ventilation, 
                            Nice view,
                            Good Surrounding
                    and many other facilities.

                </dd>
                <dd><asp:Label ID="LabelB1" runat="server" Text="1"></asp:Label>No of persons per room</dd>
                <dd class="alt"><asp:Label ID="LabelB2" runat="server" Text="2"></asp:Label>Availability</dd>
                <dd class="last"><asp:Label ID="LabelPrice2" runat="server" Text="10000"></asp:Label>Price(Rs):</dd>
              </dl>
              <div class="button">
                  </div>
            </div>
            <div class="col-3"> <img alt="" src="HotelPhotoes/2page-img13.png" class="extra-img png"/>
              <dl class="list1">
                <dt>Economics Rooms</dt>
                <dd>This room is for a Families.
                    The room has 
                            Air Condition, 
                            Perfect ventilation, 
                            Nice view,
                            Good Surrounding
                    and many other facilities.

                </dd>
                <dd><asp:Label ID="LabelC1" runat="server" Text="1"></asp:Label>No of persons per room</dd>
                <dd class="alt"><asp:Label ID="LabelC2" runat="server" Text="1"></asp:Label>Availability</dd>
                <dd class="last"><asp:Label ID="LabelPrice3" runat="server" Text="15000"></asp:Label>Price(Rs):</dd>
              </dl>
              <div class="button">
                  </div>
            </div>
            <div class="clear"></div>
          </div>
                  </div>

        </div>
      </div>
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
