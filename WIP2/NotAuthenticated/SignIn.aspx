<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SignIn.aspx.vb" Inherits="SignIn" %>

<%@ Register TagPrefix="UpperNavigationButtons" TagName="NavigationButtons" Src="../common/TemplateMainUpperButtons.ascx" %>
<%@ Register TagPrefix="LowerNavigationButtons" TagName="NavigationButtons" Src="../common/TemplateMainLowerButtons.ascx" %>
<%@ Register Assembly="System.Web.Ajax" Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title id="Title1" runat="server" title="<%$ Resources:Resource, HomeTitle %>"></title>
    <script type="text/javascript" src="../scripts/jquery-1.5.2.js"></script>
    <link rel="stylesheet" href="../_assets/css/TemplateStyleSheet.css" type="text/css"
        media="screen" />
    <meta property="og:url" content="https://www.yoursidejob.com" />
    <link rel="canonical" href="https://www.yoursidejob.com" />
    <script type="text/javascript">
        function fireanimation() {
            document.getElementById('LoadingPanel').style.visibility = 'visible';
            $find('ModalPopupExtender10').show();
            document.body.style.overflow = 'visible';

        }
    </script>
</head>
<body>
    <form id="SignInForm" runat="server">
    <UpperNavigationButtons:NavigationButtons ID="MainUpperNavigationButtons" runat="server">
    </UpperNavigationButtons:NavigationButtons>
    <asp:AjaxScriptManager ID="ScriptManager1" runat="server">
    </asp:AjaxScriptManager>
    <div id="wrapper" style="padding: 25px">
        <table align="center" id="TemplateGlobalTable">
             <tr>
                            <td>
                            <br />
                            </td>
                            </tr>
                            <tr>
                <td valign="top" align="center" >
                    <asp:Login ID="Login1" runat="server" Width="482px" BackColor="#F7F7DE" BorderColor="#CCCC99"
                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" RememberMeSet="True"
                        DestinationPageUrl="~/Authenticated/Customer/CustomerProfile3.aspx">
                        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <LayoutTemplate>
                            <table border="0" cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
                           
                                <tr>
                                    <td>
                                        <table border="0" cellpadding="0" style="width: 477px">
                                            <tr>
                                                <td align="center" colspan="2" style="font-weight: bold; color: white; background-color: #6b696b">
                                                    Log In
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                                </td>
                                                <td class="style6">
                                                    <asp:TextBox ID="UserName" runat="server" Width="160px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                                        ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                </td>
                                                <td class="style6">
                                                    <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                        ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="RoleLabel" runat="server" Style="position: relative" Text="Role: "></asp:Label>
                                                </td>
                                                <td class="style6">
                                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                        <ContentTemplate>
                                                            <asp:DropDownList ID="RoleDropDownList" runat="server" AutoPostBack="True" Style="position: relative">
                                                                <asp:ListItem Selected="True">Customer</asp:ListItem>
                                                                <asp:ListItem>Professional</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:CheckBox ID="RememberMe" runat="server" Checked="True" Text="Remember me next time." />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2" style="color: red">
                                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" colspan="2">
                                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" OnClick="LoginButton_Click"
                                                        Text="Log In" ValidationGroup="Login1" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                    </asp:Login>
                </td>
            </tr>
        </table>
    </div>
    <div class="cleaner">
    </div>
    <LowerNavigationButtons:NavigationButtons ID="MainLowerNavigationButtons" runat="server" />
    <div id="LoadingDiv" style="left: 255px; width: 100px; position: absolute; top: 416px;
        height: 100px">
        <asp:UpdatePanel ID="UpdatePanel10" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <cc1:ModalPopupExtender ID="ModalPopupExtender10" runat="server" BackgroundCssClass="modalBackground"
                    PopupControlID="LoadingPanel" TargetControlID="LoadingPanel" RepositionMode="RepositionOnWindowResize">
                </cc1:ModalPopupExtender>
                &nbsp; &nbsp;
                <asp:Panel ID="LoadingPanel" runat="server" Height="45px" Style="display: none; left: 36px;
                    position: absolute; top: 48px" Width="196px">
                    &nbsp;
                    <asp:Label ID="Label100" runat="server" Font-Bold="True" ForeColor="White" Style="left: 63px;
                        position: absolute; top: 25px" Text="Loading.."></asp:Label>
                    <img src="../_assets/img/uploading.gif" style="left: 0px; position: relative; top: -9px" />
                </asp:Panel>
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
