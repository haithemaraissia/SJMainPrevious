﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="TestStartingTheProcess.aspx.vb" Inherits="Authenticated_Customer_Paypal_TestStartingTheProcess" %>
<%@ Register TagPrefix="UpperNavigationButtons" TagName="NavigationButtons" Src="../../../common/CustomerTemplateMainUpperButtons.ascx" %>
<%@ Register TagPrefix="LowerNavigationButtons" TagName="NavigationButtons" Src="../../../common/TemplateMainLowerButtons.ascx" %>
<%@ Register Assembly="System.Web.Ajax" Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title id="Title1" runat="server" title="<%$ Resources:Resource, HomeTitle %>"></title>
    <script type="text/javascript" src="../../../scripts/jquery-1.5.2.js"></script>
    <link rel="stylesheet" href="../../../_assets/css/TemplateStyleSheet.css" type="text/css"
        media="screen" />
    <meta property="og:url" content="https://www.yoursidejob.com" />
    <link rel="canonical" href="https://www.yoursidejob.com" />
</head>
<body>
    <form id="form1" runat="server">
    <UpperNavigationButtons:NavigationButtons ID="MainUpperNavigationButtons" runat="server">
    </UpperNavigationButtons:NavigationButtons>
    <asp:AjaxScriptManager ID="ScriptManager1" runat="server">
    </asp:AjaxScriptManager>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        Project ID</div>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <div class="cleaner">
    </div>
    <LowerNavigationButtons:NavigationButtons ID="MainLowerNavigationButtons" runat="server" />
    </form>
</body>
</html>
