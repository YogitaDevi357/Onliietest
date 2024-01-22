<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/online.Master" CodeBehind="cprogramming.aspx.vb" Inherits="Onliietest.cprogramming" 
    title="c programming" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style12
        {
            color: #CC00FF;
        }
        .style13
        {
            font-size: large;
        }
    .style14
    {
        font-weight: normal;
    }
    .style15
    {
        font-size: x-large;
    }
    .style16
    {
        font-size: large;
        font-weight: normal;
        color: #339933;
    }
    .style17
    {
        color: #CC6699;
    }
    .style18
    {
        font-size: large;
        color: #339933;
    }
    .style19
    {
        color: #339933;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td style="font-size: xx-large; font-weight: 700">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C PROGRAMMING&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <p class="style18">
                                    A high level programming language developed by Dennis Ritchie at Bell Labs in 
                                    the mid 1970s. Although originally designed as a systems programming language, C 
                                    has proved to be a powerful and flexible language that can be used for a variety 
                                    of applications, from business programs to engineering. C is a particularly 
                                    popular language for personal computer programmes because it is relatively small 
                                    -- it requires less memory than other languages.</p>
                                <p class="style18">
                                    The first major program written in C was the UNIX operating system , and for many years C was considered to be 
                                    inextricably linked with UNIX. Now, however, C is an important language 
                                    independent of UNIX.</p>
                                <p class="style18">
                                    Although it is a high-level language, C is much closer to 
                                    assembly language than are most other high-level languages. This closeness to 
                                    the underlying machine language allows C programmers to write very efficient 
                                    code. The low-level nature of C, however, can make the language difficult to use 
                                    for some types of applications</p>
                                <h2 class="style16">
                                    C programming code
                                </h2>
                                <div class="geshifilter">
                                    <pre class="cgeshifilter-c" style="font-family:monospace;"><span 
                                        class="style18">#include&lt;stdio.h&gt;/span>
&nbsp;
</span><span 
                                        class="style13" style="color: #339933;">int</span><span 
                                        class="style18"> main</span><span 
                                        class="style13" style="color: #339933;">()</span><span 
                                        class="style19">
</span><span 
                                        class="style13" style="color: #339933;"><span class="style17">{</span>
</span><span 
                                        class="style18">   </span><span 
                                        class="style13" style="color: #339933;">int<span 
                                        class="style13"> a</span>,<span 
                                        class="style13"> b</span>,<span 
                                        class="style13"> c</span><span class="style15">;</span><span 
                                        class="style19">
&nbsp;
</span><span 
                                        class="style13">   </span>printf(<span 
                                        class="style13">&quot;Enter two numbers to add</span>\n<span 
                                        class="style13">&quot;</span>);<span 
                                        class="style13">
   </span>scanf(&quot;%d%d&quot;,&amp;a,&amp;b)<span class="style15">;</span><span class="style19">
&nbsp;
</span><span 
                                        class="style13">   c </span>=<span 
                                        class="style13"> a </span>+<span 
                                        class="style13"> b</span><span class="style15">;</span><span 
                                        class="style19">
&nbsp;
</span><span 
                                        class="style13">   </span>printf(<span 
                                        class="style13">&quot;Sum of entered numbers = %d</span>\n<span 
                                        class="style13">&quot;</span>,c)<span class="style15">;</span><span 
                                        class="style19">
&nbsp;
</span><span 
                                        class="style13">   </span>return 0;<span 
                                        class="style13">
</span><span style="color: #009900;">}</span></pre>
                </div>
                <p>
                    &nbsp;</p>
            </td>
        </tr>
    </table>
</asp:Content>
