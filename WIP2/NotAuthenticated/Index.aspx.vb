Imports system.threading
Imports System.Globalization

Partial Class Index
    Inherits BasePage


    Protected Overrides Sub InitializeCulture()

        Dim lang As String = Request.QueryString("l")
        If lang IsNot Nothing Or lang <> "" Then
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(lang)
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(lang)
            Session("LCID") = lang
        Else
            If Session("LCID") IsNot Nothing Or Session("LCID") <> "" Then
                Thread.CurrentThread.CurrentUICulture = New CultureInfo(Session("LCID").ToString())
                Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(Session("LCID").ToString())
            End If
        End If

    End Sub

    Protected Sub SEOSiteMap()
        Page.Title = Resources.Resource.HomeTitle.ToString

        Dim nl1 As New Web.UI.WebControls.Literal
        nl1.Text = Environment.NewLine
        Dim Title As New HtmlMeta()
        Title.Name = "title"
        Title.Content = Resources.Resource.HomeTitle.ToString
        Page.Header.Controls.AddAt(1, Title)

        Dim Description As New HtmlMeta()
        Description.Name = "description"
        Description.Content = Resources.Resource.HomeDescription.ToString
        Page.Header.Controls.AddAt(2, Description)

        Dim keywords As New HtmlMeta()
        keywords.Name = "keywords"
        keywords.Content = Resources.Resource.HomeKeywords.ToString
        Page.Header.Controls.AddAt(3, keywords)
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        SEOSiteMap()
        Dim lang As String = Request.QueryString("l")
        selected.Src = "../Images/flags/earth.png"

        If lang IsNot Nothing Or lang <> "" Then

            Select Case lang

                Case "en-US"
                    selected.Src = "../Images/flags/US.png"

                Case "fr"
                    selected.Src = "../Images/flags/FR.png"

                Case "es"
                    selected.Src = "../Images/flags/ES.png"

                Case "zh-CN"
                    selected.Src = "../Images/flags/CN.png"

                Case "ru"
                    selected.Src = "../Images/flags/RU.png"

                Case "ar"
                    selected.Src = "../Images/flags/AE.png"

                Case "ja"
                    selected.Src = "../Images/flags/JP.png"

                Case "de"
                    selected.Src = "../Images/flags/DE.png"
                Case Else

            End Select

        End If

    End Sub

End Class
