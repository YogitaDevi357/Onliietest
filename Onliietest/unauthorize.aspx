<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/online.Master" CodeBehind="unauthorize.aspx.vb" Inherits="Onliietest.unauthorize" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>You are not allowed on that page
please 
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">click here</asp:HyperLink> to goto 
    login page </h1>
</asp:Content>
