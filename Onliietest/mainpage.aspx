<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/online.Master" CodeBehind="mainpage.aspx.vb" Inherits="Onliietest.mainpage1" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            width: 168px;
        }
        .style5
        {
            width: 104px;
            height: 56px;
        }
        .style6
        {
            width: 175px;
            height: 56px;
        }
        .style8
        {
            width: 172px;
            height: 77px;
        }
        .style9
        {
            width: 104px;
            height: 60px;
        }
        .style11
        {
            height: 77px;
        width: 167px;
    }
        .style12
        {
            width: 104px;
            height: 77px;
        }
        .style13
        {
            height: 29px;
        width: 167px;
    }
        .style17
        {
            width: 172px;
            height: 29px;
        }
        .style18
        {
            width: 104px;
            height: 29px;
        }
        .style21
        {
            width: 172px;
            height: 22px;
        }
        .style22
        {
            height: 22px;
        }
        .style27
    {
        height: 28px;
    }
    .style28
    {
        height: 9px;
    }
    .style32
    {
        width: 175px;
        height: 77px;
    }
    .style33
    {
        width: 175px;
        height: 29px;
    }
    .style34
    {
        width: 175px;
        height: 22px;
    }
    .style35
    {
        width: 167px;
        height: 60px;
    }
    .style36
    {
        height: 22px;
        width: 167px;
    }
    .style37
    {
        width: 168px;
        height: 77px;
    }
    .style38
    {
        width: 168px;
        height: 29px;
    }
    .style39
    {
        width: 168px;
        height: 22px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
                <tr>
                    <td class="style27" colspan="5">
                        </td>
                    
                </tr>
                <tr>
                    <td class="style37" >
                        <asp:HyperLink ID="hl_it" runat="server"  
                            NavigateUrl="~/informationtechnology.aspx" Width="150px" Height="50px" 
                            ImageUrl="~/images/infotech.jpg">Information technology</asp:HyperLink>
                    </td>
                    <td class="style32">
                        <asp:HyperLink ID="hl_c" runat="server" NavigateUrl="~/cprogramming.aspx" 
                            Width="150px" Height="50px" ImageUrl="~/images/c.jpg">C Programming</asp:HyperLink>
                    </td>
                    <td class="style11">
                        <asp:HyperLink ID="hl_digital" runat="server" NavigateUrl="~/digital.aspx" 
                            Width="150px" Height="50px" ImageUrl="~/images/digitall.png">Digital</asp:HyperLink>
                    </td>
                    <td class="style8">
                        <asp:HyperLink ID="hl_dbms" runat="server" NavigateUrl="~/dbms.aspx" 
                            Width="150px" ImageUrl="~/images/dbms.png" Height="50px">DBMS</asp:HyperLink>
                    </td>
                    <td class="style12">
                        <asp:HyperLink ID="hl_ia" runat="server" 
                            NavigateUrl="~/internetapplication.aspx" Width="150px" 
                            ImageUrl="~/images/interapp.jpg" Height="50px">Internet Application</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style38" >
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl="~/informationtechnology.aspx" Width="110px">INFORMATION TECHNOLOGY</asp:HyperLink>
                    </td>
                    <td class="style33">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/cprogramming.aspx">C 
                        PROGRAMMING</asp:HyperLink>
                    </td>
                    <td class="style13">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/digital.aspx">DIGITAL</asp:HyperLink>
                    </td>
                    <td class="style17">
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/dbms.aspx">DBMS</asp:HyperLink>
                    </td>
                    <td class="style18">
                        <asp:HyperLink ID="HyperLink5" runat="server" 
                            NavigateUrl="~/internetapplication.aspx">INTERNET APPLICATION</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style28" width="150" colspan="5">
                        </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:HyperLink ID="hl_ds" runat="server" NavigateUrl="~/datastructure.aspx" 
                            Width="150px" ImageUrl="~/images/datastruct.jpg" Height="50px">Data Structure</asp:HyperLink>
                    </td>
                    <td class="style6">
                        <asp:HyperLink ID="hl_asp" runat="server" NavigateUrl="~/aspnet.aspx" 
                            Width="150px" ImageUrl="~/images/aspnetapp.png" Height="50px">ASP.Net</asp:HyperLink>
                    </td>
                    <td class="style35">
                        <asp:HyperLink ID="hl_os" runat="server" NavigateUrl="~/operatingsystem.aspx" 
                            Width="150px" ImageUrl="~/images/op.jpg" Height="50px">Operating System</asp:HyperLink>
                    </td>
                    <td class="style9" style="width: 172px">
                        <asp:HyperLink ID="hl_java" runat="server" NavigateUrl="~/java.aspx" 
                            Width="150px" ImageUrl="~/images/java.jpg" Height="50px">Java</asp:HyperLink>
                    </td>
                    <td class="style5">
                        <asp:HyperLink ID="hl_online" runat="server" NavigateUrl="~/login.aspx" 
                            Width="150px" ImageUrl="~/images/on.jpg" Height="50px">Online 
                        Test</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style39">
                        <asp:HyperLink ID="HyperLink6" runat="server" 
                            NavigateUrl="~/datastructure.aspx">DATA STRUCTURE</asp:HyperLink>
                    </td>
                    <td class="style34">
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/aspnet.aspx">ASP.NET</asp:HyperLink>
                    </td>
                    <td class="style36">
                        <asp:HyperLink ID="HyperLink8" runat="server" 
                            NavigateUrl="~/operatingsystem.aspx">OPERATING SYSTEM</asp:HyperLink>
                    </td>
                    <td class="style21">
                        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/java.aspx">JAVA</asp:HyperLink>
                    </td>
                    <td class="style22">
                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/login.aspx">ONLINE 
                        TEST</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style22" colspan="5">
                        &nbsp;</td>
                </tr>
                </table>
</asp:Content>
