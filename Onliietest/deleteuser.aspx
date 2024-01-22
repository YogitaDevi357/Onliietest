<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/adminlogin.Master" CodeBehind="deleteuser.aspx.vb" Inherits="Onliietest.deleteuser" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <style type="text/css">
        .style8
        {
            color: #000000;
        }
    .style10
    {
        width: 292px;
        height: 22px;
    }
        .style11
        {
            font-family: "Curlz MT";
            font-style: normal;
            font-weight: bold;
            font-size: xx-large;
        }
        .style12
        {
            font-family: "Curlz MT";
            font-weight: bold;
            font-size: xx-large;
        }
    .style13
    {
        height: 33px;
    }
    .style14
    {
        width: 256px;
        height: 22px;
    }
    .style15
    {
        width: 256px;
        height: 214px;
    }
    .style16
    {
        width: 639px;
        height: 214px;
    }
    .style17
    {
        width: 164px;
        height: 22px;
    }
    </style>
  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table  style="margin-bottom: 0px; height: 244px; width: 1000px;"
        bgcolor="#009999">
        <tr>
            <td colspan="3" align="center" class="style13" 
                >
                &nbsp;&nbsp; 
                &nbsp;<span class="style8"><span class="style12"> </span> <span class="style11">DELETE USER </span> </span> </td>
        </tr>
        <tr>
            <td style=" font-size: large;" class="style14">
                Enter User Name :</td>
            <td class="style17">
                <asp:TextBox ID="txt_uname" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
            <td class="style10">
                <asp:Button ID="btn_search" runat="server" style="height: 26px" Text="Search" 
                    BorderColor="Black" />
                <asp:Button ID="btn_del" runat="server" Text="Delete" Visible="False" 
                    BorderColor="Black" />
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lbl" runat="server"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [signup] WHERE ([user_name] = @user_name2)" 
                    DeleteCommand="DELETE FROM [signup] WHERE [user_name] = @original_user_name" 
                    InsertCommand="INSERT INTO [signup] ([name], [father_name], [user_type], [contact_number], [email], [user_name], [password]) VALUES (@name, @father_name, @user_type, @contact_number, @email, @user_name, @password)" 
                    
                    
                    UpdateCommand="UPDATE [signup] SET [id] = @id, [name] = @name, [father_name] = @father_name, [user_type] = @user_type, [contact_number] = @contact_number, [email] = @email, [password] = @password WHERE [user_name] = @original_user_name">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txt_uname" Name="user_name2" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="txt_uname" Name="original_user_name" 
                            PropertyName="Text" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="father_name" Type="String" />
                        <asp:Parameter Name="user_type" Type="String" />
                        <asp:Parameter Name="contact_number" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="original_user_name" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="father_name" Type="String" />
                        <asp:Parameter Name="user_type" Type="String" />
                        <asp:Parameter Name="contact_number" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="user_name" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
            <td colspan="2" class="style16">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="user_name" DataSourceID="SqlDataSource1" Height="50px" 
                    Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="father_name" HeaderText="father_name" 
                            SortExpression="father_name" />
                        <asp:BoundField DataField="user_type" HeaderText="user_type" 
                            SortExpression="user_type" />
                        <asp:BoundField DataField="contact_number" HeaderText="contact_number" 
                            SortExpression="contact_number" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="user_name" HeaderText="user_name" 
                            SortExpression="user_name" ReadOnly="True" />
                        <asp:BoundField DataField="password" HeaderText="password" 
                            SortExpression="password" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
            </td>
        </tr>
    </table>
</asp:Content>
