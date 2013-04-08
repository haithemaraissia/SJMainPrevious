
Imports System.Data.SqlClient
Imports System.Data
Partial Class SignIn
    Inherits System.Web.UI.Page







    Protected Sub Login1_LoggedIn(ByVal sender As Object, ByVal e As System.EventArgs) Handles Login1.LoggedIn

        'If User.IsInRole("Customer") = True Then
        '    Dim i As Integer = 0
        '    i = 1
        'End If
        'If User.IsInRole("Professional") Then

        'End If
    End Sub

    Protected Sub LoginButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Expires = 0

        Dim role As DropDownList = CType(Login1.FindControl("RoleDropDownList"), DropDownList)
        Login1.DestinationPageUrl = "~/Authenticated/" + role.SelectedItem.ToString + "/" + role.SelectedItem.ToString + "Profile.aspx"



        ' Dim value As String = role.SelectedItem.ToString


        'CType(CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("AgeTextBox"), TextBox)
    End Sub


End Class
