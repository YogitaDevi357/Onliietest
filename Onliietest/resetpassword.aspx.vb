Imports System.Data
Imports System.Data.SqlClient
Partial Public Class resetpassword
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Onliietest\Onliietest\App_Data\qbank.mdf;Integrated Security=True;User Instance=True")
    Dim com As New SqlCommand
    Dim q1, q2 As String
    Dim dr As SqlDataReader
    Dim adp As New SqlDataAdapter
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("name") = "" And Session("name") IsNot "Admin" Then
            Response.Redirect("unauthorize.aspx")
        End If
    End Sub

    Protected Sub btn_reset_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_reset.Click
        SqlDataSource1.Update()
        MsgBox("password reset")
        Response.Redirect("adminhome.aspx")
        MsgBox("password does not exist")
        con.Close()
    End Sub
End Class