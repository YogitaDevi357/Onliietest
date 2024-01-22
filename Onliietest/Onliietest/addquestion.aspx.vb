Imports System.Data
Imports System.Data.SqlClient
Partial Public Class addquestion
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Project\Onliietest\Onliietest\App_Data\qbank.mdf;Integrated Security=True;User Instance=True")
    Dim com As New SqlCommand
    Dim q1 As String
    Dim adp As New SqlDataAdapter
    Dim ds As New DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        btn_add.Visible = False
    End Sub

   
    Protected Sub btn_submit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_submit.Click
        btn_add.Visible = False
        q1 = "insert into ADDQST(type,questions,op1,op2,op3,op4,answer,remark,answer_id) values('" + ddl_subject.SelectedValue + "','" + txt_qst.Text + "','" + txt_opt1.Text + "','" + txt_opt2.Text + "','" + txt_opt3.Text + "','" + txt_opt4.Text + "','" + txt_ans.Text + "','" + txt_remark.Text + "','" + txt_ansid.Text + "')"
        com = New SqlCommand(q1, con)
        con.Open()
        'com.ExecuteScalar()
        con.Close()
        MsgBox("data entered")
        btn_submit.Visible = False
        btn_add.Visible = True
    End Sub

    Protected Sub btn_add_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_add.Click
        btn_submit.Visible = True
        txt_qst.Text = ""
        txt_opt1.Text = ""
        txt_opt2.Text = ""
        txt_opt3.Text = ""
        txt_opt4.Text = ""
        txt_ans.Text = ""
        txt_remark.Text = ""
        txt_ansid.Text = ""
        btn_submit.Visible = True

    End Sub

    Protected Sub SqlDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub

 
End Class