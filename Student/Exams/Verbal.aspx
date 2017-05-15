<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Verbal.aspx.cs" Inherits="Student_Exams_Verbal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript" >
         var tim;

         var min = 9;
         var sec = 59;
         var f = new Date();

         function f1() {
             f2();

         }
         function f2() {
             if (parseInt(sec) > 0) {
                 sec = parseInt(sec) - 1;
                 document.getElementById("showtime").innerHTML = "Your Left Time  is :" + min + " Minutes ," + sec + " Seconds";
                 tim = setTimeout("f2()", 1000);
             }
             else {
                 if (parseInt(sec) == 0) {
                     min = parseInt(min) - 1;
                     if (parseInt(min) == -1) {
                         clearTimeout(tim);
                         document.getElementById('<%=Button1.ClientID%>').click();
                         //location.href = "default.aspx";
                     }
                     else {
                         sec = 10;
                         document.getElementById("showtime").innerHTML = "Your Left Time  is :" + min + " Minutes ," + sec + " Seconds";
                         tim = setTimeout("f2()", 1000);
                     }
                 }

             }
         }

    </script>
</head>
<body onload="f1()">
    <form id="form1" runat="server">
    
     <div id="showtime" style="background-color:#39dbcc;border:solid;border-width:5px;"> 
        
     </div><br />
        <div>
             <asp:Button ID="Button1" runat="server" Text="End Test" OnClick="Button1_Click" />
        </div>
        <br />
        <br />
          <div style="overflow:scroll;height:700px"    >
          <asp:ListView ID="ListView1" runat="server" DataKeyNames="QuestionId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
        <ItemTemplate>
            <span style="">                
          
            Question:
            <asp:Label ID="QuestionStatementLabel" runat="server" Text='<%# Eval("QuestionStatement") %>' />
            <br />
            A:
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="answer" Text='<%# Eval("Option1") %>'/>
            
            <br />
            B:
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="answer" Text='<%# Eval("Option2") %>'/>
           
            <br />
            C:
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="answer" Text='<%# Eval("Option3") %>'/>
          
            <br />
            D:
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="answer" Text='<%# Eval("Option4") %>'/>
            
            <br />
           
            <asp:Label ID="CorrectOptionLabel" runat="server" Text='<%# Eval("CorrectOption") %>' Visible="false" />
            <br />
            
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
              
            </div>
        </LayoutTemplate>
        </asp:ListView>
    
   </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString1 %>" SelectCommand="SELECT TOP (10) QuestionId, Option1, Option2, Option3, Option4, CorrectOption, QuestionStatement FROM VerbalQuestions ORDER BY NEWID()"></asp:SqlDataSource>
    <br />
   
   
   
    </form>
</body></html>
