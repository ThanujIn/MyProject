<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CabPC.aspx.cs" Inherits="CabPC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body style="background:url(images/ABC.jpg)" height: 100%;">
    <form id="form1" runat="server">
            <h1 style="color:yellow""><b>Change Password</b></h1>

        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="height: 26px" Text="Go back to Admin Page" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Old Password" EnableViewState="False" ForeColor="#FFCC00"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtOP" runat="server" TextMode="Password" ></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="New Password" EnableViewState="False" ForeColor="#FFCC00"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNP" runat="server"  EnableViewState="False" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Re Type New Password" EnableViewState="False" ForeColor="#FFCC00"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRNP" runat="server" EnableViewState="False" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNP" ControlToValidate="txtRNP" ErrorMessage="Passwords Doesn't Match" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save New Password" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
