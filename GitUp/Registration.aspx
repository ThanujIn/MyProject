<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="Style.css" rel="stylesheet" />

     <style>
        @import url('https://fonts.googleapis.com/css?family=Bitter|Crete+Round|Pacifico');
         .auto-style1 {
             display: inline-block;
             font-size: 1.3vw;
             font-weight: 400;
             line-height: 1.42857143;
             text-align: center;
             white-space: nowrap;
             vertical-align: middle;
             -ms-touch-action: manipulation;
             touch-action: manipulation;
             cursor: pointer;
             -webkit-user-select: none;
             -moz-user-select: none;
             -ms-user-select: none;
             user-select: none;
             border-radius: 4px;
             font-family: "Crete Round";
             color: white;
             border-style: solid;
             border-color: inherit;
             border-width: 1px;
             padding: 6px 12px;
             background-color: #12a312;
             background-image: none;
         }
         .auto-style2 {
             margin-bottom: 103;
         }
    </style>
</head>
<body>
   <form id="form1" runat="server" class="auto-style2">
      <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>  <div class="col-md-10 col-mid-offset-1">
         <section>
            <div class="container">
                <div class="inner1">
                    <br />
                    <br />
                    <h6><asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Medium" OnClick="LinkButton1_Click">Home</asp:LinkButton></h6>
                    <br />
                     <h6><asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Medium" OnClick="LinkButton1_Click">Login</asp:LinkButton></h6>
                    <br />
                </div>
                <div class="inner2">
                    <h3>Sign up</h3>

                    <asp:TextBox ID="txturname" placeholder="Username" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="Medium" ForeColor="Red" ControlToValidate="txturname" ErrorMessage="Please Enter Username...!" ValidationGroup="a"></asp:RequiredFieldValidator>
                    
                    <asp:TextBox ID="txtemail" placeholder="E-mail" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Font-Size="Medium" ForeColor="Red" ControlToValidate="txtemail" runat="server" ErrorMessage="Please Enter Email...!" ValidationGroup="a"></asp:RequiredFieldValidator>
                   <div class="col-md-10 col-mid-offset-1">
                      <asp:DropDownList ID="role" class="form-control" runat="server" Height="30px" Width="259px" AutoPostBack="True">
                          <asp:ListItem Selected="True">Select a Role</asp:ListItem>
                          <asp:ListItem>Tourist</asp:ListItem>
                          <asp:ListItem>Hotel Manager</asp:ListItem>
                          <asp:ListItem>Tour Guide</asp:ListItem>
                          <asp:ListItem>Cab Service</asp:ListItem>
                    </asp:DropDownList></div>
                    <br />
                    <br />
                    <div class="col-md-10 col-mid-offset-1">
                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" Height="30px" Width="259px" AutoPostBack="True">
                        <asp:ListItem Selected="True">Select a Country</asp:ListItem>
                        <asp:ListItem>SriLanka</asp:ListItem>
                        <asp:ListItem>Australia</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                    </asp:DropDownList></div>
                    <br />

                     <asp:TextBox ID="txtpasswd" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpasswd" ErrorMessage="Password Must be 3 to 10 Characters" Font-Size="Medium" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{3,10}$" ValidationGroup="a"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpasswd" Font-Size="Medium" ForeColor="Red" ErrorMessage="Please Enter Password...!" ValidationGroup="a"></asp:RequiredFieldValidator>

                    <br />

                    <asp:TextBox ID="txtcops" placeholder="Retype Password" TextMode="Password" runat="server"></asp:TextBox>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpasswd" ControlToValidate="txtcops" ErrorMessage="Password must match" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:CompareValidator> 
                   <div>Add a Profile Picture <asp:FileUpload ID="FileUpload1" runat="server" /></div><br />

                    <asp:Button ID="btnRegister" runat="server" CssClass="auto-style1" Text="Sign Up" ValidationGroup="a" Height="39px" OnClick="btnRegister_Click1" />

                   
                </div>
            </div>
        </section></div>
    </form>
</body>
</html>
