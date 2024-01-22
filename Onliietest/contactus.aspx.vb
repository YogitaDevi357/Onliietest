Imports System.Data
Imports System.Data.SqlClient
Partial Public Class contactus
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Onliietest\Onliietest\App_Data\qbank.mdf;Integrated Security=True;User Instance=True")
    Dim com As New SqlCommand
    Dim q1 As String
    Dim adp As New SqlDataAdapter
    Dim ds As New DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub btn_send_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_send.Click
        q1 = "insert into issue(user_name,id,remark) values('" + txt_uname.Text + "','" + txt_qstid.Text + "','" + txt_remark.Text + "')"
        com = New SqlCommand(q1, con)
        con.Open()
        com.ExecuteScalar()
        con.Close()
        MsgBox("data entered")
    End Sub


End Class