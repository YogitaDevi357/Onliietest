Public Partial Class adminlogin
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        user.Text = "Welcome: " + Session("user").ToString()
    End Sub

    
End Class