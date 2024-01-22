
Partial Public Class viewissue
    Inherits System.Web.UI.Page
   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("name") = "" And Session("name") IsNot "Admin" Then
            Response.Redirect("unauthorize.aspx")
        End If
    End Sub

    Protected Sub ListView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles ListView1.SelectedIndexChanged

    End Sub
End Class