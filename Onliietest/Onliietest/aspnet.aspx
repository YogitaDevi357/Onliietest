<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/online.Master" CodeBehind="aspnet.aspx.vb" Inherits="Onliietest.aspnet" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style12
        {
            font-size: xx-large;
        }
        .style13
        {
            color: #FF00FF;
        }
    .style14
    {
        color: #CC99FF;
    }
    .style15
    {
        color: #6699FF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td height="50" style="color: #0000FF; font-size: larger; font-weight: 700">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style12">&nbsp;<span class="style13">ASP.NET INTRODUCTION</span>&nbsp;</span></td>
        </tr>
        <tr>
            <td style="font-size: large">
                <p class="style15">
                    ASP.NET is a set of Web development tools offered by Microsoft. Programs like 
                    Visual Studio .NET and Visual Web Developer allow Web developers to create 
                    dynamic websites using a visual interface. Of course, programmers can write 
                    their own code and scripts and incorporate it into ASP.NET websites as well. 
                    Though it often seen as a successor to Microsoft&#39;s ASP programming technology, 
                    ASP.NET also supports Visual Basic.NET, JScript .NET and open-source languages 
                    like Python and Perl.</p>
                <p class="style15">
                    ASP.NET is built on the .NET framework, which provides an application program 
                    interface (API) for software programmers. The .NET development tools can be used 
                    to create applications for both the Windows operating system and the Web. 
                    Programs like Visual Studio .NET provide a visual interface for developers to 
                    create their applications, which makes .NET a reasonable choice for designing 
                    Web-based interfaces as well.</p>
                <p class="style15">
                    In order for an ASP.NET website to function correctly, it must be published to a 
                    Web server that supports ASP.NET applications. Microsoft&#39;s Internet Information 
                    Services (IIS) Web server is by far the most common platform for ASP.NET 
                    websites. While there are some open-source options available for Linux-based 
                    systems, these alternatives often provide less than full support for ASP.NET 
                    applications.</p>
            </td>
        </tr>
    </table>
</asp:Content>
