<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontFaculty.master" AutoEventWireup="true" CodeFile="StudentDetails.aspx.cs" Inherits="Faculty_StudentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="overflow:scroll;width:700px;height:700px">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Enroll_No">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Enroll_No" DataNavigateUrlFormatString="UpdateAttendance.aspx?EnrollNumber={0}&Month=July" DataTextField="First_Name" HeaderText="First Name" />
            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" />
            <asp:BoundField DataField="Enroll_No" HeaderText="Enroll_No" />
            <asp:BoundField DataField="Branch" HeaderText="Branch" />
            <asp:BoundField DataField="Admission_Date" HeaderText="Admission_Date" />
            <asp:BoundField DataField="StudentAddress" HeaderText="StudentAddress" />
            <asp:BoundField DataField="Email_Id" HeaderText="Email_Id" />
            <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" />
            <asp:BoundField DataField="GuardianContact" HeaderText="GuardianContact" />
            <asp:BoundField DataField="living_Status" HeaderText="living_Status" />
            <asp:BoundField DataField="Sex" HeaderText="Sex" />
            <asp:BoundField DataField="OverallAttendance" HeaderText="OverallAttendance" />
        </Columns>
        <PagerSettings Mode="NumericFirstLast" />
    </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString1 %>" SelectCommand="SELECT Student.Enroll_No, Student.First_Name, Student.Last_Name, Student.Branch, Student.Admission_Date, Student.StudentAddress, Student.Email_Id, Student.ContactNumber, Student.GuardianContact, Student.living_Status, Student.Sex, Attendance.OverallAttendance FROM Attendance INNER JOIN Student ON Attendance.Enrollment_No = Student.Enroll_No"></asp:SqlDataSource>

</asp:Content>

