Imports System.Data
Imports System.Data.SqlClient
Imports System.Net.NetworkCredential
Imports System.Net.Mail
Imports System.Net
Imports System.Net.Mail.SmtpClient
Partial Public Class signuppage
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Project\Onliietest\Onliietest\App_Data\qbank.mdf;Integrated Security=True;User Instance=True")
    Dim com As New SqlCommand
    Dim q1 As String
    Dim dr As SqlDataReader
    Dim mail As New MailMessage()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_signup_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_signup.Click

        q1 = "insert into signup(name,father_name,user_type,contact_number,email,user_name,password) values('" + txt_name.Text + "','" + txt_fname.Text + "','" + ddl_utype.SelectedValue + "','" + txt_cnumber.Text + "','" + txt_email.Text + "','" + txt_uname.Text + "','" + txt_password.Text + "') "
        com = New SqlCommand(q1, con)
        con.Open()
        com.ExecuteScalar()
        con.Close()
        sendmail()
        MsgBox("data entered")
        Response.Redirect("login.aspx")
    End Sub
    Private Sub sendmail()

        Dim mail As New MailMessage()
        mail.To.Add(txt_email.Text)
        mail.From = New MailAddress("yogitavarsha603@gmail.com")
        mail.Subject = "Signup Conformation"
        mail.Body = "you are registered with username :" + txt_uname.Text + "and your password is :" + txt_password.Text + "thank you for registration. stay connected "
        mail.Priority = MailPriority.High
        Dim smtp As New SmtpClient
        smtp.Host = "smtp.gmail.com"
        smtp.Port = 587
        smtp.Credentials = New System.Net.NetworkCredential("yogitavarsha603@gmail.com", "@YogitaVarsha#Bca6th")
        smtp.EnableSsl = True
        Try
            smtp.Send(mail)
            MsgBox("Your Username and password has been sent to Your registered mail")
        Catch ex As Exception
            MsgBox("mail not send")
        End Try

       
    End Sub
End Class