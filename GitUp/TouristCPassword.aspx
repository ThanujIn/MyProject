<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TouristCPassword.aspx.cs" Inherits="TouristCPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 215px;
        }
        .auto-style3 {
            width: 98px;
        }
        .auto-style4 {
            width: 215px;
            height: 26px;
        }
        .auto-style5 {
            width: 98px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    Old Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" class="form-control" CssClass="form" runat="server" Width="144px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" class="form-control" Text="Cancel" OnClick="Button2_Click" Width="68px" />
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" >
                    New Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" CssClass="form" class="form-control" runat="server" Width="145px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style5"><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Must be 3 to 10 Characters" Font-Size="Medium" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{3,10}$" ValidationGroup="a"></asp:RegularExpressionValidator>
                  
</td>
                <td class="auto-style6">  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" Font-Size="Medium" ForeColor="Red" ErrorMessage="Please Enter Password...!" ValidationGroup="a"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Confirm Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" Width="148px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" class="form-control" Text="Change Password" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Must Match" ForeColor="Red" ControlToCompare="TextBox2" ControlToValidate="TextBox3"></asp:CompareValidator>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
