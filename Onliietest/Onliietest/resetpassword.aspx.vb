Public Partial Class resetpassword
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("name") = "" And Session("name") IsNot "Admin" Then
            Response.Redirect("unauthorize.aspx")
        End If
    End Sub

    Protected Sub btn_reset_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_reset.Click
        SqlDataSource1.Update()
        MsgBox("password reset")
        Response.Redirect("adminhome.aspx")
    End Sub
End Class