<%@ Page Title="Manage Student Accounts" Language="C#" MasterPageFile="~/MasterPages/FrontManagement.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Management_Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="overflow:scroll;width:700px;height:inherit">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Enroll_No" DataSourceID="EntityDataSource1">
        
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    
                </td>
                <td>
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="Enroll_NoLabel1" runat="server" Text='<%# Eval("Enroll_No") %>' Enabled="false" />
                </td>
                <td>
                    <asp:TextBox ID="First_NameTextBox" runat="server" Text='<%# Bind("First_Name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Middle_NameTextBox" runat="server" Text='<%# Bind("Middle_Name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Last_NameTextBox" runat="server" Text='<%# Bind("Last_Name") %>' />
                </td>
               
                <td>
                    <asp:TextBox ID="BranchTextBox" runat="server" Text='<%# Bind("Branch") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Admission_DateTextBox" runat="server" Text='<%# Bind("Admission_Date") %>' Enabled="false" />
                </td>
                <td>
                    <asp:TextBox ID="StudentAddressTextBox" runat="server" Text='<%# Bind("StudentAddress") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Email_IdTextBox" runat="server" Text='<%# Bind("Email_Id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ContactNumberTextBox" runat="server" Text='<%# Bind("ContactNumber") %>' />
                </td>
                <td>
                    <asp:TextBox ID="GuardianContactTextBox" runat="server" Text='<%# Bind("GuardianContact") %>' />
                </td>
                <td>
                    <asp:TextBox ID="living_StatusTextBox" runat="server" Text='<%# Bind("living_Status") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                </td>
                <td>
                    <asp:TextBox ID="YearTextBox" runat="server" Text='<%# Bind("Year") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SecurityQuestionTextBox" runat="server" Text='<%# Bind("SecurityQuestion") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SecurityAnswerTextBox" runat="server" Text='<%# Bind("SecurityAnswer") %>' />
                </td>
             
                <td>
                    <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <ItemSeparatorTemplate>
            <br />
            <br/ />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                   
                </td>
                <td>
                     <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Enroll_NoLabel" runat="server" Text='<%# Eval("Enroll_No") %>' />
                </td>
                <td>
                    <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Middle_NameLabel" runat="server" Text='<%# Eval("Middle_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("Last_Name") %>' />
                </td>
               
                <td>
                    <asp:Label ID="BranchLabel" runat="server" Text='<%# Eval("Branch") %>' />
                </td>
                <td>
                    <asp:Label ID="Admission_DateLabel" runat="server" Text='<%# Eval("Admission_Date") %>' />
                </td>
                <td>
                    <asp:Label ID="StudentAddressLabel" runat="server" Text='<%# Eval("StudentAddress") %>' />
                </td>
                <td>
                    <asp:Label ID="Email_IdLabel" runat="server" Text='<%# Eval("Email_Id") %>' />
                </td>
                <td>
                    <asp:Label ID="ContactNumberLabel" runat="server" Text='<%# Eval("ContactNumber") %>' />
                </td>
                <td>
                    <asp:Label ID="GuardianContactLabel" runat="server" Text='<%# Eval("GuardianContact") %>' />
                </td>
                <td>
                    <asp:Label ID="living_StatusLabel" runat="server" Text='<%# Eval("living_Status") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                </td>
                <td>
                    <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
                </td>
                <td>
                    <asp:Label ID="SecurityQuestionLabel" runat="server" Text='<%# Eval("SecurityQuestion") %>' />
                </td>
                <td>
                    <asp:Label ID="SecurityAnswerLabel" runat="server" Text='<%# Eval("SecurityAnswer") %>' />
                </td>                
                <td>
                    <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">Enroll_No</th>
                                <th runat="server">First_Name</th>
                                <th runat="server">Middle_Name</th>
                                <th runat="server">Last_Name</th>
                                <th runat="server">University_Roll_no</th>
                                <th runat="server">Branch</th>
                                <th runat="server">Admission_Date</th>
                                <th runat="server">StudentAddress</th>
                                <th runat="server">Email_Id</th>
                                <th runat="server">ContactNumber</th>
                                <th runat="server">GuardianContact</th>
                                <th runat="server">living_Status</th>
                                <th runat="server">Password</th>
                                <th runat="server">Year</th>
                                <th runat="server">SecurityQuestion</th>
                                <th runat="server">SecurityAnswer</th>
                                <th runat="server">Image</th>
                                <th runat="server">Sex</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="10">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        
    </asp:ListView>
        </div>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=CollegeString" DefaultContainerName="CollegeString" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Students">
    </asp:EntityDataSource>

</asp:Content>

