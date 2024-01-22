Public Partial Class testpage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbl_sub.Text = Request.QueryString("sub")
    End Sub

    Protected Sub btn_submit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_submit.Click

    End Sub

    Protected Sub ListView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles ListView1.SelectedIndexChanged

    End Sub
End Class