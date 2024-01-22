Imports System.Data
Imports System.Data.SqlClient
Partial Public Class setexaminstruction
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Projects\Onliietest\Onliietest\App_Data\qbank.mdf;Integrated Security=True;User Instance=True")
    Dim com As New SqlCommand

    Dim q1 As String
    Dim adp As New SqlDataAdapter
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("name") = "" And Session("name") IsNot "Admin" Then
            Response.Redirect("unauthorize.aspx")
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        q1 = "update exam_inst set set_timer='" + ddl_set.SelectedValue + "',negative_marking='" + txt_neg.Text + "',marks_for_question='" + txt_marks.Text + "',question_per_set='" + txt_number.Text + "'"
        com = New SqlCommand(q1, con)
        con.Open()
        com.ExecuteScalar()
        con.Close()
        MsgBox("data entered")
    End Sub
End Class