<%@ Page Language="vb" AutoEventWireup="false"MasterPageFile="~/adminlogin.Master" CodeBehind="addsubject.aspx.vb" Inherits="Onliietest.addsubject" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            font-family: arial;
            font-size: large;
        }
        .style6
        {
            font-family: arial;
            font-size: large;
            width: 221px;
            height: 45px;
        }
        .style7
        {
            height: 45px;
        }
        .style8
        {
            width: 221px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" align="center" bgcolor="#009999" 
        style="height: 311px; width: 486px; margin-left: 0px">
        <tr>
            <td class="style6">
                Subject Name :</td>
            <td class="style7">
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
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" DataKeyNames="sub" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="sno" InsertVisible="False" 
                            ReadOnly="True" SortExpression="sno" />
                        <asp:BoundField DataField="sub" HeaderText="sub" ReadOnly="True" 
                            SortExpression="sub" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        </table>
</asp:Content>
