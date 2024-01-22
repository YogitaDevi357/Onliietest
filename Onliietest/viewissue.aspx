<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/adminlogin.Master" CodeBehind="viewissue.aspx.vb" Inherits="Onliietest.viewissue" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
  
    <style type="text/css">
    .style7
    {
        width: 1112px;
    }
    .style8
    {
        width: 1112px;
        font-weight: bold;
        font-size: xx-large;
        color: #000000;
        font-family: "Curlz MT";
    }
</style>
    
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table  bgcolor="#009999" width ="1000px">
        <tr>
            <td class="style8" align="center">
                VIEW ISSUE</td>
        </tr>
        <tr >
            <td class="style7" >
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="sno" 
                    DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <span style="background-color: #DCDCDC; color: #000000;">sno:
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
                        <br />
                        </span>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <span style="background-color: #FFF8DC;">sno:
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
                        <br />
                        </span>
                    </AlternatingItemTemplate>
                    <EmptyDataTemplate>
                        <span>No data was returned.</span>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <span style="">user_name:
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
                        <br />
                        <br />
                        </span>
                    </InsertItemTemplate>
                    <LayoutTemplate>
                            <div style="font-family: Verdana, Arial, Helvetica, sans-serif;" 
                            ID="itemPlaceholderContainer" runat="server">
                                <span ID="itemPlaceholder" runat="server" />
                            </div>
                        <div style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                        </div>
                        </LayoutTemplate>
                        <EditItemTemplate>
                            <span style="background-color: #008A8C; color: #FFFFFF;">sno:
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
                            <br />
                            <br />
                            </span>
                        </EditItemTemplate>
                        <SelectedItemTemplate>
                            <span style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">sno:
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
                            <br />
                            </span>
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
