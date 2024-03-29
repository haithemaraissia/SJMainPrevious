<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PasswordRecovery.aspx.vb"
    Inherits="PasswordRecovery" %>

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
</head>
<body>
    <form id="form1" runat="server">
    <UpperNavigationButtons:NavigationButtons ID="MainUpperNavigationButtons" runat="server">
    </UpperNavigationButtons:NavigationButtons>
    <asp:AjaxScriptManager ID="ScriptManager1" runat="server">
    </asp:AjaxScriptManager>
    <div id="wrapper" style="padding: 25px">
        <table align="center" id="TemplateGlobalTable">
            <tr>
                <td runat="server" align="center" >
                <asp:Panel ID="OuterLayer" runat="server"  Width="475px">  
                <asp:Label ID="ForgetYourPassword" runat="server" BackColor="Maroon" 
                                                                ForeColor="White" Width="475px">Forgot Your Password?</asp:Label>
                            <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" Height="132px"  TitleTextStyle-HorizontalAlign="Center"
                                Width="470px" BackColor="White">
                                <MailDefinition From="mail.haithem-araissia.com" IsBodyHtml="True" Priority="High" Subject="Your new password for side job">
                                </MailDefinition>
                                <TitleTextStyle HorizontalAlign="Center" />
                                <UserNameTemplate>
                                    <table border="0" cellpadding="1" cellspacing="0" 
                                        style="border-collapse: collapse; text-align:center">
                                        <tr align="center">
                                            <td>
                                                <table border="0" cellpadding="0" style="height: 123px; width:470px">
                                                    <tr>
                                                        <td align="center" colspan="2">
                                                          
                                                        </td>
                                                    </tr>
                                                    <%-- <tr>
                                                        <td align="center" colspan="2">
                                                           Enter your User Name to receive your password.
                                                        </td>
                                                    </tr>--%>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">  User Name:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                                ToolTip="User Name is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="2" style="color: red">
                                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" colspan="2">
                                                            <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" 
                                                                ValidationGroup="PasswordRecovery1" onclick="SubmitButton_Click1" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </UserNameTemplate>
                                <QuestionTemplate>
                                    <table border="0" cellpadding="1" cellspacing="0" style="border-collapse: collapse; text-align:center">
                                        <tr align="center">
                                            <td>
                                                <table border="0" cellpadding="0" style="height: 123px; width:470px">
                                                    <tr>
                                                        <td align="center" colspan="2">
                                                            Identity Confirmation
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="2">
                                                            Answer the following question to receive your password.
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            User Name:
                                                        </td>
                                                        <td>
                                                            <asp:Literal ID="UserName" runat="server"></asp:Literal>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            Question:
                                                        </td>
                                                        <td>
                                                            <asp:Literal ID="Question" runat="server"></asp:Literal>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Answer:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer"
                                                                ErrorMessage="Answer is required." ToolTip="Answer is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="2" style="color: red">
                                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" colspan="2">
                                                            <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" ValidationGroup="PasswordRecovery1" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </QuestionTemplate>
                                <SuccessTemplate>
                                    <table border="0" cellpadding="1" cellspacing="0" style="border-collapse: collapse; text-align:center">
                                        <tr align="center">
                                            <td>
                                                <table border="0" cellpadding="0" style="height: 123px; width:470px">
                                                    <tr>
                                                        <td>
                                                            Your password has been sent to you.
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </SuccessTemplate>
                            </asp:PasswordRecovery>
                       
                
                    <asp:Label ID="LoginErrorDetails" runat="server" Height="104px" Style="
                        position: relative;" Text="Label" Width="298px"></asp:Label>
                        </asp:Panel>
                    <cc1:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" 
                        BorderColor="Maroon" Color="Maroon" TargetControlID="PasswordRecovery1">
                    </cc1:RoundedCornersExtender>
                </td>
            </tr>
        </table>
    </div>
    <div class="cleaner">
    </div>
    <LowerNavigationButtons:NavigationButtons ID="MainLowerNavigationButtons" runat="server" />
    </form>
</body>
</html>
