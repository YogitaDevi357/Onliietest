<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/online.Master" CodeBehind="signup.aspx.vb" Inherits="Onliietest.signuppage" 
    title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    
    <style type="text/css">
        .style6
        {
            width: 140px;
        }
        .style7
        {
            width: 210px;
        }
        .style9
        {
        width: 343px;
    }
    .style10
    {
        width: 210px;
        height: 26px;
    }
    .style11
    {
        width: 343px;
        height: 26px;
    }
    </style>
   
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
            
        
    
    
    
   
            <table class="style1" bgcolor="#CCCCFF">
               <tr>
                    <td class="style6" rowspan="10"   >
                        &nbsp;</td>
                    <td class="style7"  >
                        &nbsp;</td>
                    <td class="style9"   >
                        <asp:Image ID="Image2" runat="server" Height="55px" 
                            ImageUrl="~/images/images.png" Width="246px" 
                        style="text-align: center" />
                    </td>
                    <td rowspan="11" style="margin-left: 80px">
                        <asp:Image ID="Image1" runat="server" Height="285px" style="margin-left: 3px" 
                            Width="332px" ImageUrl="~/images/img.jpg" />
                    </td>
                </tr>
                <tr>
                    <td class="style7"  >
                        NAME&nbsp;:</td>
                    <td class="style9"   >
                        <asp:TextBox ID="txt_name" runat="server" BorderColor="Black" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="txt_name"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7"  >
                        FATHER NAME&nbsp;:</td>
                    <td class="style9"   >
                        <asp:TextBox ID="txt_fname" runat="server" Width="220px" BorderColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_fname"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7"  >
                        USER TYPE
                    &nbsp;:</td>
                    <td class="style9"  >
                        <asp:DropDownList ID="ddl_utype" runat="server" AutoPostBack="True" 
                            Width="220px" style="margin-bottom: 0px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Student</asp:ListItem>
                            <asp:ListItem>Teacher</asp:ListItem>
                            <asp:ListItem>IT professional</asp:ListItem>
                            <asp:ListItem>Employee</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="*" ControlToValidate="ddl_utype"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7"  >
                        CONTACT NUMBER&nbsp;:</td>
                    <td class="style9"  >
                        <asp:TextBox ID="txt_cnumber" runat="server" Width="220px" MaxLength="10" 
                            BorderColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="*" ControlToValidate="txt_cnumber"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style7"  >
                        EMAIL&nbsp;:</td>
                    <td class="style9"  >
                        <asp:TextBox ID="txt_email" runat="server" Width="220px" BorderColor="Black"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ErrorMessage="*" ControlToValidate="txt_email"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txt_email" ErrorMessage="Enter valid Email" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            Width="220px"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style10"  >
                        USER NAME&nbsp;:</td>
                    <td class="style11"  >
                        <asp:TextBox ID="txt_uname" runat="server" Width="220px" BorderColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="*" ControlToValidate="txt_uname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7"  >
                        PASSWORD&nbsp;:</td>
                    <td class="style9"  >
                        <asp:TextBox ID="txt_password" runat="server" Width="220px" TextMode="Password" 
                            BorderColor="Black"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ErrorMessage="*" ControlToValidate="txt_password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7"  >
                        CONFIRM PASSWORD&nbsp;:</td>
                    <td class="style9" >
                        <asp:TextBox ID="txt_cpassword" runat="server" Width="220px" 
                            TextMode="Password" BorderColor="Black"></asp:TextBox>
                    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txt_password" ControlToValidate="txt_cpassword" 
                            ErrorMessage="enter correct password" Width="150px"></asp:CompareValidator>
                        &nbsp;&nbsp;
                    </td>
                </tr>
              
                <tr>
                    <td class="style7"  > 
                        &nbsp;<td class="style9" 
                         >
                       <asp:Button ID="btn_signup" 
                            runat="server" Text="SIGNUP" BorderColor="Black" Width="80px" />
                       <asp:Label 
                            ID="lbl_id" runat="server"></asp:Label>
                    </td>
                        &nbsp;</td>
                    </tr>
            </table>
        
    
    
    
   
    </asp:Content>