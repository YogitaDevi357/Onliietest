Imports System.Data
Imports System.Data.SqlClient
Imports System.Net.NetworkCredential
Imports System.Net.Mail
Partial Public Class forgetpassword
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=E:\PROJECT\Onliietest\Onliietest\App_Data\qbank.mdf;Integrated Security=True;User Instance=True")
    Dim com As New SqlCommand
    Dim q1, q2 As String
    Dim dr As SqlDataReader

    Dim adp As New SqlDataAdapter
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_submit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_submit.Click
        q2 = "select name,email,user_name,password from signup where user_name='" + txt_name.Text + "'"
        con.Open()
        com = New SqlCommand(q2, con)
        com.ExecuteReader()
        con.Close()

        'Dim mail As New MailMessage()
        'mail.To.Add(txt_email.Text)
        'mail.From = New MailAddress("yogitavarsha603@gmail.com")
        'mail.Subject = "Signup Conformation"
        'mail.Body = "you are registered with username :" + txt_uname.Text + "and your password is :" + txt_password.Text + "thank you for registration. stay connected "
        'mail.Priority = MailPriority.High
        'Dim smtp As New SmtpClient
        'smtp.Host = "smtp.gmail.com"
        'smtp.Port = 587
        'smtp.Credentials = New System.Net.NetworkCredential("yogitavarsha603@gmail.com", "@YogitaVarsha#Bca6th")
        'smtp.EnableSsl = True
        'Try
        '    smtp.Send(mail)
        '    MsgBox("Your Username and password has been sent to Your registered mail")
        'Catch ex As Exception
        '    MsgBox("mail not send")
        'End Try


    End Sub
End Class