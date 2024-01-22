<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/online.Master" CodeBehind="userhome.aspx.vb" Inherits="Onliietest.userhome" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style5
    {
        width: 500px;
    }
    .style6
    {
        height: 23px;
        width: 500px;
    }
    .style7
    {
        width: 382px;
    }
    .style8
    {
        height: 23px;
        width: 382px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%" bgcolor="#CC99FF">
        <tr>
            <td class="style5">
                &nbsp;</td>
                        <td class="style7">
            <asp:Button ID="btn_logout" runat="server" Text="Log Out" BorderColor="Black" />
                        </td>
                        <td>
        <asp:Label ID="user" runat="server" ForeColor="#6666FF" 
            style="font-size: x-large; font-weight: 400; font-style: italic"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="font-family: Arial; font-size: medium;" class="style6">
                            Instructions for the exam :</td>
                        <td style="font-family: Arial; font-size: medium;" class="style8">
            <asp:Label ID="lbl_set" runat="server"></asp:Label>
                        </td>
                        <td style="height: 23px">
                            </td>
                    </tr>
                    <tr>
                        <td style="font-family: Arial; font-size: medium;" class="style6">
                            Time of&nbsp; exam :</td>
            <td style="font-family: Arial; font-size: medium;" class="style8">
                <asp:Label ID="lbl_time" runat="server"></asp:Label>
            </td>
            <td style="height: 23px">
                        </td>
        </tr>
        <tr>
            <td style="font-family: Arial; font-size: medium" class="style5">
                Negative mark for each Wrong answer wil be :</td>
            <td style="font-family: Arial; font-size: medium" class="style7">
                <asp:Label ID="lbl_negative" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: Arial; font-size: medium" class="style5">
                Maximum mark for each right answer wil be :</td>
            <td style="font-family: Arial; font-size: medium" class="style7">
                <asp:Label ID="lbl_marks" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: Arial; font-size: medium" class="style5">
                Total number of question will be
                :</td>
            <td style="font-family: Arial; font-size: medium" class="style7">
                <asp:Label ID="lbl_q" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: medium; font-family: Arial" class="style5">
                Select the subject for test :</td>
            <td class="style7">
                <asp:DropDownList ID="ddl_subject" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="sub" DataValueField="sub">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [sub] FROM [subject]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                <asp:Button ID="btn_start" runat="server" Text="Start" style="height: 26px" 
                    BorderColor="Black" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
    
    

    
</asp:Content>
