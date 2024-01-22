<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/online.Master" CodeBehind="forgetpassword.aspx.vb" Inherits="Onliietest.forgetpassword" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 500px;
        }
        .style2
        {
            font-size: medium;
            font-family: Arial;
        }
        .style3
        {
            height: 23px;
        }
        .style5
        {
            font-size: medium;
            font-family: Arial;
            width: 169px;
        }
        .style6
        {
            height: 23px;
            font-family: "Monotype Corsiva";
            font-size: xx-large;
            font-style: italic;
            color: #9900FF;
            font-weight: bold;
            width: 169px;
        }
        .style7
        {
            width: 169px;
        }
        .style8
        {
            width: 548px;
        }
        .style9
        {
            height: 23px;
            font-family: "Monotype Corsiva";
            font-size: xx-large;
            font-style: italic;
            color: #9900FF;
            font-weight: bold;
            width: 548px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table  bgcolor="#CC66FF">
        <tr>
            <td class="style5">
                <asp:Label ID="lbl_name" runat="server" Text="Name"></asp:Label>
            &nbsp;:</td>
            <td class="style8">
                <asp:TextBox ID="txt_name" runat="server" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_name" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="lbl_email" runat="server" Text="Email"></asp:Label>
            &nbsp;:</td>
            <td class="style8">
                <asp:TextBox ID="txt_email" runat="server" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_email" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txt_email" ErrorMessage="enter valid email_id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="lbl_cno" runat="server" Text="Contact number"></asp:Label>
            &nbsp;:</td>
            <td class="style8">
                <asp:TextBox ID="txt_cno" runat="server" MaxLength="10" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txt_cno" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                <asp:Button ID="btn_submit" runat="server" Text="Submit" BorderColor="Black" />
            </td>
        </tr>
    </table>
</asp:Content>
