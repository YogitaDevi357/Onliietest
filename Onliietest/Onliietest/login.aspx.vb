Imports System.Data
Imports System.Data.SqlClient
Partial Public Class loginpage
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Project\Onliietest\Onliietest\App_Data\qbank.mdf;Integrated Security=True;User Instance=True")
    Dim com As New SqlCommand
    Dim q1, q2 As String
    Dim dr As SqlDataReader

    Dim adp As New SqlDataAdapter
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
    End Sub



    Protected Sub btn_submit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_submit.Click
        q2 = "select password from signup where user_name='" + txt_uname.Text + "'"
        con.Open()
        com = New SqlCommand(q2, con)
        lbl.Text = CType(com.ExecuteScalar, String)
        dr = com.ExecuteReader()
        If dr.HasRows = True Then
            Session("user") = txt_uname.Text
            If txt_pwd.Text = lbl.Text And ddl_utype.SelectedValue = "Admin User" Then
                Session("name") = "Admin"
                Response.Redirect("adminhome.aspx")


            ElseIf txt_pwd.Text = lbl.Text And ddl_utype.SelectedValue = "Other User" Then
                Response.Redirect("userhome.aspx")
            Else
                lbl.Text = "password incorrect"
                lbl.Visible = True
                txt_uname.Text = ""
                txt_pwd.Text = ""
            End If
        End If
        con.Close()
    End Sub
End Class