<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/adminlogin.Master" CodeBehind="viewissue.aspx.vb" Inherits="Onliietest.viewissue" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 234px;
        }
        .style2
        {
            width: 245px;
        }
        .style3
        {
            width: 317px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" align="center" bgcolor="#9999FF">
        <tr>
            <td 
                
                
                style="font-family: Arial; font-size: x-large; font-style: italic; color: #FF00FF; text-align: center" 
                class="style3">
                VIEW ISSUE</td>
        </tr>
        <tr style="font-size: medium; font-family: Arial">
            <td class="style3">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="sno" 
                    DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <li style="background-color: #DCDCDC;color: #000000;">sno:
                            <asp:Label ID="snoLabel" runat="server" Text='<%# Eval("sno") %>' />
                            <br />
                            user_name:
                            <asp:Label ID="user_nameLabel" runat="server" Text='<%# Eval("user_name") %>' />
                            <br />
                            id:
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            remark:
                            <asp:Label ID="remarkLabel" runat="server" Text='<%# Eval("remark") %>' />
                            <br />
                        </li>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <li style="background-color: #FFF8DC;">sno:
                            <asp:Label ID="snoLabel" runat="server" Text='<%# Eval("sno") %>' />
                            <br />
                            user_name:
                            <asp:Label ID="user_nameLabel" runat="server" Text='<%# Eval("user_name") %>' />
                            <br />
                            id:
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            remark:
                            <asp:Label ID="remarkLabel" runat="server" Text='<%# Eval("remark") %>' />
                            <br />
                        </li>
                    </AlternatingItemTemplate>
                    <EmptyDataTemplate>
                        No data was returned.
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <li style="">user_name:
                            <asp:TextBox ID="user_nameTextBox" runat="server" 
                                Text='<%# Bind("user_name") %>' />
                            <br />
                            id:
                            <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                            <br />
                            remark:
                            <asp:TextBox ID="remarkTextBox" runat="server" Text='<%# Bind("remark") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Clear" />
                        </li>
                    </InsertItemTemplate>
                    <LayoutTemplate>
                        <ul ID="itemPlaceholderContainer" runat="server" 
                            style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <li ID="itemPlaceholder" runat="server" />
                            </ul>
                            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            </div>
                        </LayoutTemplate>
                        <EditItemTemplate>
                            <li style="background-color: #008A8C;color: #FFFFFF;">sno:
                                <asp:Label ID="snoLabel1" runat="server" Text='<%# Eval("sno") %>' />
                                <br />
                                user_name:
                                <asp:TextBox ID="user_nameTextBox" runat="server" 
                                    Text='<%# Bind("user_name") %>' />
                                <br />
                                id:
                                <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                                <br />
                                remark:
                                <asp:TextBox ID="remarkTextBox" runat="server" Text='<%# Bind("remark") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                    Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                    Text="Cancel" />
                            </li>
                        </EditItemTemplate>
                        <ItemSeparatorTemplate>
                            <br />
                        </ItemSeparatorTemplate>
                        <SelectedItemTemplate>
                            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">sno:
                                <asp:Label ID="snoLabel" runat="server" Text='<%# Eval("sno") %>' />
                                <br />
                                user_name:
                                <asp:Label ID="user_nameLabel" runat="server" Text='<%# Eval("user_name") %>' />
                                <br />
                                id:
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                <br />
                                remark:
                                <asp:Label ID="remarkLabel" runat="server" Text='<%# Eval("remark") %>' />
                                <br />
                            </li>
                        </SelectedItemTemplate>
                    </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    OldValuesParameterFormatString="original_{0}"  
                     SelectCommand="SELECT * FROM [issue]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
