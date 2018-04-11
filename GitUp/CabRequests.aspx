<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CabRequests.aspx.cs" Inherits="CabRequests" EnableEventValidation="false" validateRequest="false"  %>
 <%@ Register src="Controls/CabRequest.ascx" tagname="cab" tagprefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>Pending Booking Requests</div>
    <uc1:cab ID="cab" runat="server" />
    </div>
    </form>
</body>
</html>
