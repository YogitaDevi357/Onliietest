Imports System.Data
Imports System.Data.SqlClient
Partial Public Class userhome
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Onliietest\Onliietest\App_Data\qbank.mdf;Integrated Security=True;User Instance=True")

    Dim com As New SqlCommand
    Dim s As String
    Dim dr As SqlDataReader
    Dim ds As DataSet
    Dim adp As SqlDataAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        user.Text = "Welcome: " + Session("user").ToString()
        s = "select * from exam_inst"
        con.Open()
        com = New SqlCommand(s, con)
        adp = New SqlDataAdapter(com)
        ds = New DataSet
        adp.Fill(ds, "exam_inst")
        lbl_time.Text = ds.Tables("exam_inst").Rows(0)(1)
        lbl_negative.Text = ds.Tables("exam_inst").Rows(0)(2)
        lbl_marks.Text = ds.Tables("exam_inst").Rows(0)(3)
        lbl_q.Text = ds.Tables("exam_inst").Rows(0)(4)

    End Sub

    Protected Sub btn_start_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_start.Click
        Response.Redirect("demotest.aspx?sub=" + ddl_subject.SelectedValue + "&time=" + lbl_time.Text + "&neg=" + lbl_negative.Text + "&mark=" + lbl_marks.Text + "&qst=" + lbl_q.Text)

    End Sub

    

    Protected Sub btn_logout_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_logout.Click
        Response.Redirect("mainpage.aspx")
    End Sub
End Class