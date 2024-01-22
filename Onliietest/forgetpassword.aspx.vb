Imports System.Data
Imports System.Data.SqlClient
Imports System.Net.NetworkCredential
Imports System.Net.Mail
Partial Public Class forgetpassword
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Onliietest\Onliietest\App_Data\qbank.mdf;Integrated Security=True;User Instance=True")
    Dim com As New SqlCommand
    Dim q1, q2, q3 As String
    Dim dr As SqlDataReader

    Dim adp As New SqlDataAdapter
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_submit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_submit.Click
        q1 = "select name from signup where user_name='" + txt_name.Text + "'"
        con.Open()
        com = New SqlCommand(q1, con)
        dr = com.ExecuteReader()
        If dr.HasRows = True Then
            con.Close()
            q2 = "select email from signup where user_name='" + txt_name.Text + "'"
            con.Open()
            com = New SqlCommand(q2, con)
            lbl_email.Text = CType(com.ExecuteScalar, String)
            dr = com.ExecuteReader()
            If lbl_email.Text = txt_email.Text Then
                con.Close()
                q3 = "select password from signup where user_name='" + txt_name.Text + "'"
                con.Open()
                com = New SqlCommand(q3, con)
                lbl_pass.Text = CType(com.ExecuteScalar, String)
                dr = com.ExecuteReader
                sendmail()
                MsgBox("password changed")
                Response.Redirect("login.aspx")
            Else
                lbl_msg.Text = "detail not valid"
            End If
        Else
            lbl_msg.Text = "user not valid"
        End If
    End Sub
    Private Sub sendmail()

        Dim mail As New MailMessage()
        mail.To.Add(txt_email.Text)
        mail.From = New MailAddress("yogitavarsha603@gmail.com")
        mail.Subject = "Signup Conformation"
        mail.Body = "your recovery password is :" + lbl_pass.Text
        mail.Priority = MailPriority.High
        Dim smtp As New SmtpClient
        smtp.Host = "smtp.gmail.com"
        smtp.Port = 587
        smtp.Credentials = New System.Net.NetworkCredential("yogitavarsha603@gmail.com", "@YogitaVarsha#Bca6th")
        smtp.EnableSsl = True
        Try
            smtp.Send(mail)
            MsgBox("Your recovery password has been sent to Your registered mail")
        Catch ex As Exception
            MsgBox("mail not send")
        End Try


    End Sub
End Class