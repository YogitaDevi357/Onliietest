Partial Public Class deleteuser
    Inherits System.Web.UI.Page

    Protected Sub btn_search_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_search.Click

        DetailsView1.Visible = True
        btn_del.Visible = True
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Session("name") = "" And Session("name") IsNot "Admin" Then
            Response.Redirect("unauthorize.aspx")
        End If
        DetailsView1.Visible = False
        btn_del.Visible = False
    End Sub


    Protected Sub btn_del_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_del.Click
        SqlDataSource1.Delete()
        lbl.Text = "user deleted"
        btn_del.Visible = False
        txt_uname.Text = ""
    End Sub
End Class