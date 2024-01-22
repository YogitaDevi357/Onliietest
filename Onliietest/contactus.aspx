<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/online.Master" CodeBehind="contactus.aspx.vb" Inherits="Onliietest.contactus" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" bgcolor="#009999" style="height: 138px; width: 426px">
        <tr>
            <td style="width: 142px; font-family: Arial; font-size: medium;">
                User Name :</td>
            <td style="width: 345px">
                <asp:TextBox ID="txt_uname" runat="server" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_uname" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 142px; font-family: Arial; font-size: medium;">
                Question Id :</td>
            <td style="width: 345px">
                <asp:TextBox ID="txt_qstid" runat="server" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_qstid" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 142px; height: 45px; font-family: Arial; font-size: medium;">
                Remark :</td>
            <td style="width: 345px; height: 45px">
                <asp:TextBox ID="txt_remark" runat="server" TextMode="MultiLine" 
                    BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txt_remark" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 142px">
                &nbsp;</td>
            <td style="width: 345px">
                <asp:Button ID="btn_send" runat="server" Text="Send" BorderColor="Black" />
            </td>
        </tr>
    </table>
</asp:Content>
