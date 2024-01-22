<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/online.Master" CodeBehind="demotest.aspx.vb" Inherits="Onliietest.demotest" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            width: 5px;
            height: 48px;
        }
        .style10
        {
            height: 48px;
            width: 90px;
        }
        .style11
        {
            height: 48px;
        }
        .style12
        {
            height: 48px;
            width: 117px;
        }
        .style14
        {
            height: 48px;
            width: 31px;
        }
        .style15
        {
            width: 45px;
            height: 23px;
        }
        .style16
        {
            font-size: large;
        }
        .style17
        {
            height: 48px;
            width: 164px;
        }
        .style18
        {
            height: 48px;
            width: 16px;
        }
        .style19
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table style="width: 100%">
        <tr>
            <td class="style7"> </td>
            <td class="style10"> <asp:Label ID="subject" runat="server" 
                    
                    style="color: #008000; font-size: xx-large; font-style: italic; font-family: 'Bell MT';"></asp:Label>
                </td>
            <td class="style14"> 
                 <asp:Timer ID="Timer1" runat="server" Interval="1000">
                </asp:Timer>
                </td>
            <td class="style12">  
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lb_t_min" runat="server" Font-Size="15pt" ForeColor="Red"></asp:Label>
                    :<asp:Label ID="lb_t_sec" runat="server" Font-Size="15pt">60</asp:Label>
                </ContentTemplate>
                </asp:UpdatePanel>
                        </td>
            <td class="style18" colspan="2"> 
                &nbsp;</td>
            <td class="style17"> 
                <span class="style16">Current Date</span> : 
                <asp:Label ID="lb_date" runat="server"></asp:Label>
                &nbsp;</td>
            <td class="style11"> 
                <span class="style16">Current Time:</span>
                <asp:Label ID="lb_time" runat="server"></asp:Label>
            </td>
            <td class="style11"> </td>
            <td class="style11"> 
                <asp:Label ID="lbl_user" runat="server" 
                    
                    style="color: #6600CC; font-size: xx-large; font-style: italic; font-family: 'Bell MT';"></asp:Label>
            </td>
            <td class="style11"> </td>
        </tr>
        <tr>
            <td colspan="3" class="style19">
                            &nbsp;<asp:Label ID="lbl_time" runat="server"></asp:Label>
            &nbsp;<asp:Label ID="lbl_negative" runat="server"></asp:Label>
            </td>
            <td class="style19">
    <asp:Label ID="lbl_mark" runat="server"></asp:Label>
            &nbsp;<asp:Label ID="lbl_qst" runat="server"></asp:Label>
       
            </td>
            <td class="style15">
                            </td>
            <td colspan="6" class="style19">
                <asp:Label ID="lable1" runat="server"></asp:Label>
                            <asp:Label ID="label2" runat="server"></asp:Label>
                <asp:Label ID="lable3" runat="server"></asp:Label>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="11">
                               &nbsp;</td>
        </tr>
    
          </table>
    
     <asp:GridView ID="GridView1"  ShowHeader="false"  
        AutoGenerateColumns = "false" runat="server" GridLines="None" 
        AllowSorting="True" Font-Names="Cambria Math" Font-Size="12pt" 
        ForeColor="Black">
         <RowStyle HorizontalAlign="Left" VerticalAlign="Top" />
        <Columns>
        <asp:TemplateField>
        <ItemTemplate>
        <asp:Label ID="qno" runat="server"  Text="1"> </asp:Label>
        <asp:Label ID="qid" runat="server" Text='<%#Eval("id") %>' Visible="False"> </asp:Label>
        <asp:Label ID="questions" runat="server" Text='<%#Eval("questions") %>'> </asp:Label>
            <br>
       <asp:RadioButton ID ="op1" runat="server" GroupName="g" Text='<%#Eval("op1") %>'   /> 
            <br> 
       <asp:RadioButton ID ="op2" runat="server" GroupName="g" Text='<%#Eval("op2") %>'  /> 
            <br> 
       <asp:RadioButton ID ="op3" runat="server" GroupName="g" Text='<%#Eval("op3") %>'   /> 
            <br> 
       <asp:RadioButton ID ="op4" runat="server" GroupName="g" Text='<%#Eval("op4") %>'   /> <hr />
       </ItemTemplate>
        </asp:TemplateField>
                </Columns>
         <AlternatingRowStyle BackColor="#0099CC" BorderColor="#000066" 
             Font-Names="Cambria Math" Font-Size="12pt" />
</asp:GridView>
    <asp:Button ID= "Button1" runat="server" Text="Submit" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [marks] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [marks] ([user_id], [date], [time], [total_marks], [obtain_marks]) VALUES (@user_id, @date, @time, @total_marks, @obtain_marks)" 
        SelectCommand="SELECT * FROM [marks]" 
        UpdateCommand="UPDATE [marks] SET [user_id] = @user_id, [date] = @date, [time] = @time, [total_marks] = @total_marks, [obtain_marks] = @obtain_marks WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_id" Type="String" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="total_marks" Type="String" />
            <asp:Parameter Name="obtain_marks" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="lbl_user" Name="user_id" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="lb_date" Name="date" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="lb_time" Name="time" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="Label4" Name="total_marks" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="lable3" Name="obtain_marks" 
                PropertyName="Text" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

