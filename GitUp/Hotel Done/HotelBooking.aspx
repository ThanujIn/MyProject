<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotelBooking.aspx.cs" Inherits="Booking" EnableEventValidation="false" validateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Five Star Hotel | Booking</title>
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
  <div id="header">
    <div class="row-1">
      
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
          <div class="inner">
            <h3>Reservation:</h3>
            <form action="#" id="reservation-form">
              <fieldset>
                <div class="field">
                  <label>Check In:   </label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="126px" TextMode="Date"></asp:TextBox>
                </div>
                <div class="field">
                  <label>Check Out:</label>
                    <asp:TextBox ID="TextBox2" runat="server" Width="126px" TextMode="Date"></asp:TextBox>
                </div>
                <div class="field"> Persons: &nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" Width="126px" TextMode="Number"></asp:TextBox>
                  &nbsp; &nbsp; &nbsp; &nbsp; Single Rooms:&nbsp;
                  <asp:TextBox ID="TextBox3" runat="server" Width="126px" TextMode="Number"></asp:TextBox>
                  &nbsp; &nbsp; &nbsp; &nbsp; Double Rooms:&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Width="126px" TextMode="Number"></asp:TextBox>
                  &nbsp; &nbsp; &nbsp; &nbsp; Economic Rooms:&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" Width="126px" TextMode="Number" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                </div>
                <div class="button">
                    <asp:Button ID="Button3" runat="server" Text="Check Availability" Width="99px" OnClick="Button3_Click" style="height: 26px" />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br/>
                  <asp:Label ID="Label6" runat="server" Text=""></asp:Label><br/>
                  <asp:Label ID="Label7" runat="server" Text=""></asp:Label><br/>
                    <asp:Label ID="Label8" runat="server" Text=""></asp:Label><br/>
                  </div>
              </fieldset>
            </form>
          </div>
        </div>
        <!-- box end -->
      </div>
      <div class="content">
        <div class="indent">
          <h2>Your Booking Details</h2>
          
          <div class="extra-wrap">
            <h3 class="alt-top">Check the details you entered and confirm booking</h3>
            <dl class="contacts-list">
              <dd>No of Persons : <asp:Label ID="Label2" runat="server" Text="Persons"></asp:Label></dd>
              <dd>No of Single Rooms :<asp:Label ID="Label3" runat="server" Text="Single"></asp:Label></dd>
              <dd>No of Double Rooms :<asp:Label ID="Label4" runat="server" Text="Double"></asp:Label></dd>
              <dd>No of Economic Rooms :<asp:Label ID="Label5" runat="server" Text="Economic"></asp:Label></dd>
            </dl>
              <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
              <asp:Button ID="Button4" runat="server" Text="Confirm Booking" Visible="False" OnClick="Button4_Click" />
          </div>
          <div class="clear"></div>
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
