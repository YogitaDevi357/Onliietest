﻿<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/adminlogin.Master" CodeBehind="editquestion.aspx.vb" Inherits="Onliietest.editquestion" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style2
    {
    }
        .style3
        {
            width: 648px;
        }
        .style5
        {
            font-family: Arial;
            font-size: medium;
        }
        .style6
        {
            width: 365px;
            font-family: Arial;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" align="center" bgcolor="#339966">
        <tr>
            <td class="style2" align="center" colspan="3" 
                style="font-family: Arial; color: #CC00FF; font-style: italic; text-align: center; font-size: x-large;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EDIT QUESTION</td>
        </tr>
        <tr>
            <td class="style6">
                Enter Question Type :</td>
            <td class="style2">
                <asp:TextBox ID="txt_id" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:Button ID="btn_enter" runat="server" Text="enter" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="id" DataSourceID="SqlDataSource1" 
                    AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
                    Height="89px" Width="876px" CssClass="style5" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="type" HeaderText="type" 
                            SortExpression="type" />
                        <asp:BoundField DataField="questions" HeaderText="questions" 
                            SortExpression="questions" />
                        <asp:BoundField DataField="op1" HeaderText="op1" SortExpression="op1" />
                        <asp:BoundField DataField="op2" HeaderText="op2" SortExpression="op2" />
                        <asp:BoundField DataField="op3" HeaderText="op3" SortExpression="op3" />
                        <asp:BoundField DataField="op4" HeaderText="op4" SortExpression="op4" />
                        <asp:BoundField DataField="answer" HeaderText="answer" 
                            SortExpression="answer" />
                        <asp:BoundField DataField="answer_id" HeaderText="answer_id" 
                            SortExpression="answer_id" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    OldValuesParameterFormatString="original_{0}" 
                     DeleteCommand="DELETE FROM [ADDQST] WHERE [id] = @original_id"                        
                     InsertCommand="INSERT INTO [ADDQST] ([type], [questions], [op1], [op2], [op3], [op4], [answer], [answer_id], [remark]) VALUES (@type, @questions, @op1, @op2, @op3, @op4, @answer, @answer_id, @remark)" 

                    SelectCommand="SELECT * FROM [ADDQST] WHERE ([type] = @type)" 
                    
                    
                    
                    
                    
                    UpdateCommand="UPDATE [ADDQST] SET [type] = @type, [questions] = @questions, [op1] = @op1, [op2] = @op2, [op3] = @op3, [op4] = @op4, [answer] = @answer, [answer_id] = @answer_id, [remark] = @remark WHERE [id] = @original_id">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txt_id" Name="type" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="original_id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="type" Type="String" />
                        <asp:Parameter Name="questions" Type="String" />
                        <asp:Parameter Name="op1" Type="String" />
                        <asp:Parameter Name="op2" Type="String" />
                        <asp:Parameter Name="op3" Type="String" />
                        <asp:Parameter Name="op4" Type="String" />
                        <asp:Parameter Name="answer" Type="String" />
                        <asp:Parameter Name="answer_id" Type="Int32" />
                        <asp:Parameter Name="remark" Type="String" />
                        <asp:Parameter Name="original_id" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="type" Type="String" />
                        <asp:Parameter Name="questions" Type="String" />
                        <asp:Parameter Name="op1" Type="String" />
                        <asp:Parameter Name="op2" Type="String" />
                        <asp:Parameter Name="op3" Type="String" />
                        <asp:Parameter Name="op4" Type="String" />
                        <asp:Parameter Name="answer" Type="String" />
                        <asp:Parameter Name="answer_id" Type="Int32" />
                        <asp:Parameter Name="remark" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>