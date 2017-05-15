<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontFaculty.master" AutoEventWireup="true" CodeFile="CreateExamSession.aspx.cs" Inherits="Faculty_CreateExamSession" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">   
    <div id="ScheduledExams" style="table-layout:auto;width:700px;border:2px solid ">
         <p>Currently Scheduled Exams:</p>
    <br />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="PaperName" DataSourceID="SqlDataSource2" OnItemCommand="ListView3_ItemCommand">           
            <EmptyDataTemplate>
                No Scheduled Papers Availaible
            </EmptyDataTemplate>            
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="">Paper: <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' Font-Bold="true" />
                    <br />
                    <asp:Label ID="PaperNameLabel" runat="server" Text='<%# Eval("PaperName") %>' Visible="false" />
                     Paper Scheduled for:
                    <asp:Label ID="DateScheduledLabel" runat="server" Text='<%# ((DateTime)Eval("DateScheduled")).ToShortDateString() %>' Font-Bold="true" /><br />
                    Number of Questions to Attempt:
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("NumQuestions") %>' Font-Bold="true" />
                    <br /><br />
                    <asp:Button ID="DescheduleButton" runat="server" Text="Remove from Schedule" CommandName="Deschedule" />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="">
                </div>
            </LayoutTemplate>     
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString1 %>" SelectCommand="select * from ExamSchedule where IsScheduled='true' "></asp:SqlDataSource>

    </div>
    <br />    
    <div id="AvailaibleExams" style="table-layout:auto;width:700px;border:2px solid">
         <p>Availaible Exams:</p>
    
        <asp:ListView ID="ListView2" runat="server" DataKeyNames="PaperName" DataSourceID="SqlDataSource1" OnItemDataBound="ListView2_ItemDataBound" OnItemCommand="ListView2_ItemCommand">       
            <EmptyDataTemplate>
                No Availaible Exams
            </EmptyDataTemplate>            
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <asp:label ID="IdLabel" runat="server" Text='<%# Eval("PaperName") %>' Visible="false"></asp:label>
                <li style="">Paper:<asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' Font-Bold="True" />
                    <br />             
                    <asp:Label ID="IsScheduledLabel" runat="server" Text='<%# Eval("IsScheduled") %>' Font-Bold="true" />&nbsp; <asp:Label ID="DateScheduledLabel" runat="server" Text='<%# Eval("DateScheduled") %>' Font-Bold="true" Visible="false" />
                    <br />             
                    <asp:Label ID="IsOpenLabel" runat="server" Text='<%# Eval("IsOpen") %>' Font-Bold="true" />
                    <br />
                    <asp:TextBox ID="ScheduleDateBox" runat="server" TextMode="Date"></asp:TextBox><asp:Label ID="DateSelectLabel" runat="server" Text="Select a date" Visible="false"></asp:Label><br />
                    <asp:Label ID="DateWarningLabel" Visible="false" runat="server" Text="Invalid Date"></asp:Label>
                    <asp:Label ID="text" runat="server" Text="Number Of Questions to Attempt(Between 5 and 10):"></asp:Label><br />
                    <asp:TextBox ID="NumQuestionsBox" runat="server" Text='<%# Eval("NumQuestions") %>' Width="40px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Invalid Number" ControlToValidate="NumQuestionsBox" Display="Dynamic" Type="Integer" MaximumValue="10" MinimumValue="5"></asp:RangeValidator>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Schedule Exam" CommandName="Schedule"/>
                    <br />                  
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="">
                </div>
            </LayoutTemplate>            
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString1 %>" SelectCommand="SELECT * FROM [ExamSchedule]"></asp:SqlDataSource>
    </div>
    <br />   
    <div id="OpenExams" style="table-layout:auto;width:700px;border:2px solid">
         <p>Exams Scheduled for Today:</p><br />
        <asp:ListView ID="ListView4" runat="server" DataKeyNames="PaperName" DataSourceID="SqlDataSource3" OnItemCommand="ListView4_ItemCommand">
            
            
            <EmptyDataTemplate>
                No Exams Scheduled For Today.
            </EmptyDataTemplate>
            
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="">
                    Paper:<asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' Font-Bold="true" />
                    <asp:Label ID="PaperNameLabel" runat="server" Text='<%# Eval("PaperName") %>' Visible="false" />    
                    <br />
                    <asp:Label ID="NumQuestionsLabel" runat="server" Text='<%# Eval("NumQuestions") %>' Font-Bold="true"></asp:Label>         
                    <asp:Button ID="DescheduleButton2" runat="server" Text="Deschedule Test" CommandName="Deschedule2" />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="">
                </div>
            </LayoutTemplate>
            
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString1 %>" SelectCommand="select * from ExamSchedule where IsOpen='true'"></asp:SqlDataSource>

    </div>
</asp:Content>

