﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" EnableEventValidation="false"%>
<%@ Register src="Controls/HotelController.ascx" tagname="hotel" tagprefix="uc1" %>
<%@ Register src="Controls/TourGuides.ascx" tagname="tour" tagprefix="uc2" %>
<%@ Register src="Controls/CabController.ascx" tagname="cab" tagprefix="uc3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.css" rel="stylesheet">
        
    <link href='http://fonts.googleapis.com/css?family=Belgrano|Courgette&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
        
        <link href="css/bootshape.css" rel="stylesheet">
    <style>
        .hotel{
            height:500px;
            width:auto;
            overflow-y:scroll;

        }
        .cab{
            height:500px;
            width:auto;
            overflow-y:scroll;

        }
        .tour{
            height:500px;
            width:auto;
            overflow-y:scroll;

        }
    </style>

    
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
    <!-- Navigation bar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Plan Your Tour</a>
        </div>
        <nav role="navigation" class="collapse navbar-collapse navbar-right">
          <ul class="navbar-nav nav">
                
            
            <li><asp:LinkButton ID="LinkButton2" runat="server">Sign UP</asp:LinkButton>
                </li>
            <li><asp:LinkButton ID="LinkButton1" runat="server">Login</asp:LinkButton></li>
                
          </ul>
        </nav>
      </div>
    </div><!-- End Navigation bar -->

    <!-- Slide gallery -->
    <div class="jumbotron">
      <div class="container">
        <div class="col-xs-12">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
          </ol>
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="img/carousel1.jpg" alt="">
              <div class="carousel-caption">
              </div>
            </div>
            <div class="item">
              <img src="img/carousel2.jpg" alt="">
              <div class="carousel-caption">
              </div>
            </div>
            <div class="item">
              <img src="img/carousel3.jpg" alt="">
              <div class="carousel-caption">
              </div>
            </div>
          </div>
          <!-- Controls -->
          <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
          </a>
          <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
          </a>
        </div>
        </div>
      </div><!-- End Slide gallery -->
    </div>

    <!-- Thumbnails -->
    <div class="container thumbs">
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img src="img/pic1.jpg" alt="" class="img-responsive">
          <div class="caption">
            <h3 class="">Hotels</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
            <div class="hotel">
              </div>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img src="img/pic2.jpg" alt="" class="img-responsive">
          <div class="caption">
            <h3 class="">Tour Guide</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
            <div class="tour">
         
              <uc2:tour ID="tour" runat="server" /></div>              
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img src="img/pic3.jpg" alt="" class="img-responsive">
          <div class="caption">
            <h3 class="">Cab Services</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
            <div class="cab">
              <uc3:cab ID="cab" runat="server" /></div>
          </div>
        </div>
      </div>
    </div><!-- End Thumbnails -->
    <!-- Content -->
    <div class="container">
      <div class="">
        <h3 class="">Welcome</h3>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>
      </div>
      
    </div><!-- End Content -->
    <!-- Footer -->
      
    <script src="js/jquery.js"></script>
    
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootshape.js"></script>

        </div>
        </form>
  </body>
</html>