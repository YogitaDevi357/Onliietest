<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/online.Master" CodeBehind="dbms.aspx.vb" Inherits="Onliietest.dbms" 
    title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style12
        {
            color: #000080;
            font-weight: bold;
        }
    .style13
    {
        font-weight: normal;
        font-size: large;
    }
    .style14
    {
        font-size: large;
    }
    .style15
    {
        color: #FF6699;
    }
    .style16
    {
        text-align: justify;
        font-family: georgia, palatino;
        font-size: large;
    }
    .style17
    {
        text-align: justify;
        font-family: georgia, palatino;
        font-weight: normal;
        font-size: large;
    }
    .style18
    {
        font-weight: normal;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td style="font-size: xx-large">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style12"> DBMS</span></td>
        </tr>
        <tr>
            <td style="font-size: xx-large; " class="style15">
                <p class="style16">
                    A database 
                    management system is the software system that allows users to define, create and 
                    maintain a database and provides controlled access to the data.</p>
                <p style="text-align: justify;">
                    <span style="font-family: georgia,palatino; " class="style14">A Database 
                    Management System (DBMS) is basically a collection of programs that enables 
                    users to store, modify, and extract information&nbsp; from a database as per the 
                    requirements. DBMS is an intermediate layer between programs and the data. 
                    Programs access the DBMS, which then accesses the data. There are different 
                    types of DBMS ranging from small systems that run on personal computers to huge 
                    systems that run on mainframes. The following are main examples of database 
                    applications:</span><span class="style14"> </span>
                </p>
                <p style="text-align: justify;">
                    <span style="font-family: georgia,palatino; " class="style14">• Computerized 
                    library systems</span><span class="style14"> </span>
                </p>
                <p style="text-align: justify;">
                    <span style="font-family: georgia,palatino; " class="style14">• Automated teller 
                    machines</span><span class="style14"> </span>
                </p>
                <p style="text-align: justify;">
                    <span style="font-family: georgia,palatino; " class="style14">• Flight 
                    reservation systems</span><span class="style14"> </span>
                </p>
                <p style="text-align: justify;">
                    <span style="font-family: georgia,palatino; " class="style14">• Computerized 
                    parts inventory systems</span><span class="style14"> </span>
                </p>
                <p style="text-align: justify;">
                    <span style="font-family: georgia,palatino; " class="style14">A database 
                    management system is a piece of software that provides services for accessing a 
                    database, while maintaining all the required features of the data. Commercially 
                    available Database management systems in the market are dbase, FoxPro, IMS and 
                    Oracle, MySQL, SQL Servers and DB2 etc.</span><span class="style14"> </span>
                </p>
                <p style="text-align: justify;">
                    <span style="font-family: georgia,palatino; " class="style14">These systems 
                    allow users to create update, and extract information from their databases.</span><span 
                        class="style14"> </span>
                </p>
                <p class="style16">
                    Compared to a 
                    manual filing system, the biggest advantages to a computerized database system 
                    are speed, accuracy, and&#39; accessibility. 
                </p>
                <h2 class="style17">
                    <strong class="style18">Who makes 
                    this database software?</strong></h2>
                <p style="text-align: justify;">
                    <span style="font-family: georgia,palatino; " class="style14">There are a lot of 
                    database software manufacturers out there and a wide range of prices, sizes, 
                    speeds and functionalities. At the lower end of the scale are personal database 
                    software products like Microsoft Access, which is designed to be used by 
                    individuals or small companies relatively little data. User friendliness and 
                    ease of use are the priority rather than speed and scalability (in other words, 
                    it works well when you have 100 records but not when you have 100,000). At the 
                    higher end are full-fledged enterprise solutions, such as Oracle Enterprise 
                    Edition. These database software products can handle millions of data entries 
                    and are fast and efficient. They have ·many optimization and performance tools 
                    and generally require a Database Administrator (DBA) to look after them. 
                    Products in this range can also be very expensive.</span><span class="style14">
                    </span>
                </p>
                <p style="text-align: justify;">
                    <span style="font-family: georgia,palatino; " class="style14">In the middle are 
                    products like Microsoft SQL Server, which is a logical upgrade from Microsoft 
                    Access for Windows users. There are also several very good free database 
                    software products, such as MySQL and PostgreSQL. These are lacking on the user 
                    interface side, but can certainly compete on speed and scalability.</span><span 
                        class="style14"> </span>
                </p>
                <h2 class="style17">
                    <strong class="style18">
                    Developments and Evolution of DBMS Concept</strong></h2>
                <p style="text-align: justify;">
                    <span style="font-family: georgia,palatino; " class="style14">We have already 
                    seen that the predecessor to the DBMS was the file-based system. However, there 
                    was never a time when the database approach began and the file-based system 
                    ceased. In fact, the file-based system still exists in specific areas. It has 
                    been suggested that the DBMS has its roots in the 1960s Apollo moon-landing 
                    project, which was initiated in response to USA&#39;s President Kennedy&#39;s objective 
                    of landing a man on the moon by the end of that decade. At that time there was 
                    no system available that would be able to handle and manage the vast amounts of 
                    information that the project would generate. As a result, North American 
                    Aviation (NAA, now Rockwell International), the prime contractor for the 
                    project, developed software known as GUAM (Generalized Update Access Method). 
                    GUAM was based on the concept that smaller components come together as parts of 
                    larger components, and so on, until the final product is assembled. This 
                    structure, which confirms to an upside down tree, is also known as a 
                    hierarchical structure.</span><span class="style14"> </span>
                </p>
                <p class="style16">
                    In the mid 1960s, 
                    IBM joined NAA to develop GUAM into what is now known as IMS (Information 
                    Management System). The reason why IBM restricted IMS to the management of 
                    hierarchies of records was to allow the use of serial storage devices, most 
                    notably magnetic tape, which was a market requirement at that time. This 
                    restriction was subsequently dropped. Although one of the earliest commercial 
                    DBMS, IMS is still main hierarchical DBMS used by most large mainframe 
                    installations</p>
            </td>
        </tr>
        </table>
</asp:Content>
