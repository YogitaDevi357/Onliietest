<%@ Page Language="vb" AutoEventWireup="false"MasterPageFile="~/adminlogin.Master" CodeBehind="addsubject.aspx.vb" Inherits="Onliietest.addsubject" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            font-family: arial;
            font-size: large;
        }
        .style7
        {
            height: 30px;
        }
        .style8
        {
            width: 252px;
        height: 216px;
    }
        .style9
        {
            font-size: large;
            height: 30px;
    }
    .style10
    {
        height: 30px;
        width: 402px;
    }
    .style11
    {
        font-size: xx-large;
        font-family: "Curlz MT";
        font-weight: bold;
        height: 50px;
    }
    .style12
    {
        height: 216px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" bgcolor="#009999" 
        style="height: 306px; width: 1000px; margin-left: 0px">
        <tr>
            <td class="style11" align="center" colspan="3" >
                ADD SUBJECT</td>
        </tr>
        <tr>
            <td class="style9" >
                Subject Name :</td>
            <td class="style10">
                <asp:TextBox ID="txt_sub" runat="server" BorderColor="Black"></asp:TextBox>
            &nbsp;</td>
            <td class="style7">
                <asp:Button ID="btn_enter" runat="server" Text="Enter" BorderColor="Black" />
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [subject] WHERE [sub] = @original_sub AND [sno] = @original_sno" 
                    InsertCommand="INSERT INTO [subject] ([sub]) VALUES (@sub)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [subject]" 
                    
                    
                    UpdateCommand="UPDATE [subject] SET [sno] = @sno WHERE [sub] = @original_sub AND [sno] = @original_sno">
                    <DeleteParameters>
                        <asp:Parameter Name="original_sub" Type="String" />
                        <asp:Parameter Name="original_sno" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="sno" Type="Int32" />
                        <asp:Parameter Name="original_sub" Type="String" />
                        <asp:Parameter Name="original_sno" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="txt_sub" Name="sub" PropertyName="Text" 
                            Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
            <td colspan="2" class="style12">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" DataKeyNames="sub" 
                    DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="sno" InsertVisible="False" 
                            ReadOnly="True" SortExpression="sno" />
                        <asp:BoundField DataField="sub" HeaderText="sub" ReadOnly="True" 
                            SortExpression="sub" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
        </table>
</asp:Content>
