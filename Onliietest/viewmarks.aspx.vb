Public Partial Class viewmarks
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        rb_a.Focus()
        If Session("name") = "" And Session("name") IsNot "Admin" Then
            Response.Redirect("unauthorize.aspx")
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Try

            If rb_i.Checked Then
                GridView1.DataSource = SqlDataSource2
                GridView1.DataBind()
            Else
                GridView1.DataSource = SqlDataSource1
                GridView1.DataBind()

            End If

        Catch ex As Exception
            lbl.Text = "not set"
        End Try
    End Sub

   
End Class