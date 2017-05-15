<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontStudent.master" AutoEventWireup="true" CodeFile="Exams.aspx.cs" Inherits="Student_Exams_Exams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="PaperName" DataValueField="PaperName" OnDataBound="DropDownList1_DataBound" Width="156px">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Begin  Test" />
    <br />
    <br />
    If you cannot see a specific test here please contact a faculty member for further information.<br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString1 %>" SelectCommand="SELECT PaperName FROM ExamSchedule where IsOpen='true'"></asp:SqlDataSource>
</asp:Content>

