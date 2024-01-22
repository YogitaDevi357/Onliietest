<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/adminlogin.Master" CodeBehind="viewmarks.aspx.vb" Inherits="Onliietest.viewmarks" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
        }
        .style6
        {
            font-size:xlarge ;
        }
        .style7
        {
            font-family: Arial;
            font-size: medium;
        }
        .style8
        {
            width: 639px;
            height: 16px;
        }
        .style9
        {
            font-family: Arial;
            font-size: medium;
            height: 16px;
        }
        .style10
        {
            font-family: Arial;
            font-size: medium;
            height: 27px;
        }
        .style11
        {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" align="center" style="height: 407px; width: 351px" 
        bgcolor="#00CC99">
         
                    <tr>
                        <td class="style5" colspan="3" 
                            style="font-style: italic; color: #0000FF; font-size: 30px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">&nbsp; VIEW MARKS</span></td>
                    </tr>
                    <tr>
                        <td class="style5" colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Enter Id</td>
                        <td class="style11">
                <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black"></asp:TextBox>
                        </td>
                        <td class="style11">
                <asp:Button ID="Button1" runat="server" Text="Enter" BorderColor="Black" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            </td>
                        <td class="style9">
                <asp:RadioButton ID="rb_i" runat="server" GroupName="a" Text="indivisual" />
                <asp:RadioButton ID="rb_a" runat="server" GroupName="a" Text="all" />
                        </td>
                        <td class="style9">
                <asp:Label ID="lbl" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td>
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
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td>
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
                        <td>
</td>
                    </tr>
               </table> 
</asp:Content>
