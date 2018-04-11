<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.master" AutoEventWireup="true" CodeFile="bookingCabs.aspx.cs" Inherits="bookingCabs" %>
<%@ Register src="Controls/bookingCab.ascx" tagname="cab" tagprefix="uc1" %>
<%@ Register src="Controls/bookingCabReq.ascx" tagname="cab1" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div> Booking Requests</div>
   <uc2:cab1 ID="cab1" runat="server" />   
    <div> Accepted Bookings</div>
    <uc1:cab ID="cab" runat="server" />     

</asp:Content>