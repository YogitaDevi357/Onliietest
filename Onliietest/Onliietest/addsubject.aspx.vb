Imports System.Data
Imports System.Data.SqlClient

Partial Public Class addsubject
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Projects\Onliietest\Onliietest\App_Data\qbank.mdf;Integrated Security=True;User Instance=True")
    Dim com As New SqlCommand
    Dim q1, q2 As String
    Dim dr As SqlDataReader

    Dim adp As New SqlDataAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.Visible = False
    End Sub



    Protected Sub btn_enter_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_enter.Click
        q2 = "select sub from subject where sub='" + txt_sub.Text + "'"
        con.Open()
        com = New SqlCommand(q2, con)
        dr = com.ExecuteReader()

        If dr.HasRows = True Then
            lbl.Text = "subject already exist"

        ElseIf dr.HasRows = False Then

            SqlDataSource1.Insert()
            lbl.Text = "subject added"

            GridView1.Visible = True
        End If


    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class