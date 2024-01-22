<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/online.Master" CodeBehind="demotest.aspx.vb" Inherits="Onliietest.demotest" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table style="width: 100%">
        <tr>
            <td> &nbsp;</td>
            <td> <asp:Label ID="subject" runat="server" 
                    style="color: #008000; font-size: x-large; font-style: italic"></asp:Label>
                </td>
            <td> 
                <asp:Label ID="lable1" runat="server"></asp:Label>
                </td>
            <td> &nbsp;<asp:Label ID="label2" runat="server"></asp:Label>
                        </td>
            <td> 
                <asp:Label ID="lable3" runat="server"></asp:Label>
            </td>
            <td> 
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td> &nbsp;</td>
            <td> 
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                 <asp:Label ID="lb_t_min" runat="server" Font-Size="15pt" ForeColor="Red"></asp:Label>
                    :<asp:Label ID="lb_t_sec" runat="server" Font-Size="15pt">60</asp:Label>
                 <asp:Timer ID="Timer1" runat="server" Interval="1000">
                </asp:Timer>
                </ContentTemplate>
                </asp:UpdatePanel>
                <br />
               
            </td>
            <td> 
                <asp:Label ID="lb_date" runat="server"></asp:Label>
            &nbsp;Current time:
                <asp:Label ID="lb_time" runat="server"></asp:Label>
            </td>
            <td> &nbsp;</td>
            <td> 
                <asp:Label ID="lbl_user" runat="server"></asp:Label>
            </td>
            <td> &nbsp;</td>
        </tr>
        <tr>
            <td colspan="12" style="height: 22px">
                            Time of&nbsp; exam&nbsp; :     <asp:Label ID="lbl_time" runat="server"></asp:Label>
            &nbsp;Min&#39;s</td>
        </tr>
        <tr>
            <td colspan="12">
                Negative mark for each Wrong answer wil be :
    <asp:Label ID="lbl_negative" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="12">
                Maximum mark for each right answer wil be :
    <asp:Label ID="lbl_mark" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="12">
                Total number of question will be
                :
    <asp:Label ID="lbl_qst" runat="server"></asp:Label>
       
            </td>
        </tr>
        <tr>
            <td colspan="12">
                               &nbsp;</td>
        </tr>
    
          </table>
    
     <asp:GridView ID="GridView1"  ShowHeader="false"  
        AutoGenerateColumns = "false" runat="server" GridLines="None" 
        AllowSorting="True" Font-Names="Cambria Math" Font-Size="12pt">
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
    <asp:Button ID="Button1" runat="server" Text="Button" />
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

