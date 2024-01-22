<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/adminlogin.Master" CodeBehind="addquestion.aspx.vb" Inherits="Onliietest.addquestion" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 74px;
        }
        .style2
        {
            width: 74px;
        }
        .style3
        {
        	width :500px;
         
        }
        .style4
        {
            font-family: Arial;
            font-size: large;
        }
        .style5
        {
            width: 365px;

            font-family: Arial;
            font-size: large;
        }
        .style7
        {
            font-family: "Curlz MT";
            font-size: xx-large;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">&nbsp;<br />
    <table align="center" bgcolor="#009999" >
        <tr>
            <td class="style7" align="center" colspan="3">
                ADD QUESTION</td>
        </tr>
        <tr>
            <td class="style4">
                SUBJECTS&nbsp; </td>
            <td colspan="2">
                <asp:DropDownList ID="ddl_subject" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="sub" DataValueField="sub">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="ddl_subject" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [sub] FROM [subject]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="lbl_qst" runat="server" Text="question"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txt_qst" runat="server" TextMode="MultiLine" Width="750px" 
                    BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_qst" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="lbl_opt1" runat="server" Text="opt.1"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txt_opt1" runat="server" Width="400px" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txt_opt1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="lbl_opt2" runat="server" Text="opt.2"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txt_opt2" runat="server" Width="400px" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txt_opt2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="lbl_opt3" runat="server" Text="opt.3"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txt_opt3" runat="server" Width="400px" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txt_opt3" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="lbl_opt4" runat="server" Text="opt.4"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txt_opt4" runat="server" Width="400px" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txt_opt4" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Answer</td>
            <td colspan="2">
                <asp:TextBox ID="txt_ans" runat="server" Width="400px" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txt_ans" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Answer_id</td>
            <td colspan="2" class="style2">
                <asp:TextBox ID="txt_ansid" runat="server" BorderColor="Black" Width ="150px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txt_ansid" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Remark</td>
            <td colspan="2">
&nbsp;<asp:TextBox ID="txt_remark" runat="server" Width="400px" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="btn_submit" runat="server" Text="Submit" style="height: 26px" 
                    BorderColor="Black" />
            </td>
            <td>
                <asp:Button ID="btn_add" runat="server" Text="Addnextqst" BorderColor="Black" />
            </td>
        </tr>
    </table>
</asp:Content>
