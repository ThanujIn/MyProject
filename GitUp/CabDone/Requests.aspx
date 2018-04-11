<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Requests.aspx.cs" Inherits="Requests" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserConnectionString2 %>" SelectCommand="SELECT * FROM [Tourist]"></asp:SqlDataSource>
                                                    <asp:Repeater ID="Repeater1" runat="server">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Username") %>' AutoGenerateColumns="true"></asp:Label>
                                                            <br></br>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Nationality") %>' AutoGenerateColumns="true"></asp:Label>
                                                            <br></br>
                                                            <asp:Image ID="Image1" runat="server" Text='<%# Eval("Picture") %>' AutoGenerateColumns="true"/>
                                                            <br></br>
                                                             </ItemTemplate>
                                                    </asp:Repeater>
    </div>
    </form>
</body>
</html>
