<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.master" AutoEventWireup="true" CodeFile="bookingHotel.aspx.cs" Inherits="bookingHotel" %>
<%@ Register src="Controls/bookingHotels.ascx" tagname="hotel" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>Hotel Booking
        <div>
            <uc1:hotel ID="hotel" runat="server" />  
        </div>
    </div>
</asp:Content>

