<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/online.Master" CodeBehind="demoresult.aspx.vb" Inherits="Onliietest.demoresult" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; font-family: Arial; font-size: medium;" 
        bgcolor="#00CC99">
        <tr>
            <td>
                Correct Answers :
                </td>
            <td colspan="2">
                &nbsp;<asp:Label ID="lable1" runat="server"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
            <td>
                Wrong Answers :</td>
            <td colspan="2">
                &nbsp;
                <asp:Label ID="label2" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                Obtain
                Marks :
                </td>
            <td>
                <asp:Label ID="label3" runat="server"></asp:Label>
                        </td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                Total Marks :
                </td>
            <td colspan="2">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
