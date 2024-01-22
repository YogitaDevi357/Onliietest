Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.UI.WebControls

Partial Public Class demotest
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Project\Onliietest\Onliietest\App_Data\qbank.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim q1, q2, q3 As String
    Dim dr As SqlDataReader
    Dim c_ans As Integer = 0
    Dim w_ans As Double = 0
    Dim slct_no As Integer = 0
    Dim count As Integer = 0
    Dim d As Date

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        subject.Text = Request.QueryString("sub").ToString()
        lbl_time.Text = Request.QueryString("time").ToString()
        lbl_negative.Text = Request.QueryString("neg").ToString()
        lbl_mark.Text = Request.QueryString("mark").ToString()
        lbl_qst.Text = Request.QueryString("qst").ToString()
        lbl_user.Text = Session("user").ToString()
        lb_time.Text = System.DateTime.Today.ToShortTimeString
        d = System.DateTime.Today.ToShortDateString
        lb_date.Text = Format(d, "dddddddd, dd/MMM/yyyy")
        If Not IsPostBack Then
            lb_t_min.Text = Val(lbl_time.Text) - 1
            Timer1.Enabled = True
            loadgrid()
        End If
    End Sub
    Private Sub loadgrid()
        con.Open()
        cmd.CommandText = "SELECT top (select question_per_set from exam_inst ) * FROM [ADDQST]  WHERE ([type] = '" + subject.Text + "')" + "ORDER BY newid()"
        cmd.Connection = con
        dr = cmd.ExecuteReader()
        GridView1.DataSource = dr
        GridView1.DataBind()
        con.Close()

    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        btnclick()
    End Sub
    Private Sub btnclick()
        Dim row As GridViewRow
        Dim l1 As New Label
        Dim r1, r2, r3, r4 As New RadioButton
        For Each row In GridView1.Rows
            l1 = row.FindControl("qid")
            r1 = row.FindControl("op1")
            r2 = row.FindControl("op2")
            r3 = row.FindControl("op3")
            r4 = row.FindControl("op4")
            If r1.Checked Then
                slct_no = 1

            ElseIf r2.Checked Then
                slct_no = 2
            ElseIf r3.Checked Then
                slct_no = 3
            ElseIf r4.Checked Then
                slct_no = 4
            End If
            con.Close()
            check_number(l1.Text)
        Next

        lable1.Text = c_ans
        label2.Text = w_ans
        lable3.Text = (c_ans * lbl_mark.Text) - (w_ans * lbl_negative.Text)
        Label4.Text = lbl_qst.Text * lbl_mark.Text
        SqlDataSource1.Insert()
        MsgBox("Data Entered")
        Session("correct") = lable1.Text
        Session("wrong") = label2.Text
        Session("m") = lable3.Text
        Session("t") = Label4.Text
        Response.Redirect("demoresult.aspx")
    End Sub
    Private Sub check_number(ByVal text As String)
        con.Open()
        cmd.CommandText = "SELECT * FROM [ADDQST] WHERE id ='" + text + "'"
        cmd.Connection = con
        Dim rd As SqlDataReader
        rd = cmd.ExecuteReader()
        While rd.Read()
            If slct_no = CType(rd("answer_id"), Int32) Then
                c_ans += 1
            Else
                w_ans += 1
            End If
        End While
        count = count + 1

    End Sub
    Protected Sub Timer1_Tick(ByVal sender As Object, ByVal e As EventArgs) Handles Timer1.Tick
        lb_t_sec.ForeColor = Drawing.Color.Green
        lb_t_min.ForeColor = Drawing.Color.Green
        lb_t_sec.Text = Val(lb_t_sec.Text) - 1
        If (Val(lb_t_min.Text) = 0 And Val(lb_t_sec.Text) < 10) Then
            lb_t_sec.ForeColor = Drawing.Color.Red
            lb_t_min.ForeColor = Drawing.Color.Red
        ElseIf (Val(lb_t_sec.Text) = 0) Then
            lb_t_min.Text = Val(lb_t_min.Text) - 1
            lb_t_sec.Text = 59
        End If
        If (Val(lb_t_min.Text) = 0) And Val(lb_t_sec.Text) = 0 Then
            MsgBox("Time is Over")
            btnclick()
        End If
    End Sub


    
End Class