
Partial Class PasswordRecovery
    Inherits System.Web.UI.Page

    Protected Sub SubmitButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        'There was a problem logging in the user

        'See if this user exists in the database
        Dim userInfo As MembershipUser = Membership.GetUser(PasswordRecovery1.UserName)


        If userInfo Is Nothing Then
            'The user entered an invalid username...
            LoginErrorDetails.Text = "There is no user in the database with the username " & PasswordRecovery1.UserName
        Else
            'See if the user is locked out or not approved
            If Not userInfo.IsApproved Then
                LoginErrorDetails.Text = "Your account has not yet been approved by the site's administrators. Please try again later..."
            ElseIf userInfo.IsLockedOut Then
                LoginErrorDetails.Text = "Your account has been locked out because of a maximum number of incorrect login attempts. You will NOT be able to login until you contact a site administrator and have your account unlocked."
            Else
                'The password was incorrect (don't show anything, the Login control already describes the problem)
                LoginErrorDetails.Text = String.Empty
            End If
        End If
    End Sub


    Protected Sub SubmitButton_Click1(sender As Object, e As System.EventArgs)

    End Sub
End Class
