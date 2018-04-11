<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.master" AutoEventWireup="true" CodeFile="MainProfile.aspx.cs" Inherits="MainProfile" EnableEventValidation="false"%>
<%@ Register src="Controls/LatestUpdates.ascx" tagname="LatestUpdates" tagprefix="uc1" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<uc1:LatestUpdates ID="LatestUpdate" runat="server" />
</asp:Content>