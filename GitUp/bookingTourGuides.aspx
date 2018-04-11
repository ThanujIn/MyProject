<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.master" AutoEventWireup="true" CodeFile="bookingTourGuides.aspx.cs" Inherits="bookingTourGuides" EnableEventValidation="false" validateRequest="false"%>
<%@ Register src="Controls/bookingGuide.ascx" tagname="guide" tagprefix="uc1" %>
<%@ Register src="Controls/bookingGuideReq.ascx" tagname="guide1" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div> Booking Requests</div>
    <uc2:guide1 ID="guide1" runat="server" />
    <div> Accepted Bookings</div>
    <uc1:guide ID="guide" runat="server" />     

</asp:Content>

