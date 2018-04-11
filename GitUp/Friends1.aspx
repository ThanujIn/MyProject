<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.master" EnableEventValidation="false"  AutoEventWireup="true" CodeFile="Friends1.aspx.cs" Inherits="Friends1" %>
<%@ Register src="Controls/Friends.ascx" tagname="Friends1" tagprefix="uc1" %>
<%@ Register src="Controls/FriendRequests.ascx" tagname="FriendRequests1" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
  
               <uc2:FriendRequests1 ID="FriendRequests" runat="server" />
         
                <asp:Label ID="Label1" runat="server" Text="Your Friends " 
                    Font-Names="Franklin Gothic Medium"></asp:Label>
               
               <uc1:Friends1 ID="Friends" runat="server" />
</asp:Content>

