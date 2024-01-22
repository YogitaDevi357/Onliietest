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
        .style6
        {
            font-family: Arial;
            font-size: medium;
        }
        .style7
        {
            font-family: Arial;
            font-size: medium;
            height: 31px;
        }
        .style8
        {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" bgcolor="#009933" style="height: 186px; width: 357px">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                set timer :</td>
                        <td>
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
                        <td class="style6">
                            nagetive marking :</td>
            <td>
                <asp:TextBox ID="txt_neg" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                marks for each question :</td>
            <td style="margin-left: 200px" class="style8">
                <asp:TextBox ID="txt_marks" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                number of question per set :</td>
            <td style="margin-left: 200px" class="style4">
                <asp:TextBox ID="txt_number" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="margin-left: 200px">
                <asp:Button ID="Button1" runat="server" Text="save" BorderColor="Black" />
            </td>
        </tr>
    </table>
</asp:Content>
