Public Partial Class demoresult
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lable1.Text = Session("correct").ToString
        label2.Text = Session("wrong").ToString
        label3.Text = Session("m").ToString
        Label4.Text = Session("t").ToString
    End Sub

End Class