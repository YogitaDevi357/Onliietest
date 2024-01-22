<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/adminlogin.Master" CodeBehind="viewmarks.aspx.vb" Inherits="Onliietest.viewmarks" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
        }
        .style7
        {
            font-family: Arial;
            font-size: medium;
        width: 369px;
        height: 163px;
    }
        .style8
        {
            width: 227px;
            height: 15px;
        }
        .style9
        {
            font-family: Arial;
            font-size: medium;
            height: 15px;
        width: 369px;
    }
        .style10
        {
            font-family: Arial;
            font-size: medium;
            height: 28px;
        width: 227px;
    }
        .style11
        {
            height: 28px;
        width: 369px;
    }
    .style12
    {
        width: 227px;
        height: 63px;
    }
    .style13
    {
        height: 28px;
        width: 384px;
    }
    .style14
    {
        font-family: Arial;
        font-size: medium;
        height: 15px;
        width: 384px;
    }
    .style15
    {
        width: 384px;
        height: 63px;
    }
    .style16
    {
        width: 369px;
        height: 63px;
    }
        .style17
        {
            color: #000000;
            font-style: normal;
            font-weight: bold;
            font-size: xx-large;
            font-family: "Curlz MT";
        }
    .style18
    {
        height: 22px;
    }
    .style19
    {
        width: 227px;
        height: 163px;
    }
    .style20
    {
        width: 384px;
        height: 163px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" style="height: 150px; width: 1000px" 
        bgcolor="#009999">
         
                    <tr>
                        <td colspan="3" 
                            style="font-style: italic; color: #0000FF; font-size: 30px" align="center" 
                            class="style18">
                            <span>&nbsp; 
                            <span class="style17">VIEW MARKS</span></span></td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Enter User name</td>
                        <td class="style13">
                <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black"></asp:TextBox>
                        </td>
                        <td class="style11">
                <asp:Button ID="Button1" runat="server" Text="Enter" BorderColor="Black" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            </td>
                        <td class="style14">
                <asp:RadioButton ID="rb_i" runat="server" GroupName="a" Text="indivisual" />
                <asp:RadioButton ID="rb_a" runat="server" GroupName="a" Text="all" />
                        </td>
                        <td class="style9">
                <asp:Label ID="lbl" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            </td>
                        <td class="style20">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                        </td>
                        <td class="style7">
                            </td>
                    </tr>
                    <tr>
                        <td class="style12">
                            </td>
                        <td class="style15">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [marks]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [marks] WHERE ([user_id] = @user_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="user_id" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                        </td>
                        <td class="style16">
</td>
                    </tr>
               </table> 
</asp:Content>
