<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/adminlogin.Master" CodeBehind="resetpassword.aspx.vb" Inherits="Onliietest.resetpassword" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            font-size: medium;
            font-family: Arial;
        }
        .style6
        {
            font-size: medium;
            font-family: Arial;
            }
        .style7
        {
            width: 395px;
        }
    .style8
    {
        font-family: "Curlz MT";
        font-size: xx-large;
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1"  bgcolor="#009999" 
        style="height: 197px; width: 1000px">
        <tr>
            <td colspan="2" align="center" class="style8">
                RESET PASSWORD</td>
        </tr>
        <tr>
            <td class="style6">
                Old Password :</td>
            <td>
                <asp:TextBox ID="txt_oldpwd" runat="server" BorderColor="Black" 
                    TextMode="Password"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_oldpwd" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                New Password :</td>
            <td>
                <asp:TextBox ID="txt_newpwd" runat="server" BorderColor="Black" 
                    TextMode="Password"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_newpwd" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Confirm Password :</td>
            <td>
                <asp:TextBox ID="txt_cpwd" runat="server" BorderColor="Black" 
                    TextMode="Password"></asp:TextBox>
                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txt_newpwd" ControlToValidate="txt_cpwd" 
                    ErrorMessage="enter correct password"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                   
                    
                    UpdateCommand="UPDATE [signup] SET [password] = @password WHERE [user_name] = @user_name" 
                    DeleteCommand="DELETE FROM [signup] WHERE [user_name] = @original_user_name" 
                    InsertCommand="INSERT INTO [signup] ([password], [user_name]) VALUES (@password, @user_name)" 
                    
                    SelectCommand="SELECT [password], [user_name] FROM [signup] WHERE ([user_name] = @user_name)" 
                    OldValuesParameterFormatString="original_{0}">
                    <SelectParameters>
                        <asp:Parameter Name="user_name" Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="original_user_name" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="txt_newpwd" Name="password" 
                            PropertyName="Text" Type="String" />
                        <asp:Parameter DefaultValue="Admin" Name="user_name" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="user_name" Type="String" />
                    </InsertParameters>
                    
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:Button ID="btn_reset" runat="server" Text="Reset Password" 
                    BorderColor="Black" />
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
