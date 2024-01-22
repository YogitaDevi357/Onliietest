<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/online.Master" CodeBehind="login.aspx.vb" Inherits="Onliietest.loginpage" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
    .style5
    {
        width: 150px;
    }
</style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <table bgcolor="White">
        <tr>
            <td rowspan="8" class="style15">
                                <asp:Image ID="Image2" runat="server" Height="214px" 
                                    ImageUrl="~/images/inl.jpg" Width="407px" />
                            </td>
            <td colspan="2">
                <asp:Image ID="Image3" runat="server" Height="55px" 
                        ImageUrl="~/images/login.jpg" Width="243px" />
            </td>
        </tr>
        <tr>
            <td
                
                style="font-size: large; color: #009999; font-style: italic; font-weight: bold; " 
                class="style5">
                User Type</td>
            <td>
                <asp:DropDownList ID="ddl_utype" runat="server" AutoPostBack="True" 
                                    Width="155px">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Admin User</asp:ListItem>
                                    <asp:ListItem>Other User</asp:ListItem>
                                </asp:DropDownList>
                               
                                </td>
        </tr>
        <tr>
            <td 
                
                style="font-size: large; color: #009999; font-style: italic; font-weight: bold; " 
                class="style5">
                User Name</td>
            <td>
                               
                    <asp:TextBox ID="txt_uname" runat="server" Width="150px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txt_uname" ErrorMessage="*"></asp:RequiredFieldValidator>
                               
                    </td>
        </tr>
        <tr>
            <td 
                
                style="font-size: large; color: #009999; font-style: italic; font-weight: bold; " 
                class="style5">
                Password</td>
            <td>
                    <asp:TextBox ID="txt_pwd" runat="server" style="margin-bottom: 0px" Width="150px" 
                                    TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txt_pwd" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
        </tr>
        <tr>
            <td class="style5" 
                
                style="font-style: italic; font-weight: bold; color: #009999; ">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                                   
                              <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                                    
                                  style="font-size: medium; font-weight: 700; color: #009999; font-style: italic;" />
                                <asp:Label ID="lbl" runat="server"></asp:Label>
                                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                                <asp:HyperLink ID="hpl_fpwd" runat="server" 
                                    style="font-size: large; font-weight: 700; font-style: italic" 
                                    NavigateUrl="~/forgetpassword.aspx">Forgot 
                    password</asp:HyperLink>
                            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>   
</asp:Content>
