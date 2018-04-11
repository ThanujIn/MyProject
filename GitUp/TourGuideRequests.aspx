<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TourGuideRequests.aspx.cs" Inherits="TourGuideRequests" EnableEventValidation="false" validateRequest="false" %>
<%@ Register src="Controls/tourguiderequests.ascx" tagname="tour" tagprefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>Pending Booking Requests</div>
    <uc1:tour ID="tour" runat="server" />
       
    </div>
    </form>
</body>
</html>
