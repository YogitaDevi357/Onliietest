<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/online.Master" CodeBehind="testpage.aspx.vb" Inherits="Onliietest.testpage" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table><asp:Label ID="lbl_sub" runat="server" 
            style="color: #009999; font-size: x-large; font-style: italic"></asp:Label></table>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <li style="background-color: #DCDCDC;color: #000010;">Qst:
                <asp:Label ID="questionsLabel" runat="server" Text='<%# Eval("questions") %>' />
                 <br />
               
                A: <asp:RadioButton ID="RadioButton1" runat="server" Text='<%# Eval("op1") %>' GroupName="G2" />
                
                B:
                <asp:RadioButton ID="RadioButton2" runat="server" Text='<%# Eval("op2") %>' GroupName="G2" />
               
                C:
                <asp:RadioButton ID="RadioButton3" runat="server" Text='<%# Eval("op3") %>' GroupName="G2"/>
               
                D:
                <asp:RadioButton ID="RadioButton4" runat="server" Text='<%# Eval("op4") %>' GroupName="G2"/>
                 <br /> <br />
              
            </li>
        </ItemTemplate>
        <AlternatingItemTemplate>Qst:
            <asp:Label ID="questionsLabel" runat="server" Text='<%# Eval("questions") %>'></asp:Label> <br />
            
            A:
            <asp:RadioButton ID="RadioButton1" runat="server" Text='<%# Eval("op1") %>' GroupName="G1" />
          
            B:
            <asp:RadioButton ID="RadioButton2" runat="server" Text='<%# Eval("op2") %>' GroupName="G1" />
            
            C:
            <asp:RadioButton ID="RadioButton3" runat="server" Text='<%# Eval("op3") %>'  GroupName="G1" />
           
            D:
            <asp:RadioButton ID="RadioButton4" runat="server" Text='<%# Eval("op4") %>' GroupName="G1"/>
            <br>
            </br>
            <br></br>
        </AlternatingItemTemplate>
        
        
        <LayoutTemplate>
            <ul ID="itemPlaceholderContainer" runat="server" 
                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
              
               
                    <li ID="itemPlaceholder" runat="server"></li>
                    <br />
               
                </ul>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            
            
            
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [questions], [op1], [op2], [op3], [op4] FROM [ADDQST] WHERE ([type] = @type)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbl_sub" DefaultValue="ia" Name="type" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="btn_submit" runat="server" Text="Submit" />
</asp:Content>
