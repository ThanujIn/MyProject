<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.master" AutoEventWireup="true"  CodeFile="AboutMe1.aspx.cs" EnableEventValidation="false"  Inherits="AboutMe1" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
  
    <style>
* {
    box-sizing: border-box;
 
}

input[type=text], select, textarea{
    width: 80%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}
input[type=email], textarea{
    width: 80%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}

select{
     width: 25%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}

label {
    padding: 12px 12px 12px 0;
   display: inline-block;
}

.submit{
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 50px;
  width:auto;
    height:450px;
    
    
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}
.col-100{
    width:100%;


}
#col-100{
    align-self:center;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media (max-width:600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 50px;
    }
}
</style>
    
     <div class="container">
<div class="row">
        <div class="col-100" ><asp:Label runat="server" id="edit" Text="Edit Your Profile" Visible="False"></asp:Label></div> </div>
         <div class="row">
      <div class="col-25">
        <asp:Label runat="server" Text="User Name"></asp:Label>
      </div>
      <div class="col-75">
        <asp:TextBox type="text" ID="TextBox1" runat="server" placeholder="Your name.." ReadOnly="True"></asp:TextBox>

      </div>
    </div>
         <div class="row">
      <div class="col-25">
        <asp:Label runat="server" Text="Email"></asp:Label>
      </div>
      <div class="col-75">
        <asp:TextBox type="text" ID="TextBox2" runat="server" placeholder="Email.." ReadOnly="True" TextMode="SingleLine"></asp:TextBox>

      </div>
    </div>
<div class="row">
      <div class="col-25">
       <asp:Label runat="server" Text="Gender" ></asp:Label>
      </div>
      <div class="col-75">
          <asp:DropDownList ID="gender" runat="server" Visible="False">
              <asp:ListItem Selected="True">Select Gender</asp:ListItem>
              <asp:ListItem>Male</asp:ListItem>
              <asp:ListItem>Female</asp:ListItem>
            
          </asp:DropDownList><asp:Label ID="Label1" runat="server" Text="Gender"></asp:Label>
      </div>
    </div>
<div class="row">
      <div class="col-25">
       <asp:Label runat="server" Text="Country" ></asp:Label>
      </div>
      <div class="col-75">
          <asp:DropDownList ID="country" runat="server" Visible="False">
              <asp:ListItem Selected="True">Select Country</asp:ListItem>
              <asp:ListItem>Australia</asp:ListItem>
              <asp:ListItem>USA</asp:ListItem>
              <asp:ListItem>UK</asp:ListItem>
          </asp:DropDownList><asp:Label ID="Label2" runat="server" Text="Country" Visible="True"></asp:Label>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <asp:Label runat="server" Text="About Me"></asp:Label>
      </div>
      <div class="col-75">
       
          <asp:TextBox ID="TextBox3" placeholder="Write something.." ReadOnly="True" style="height:200px" runat="server" TextMode="MultiLine" ></asp:TextBox>
           </div>
    </div>
          <div class="row">
      <div class="col-25">
        <asp:Label runat="server" Text="Profile Picture" id="profilepic" Visible="False"></asp:Label>
      </div>
      <div class="col-75">
          <asp:FileUpload ID="FileUpload1" runat="server"  Visible="False" />
      </div>
    </div>
<div class="row">
    <div class="col-25"><asp:Button ID="Button1" type="submit" class="submit" runat="server" Text="Save" OnClick="Button1_Click" Visible="False" /></div>
    <div class="col-25"><asp:Button ID="Button2" type="submit" class="submit" runat="server" Text="Edit" OnClick="Button2_Click"  Visible="False" /></div>
    <div class="col-25"><asp:Button ID="Button3" type="submit" class="submit" runat="server" Text="Change Password" OnClick="Button3_Click"  Visible="False" /></div>
    </div>
   
</div>

</asp:Content>

