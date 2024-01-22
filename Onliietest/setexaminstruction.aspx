<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/adminlogin.Master" CodeBehind="setexaminstruction.aspx.vb" Inherits="Onliietest.setexaminstruction" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            height: 20px;
        }
        .style5
        {
            height: 20px;
            font-family: Arial;
            font-size: medium;
        }
        .style7
        {
            font-family: Arial;
            font-size: medium;
            height: 31px;
        width: 200px;
    }
        .style8
        {
            height: 31px;
            width: 181px;
        }
        .style9
        {
            font-size: larger;
        width: 200px;
        height: 35px;
    }
        .style10
        {
            font-size: large;
        width: 200px;
        height: 33px;
    }
        .style11
        {
            width: 181px;
        height: 35px;
    }
        .style12
        {
            height: 20px;
            width: 181px;
        }
    .style14
    {
        height: 20px;
        font-family: Arial;
        font-size: medium;
        width: 200px;
    }
    .style15
    {
        height: 31px;
        font-family: "Curlz MT";
        font-weight: bold;
        font-size: xx-large;
    }
    .style16
    {
        width: 200px;
        height: 54px;
    }
    .style17
    {
        width: 181px;
        height: 54px;
    }
    .style18
    {
        width: 181px;
        height: 33px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table bgcolor="#009999" style="height: 251px; width: 1000px">
        <tr>
            <td class="style15" align="center" colspan="2">
                SET EXAM INSTRUCTION</td>
        </tr>
        <tr>
            <td class="style10" >
                Set timer :</td>
                        <td class="style18">
                            <asp:DropDownList ID="ddl_set" runat="server">
                                <asp:ListItem>select</asp:ListItem>
                                <asp:ListItem Value="15 ">5 mint</asp:ListItem>
                                <asp:ListItem Value="20">10 min</asp:ListItem>
                                <asp:ListItem Value="10 ">20 min</asp:ListItem>
                                <asp:ListItem>30 min</asp:ListItem>
                                <asp:ListItem>40 min</asp:ListItem>
                                <asp:ListItem>1 hour</asp:ListItem>
                                <asp:ListItem>2 hour</asp:ListItem>
                                <asp:ListItem>No Limite</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" >
                            Nagetive marking :</td>
            <td class="style11">
                <asp:TextBox ID="txt_neg" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Marks for each question :</td>
            <td style="margin-left: 200px" class="style8">
                <asp:TextBox ID="txt_marks" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                Number of question per set :</td>
            <td style="margin-left: 200px" class="style12">
                <asp:TextBox ID="txt_number" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style16">
                </td>
            <td style="margin-left: 200px" class="style17">
                <asp:Button ID="Button1" runat="server" Text="SAVE" BorderColor="Black" />
            </td>
        </tr>
    </table>
</asp:Content>
