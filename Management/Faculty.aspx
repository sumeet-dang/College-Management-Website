<%@ Page Title="Manage Faculty Accounts" Language="C#" MasterPageFile="~/MasterPages/FrontManagement.master" AutoEventWireup="true" CodeFile="Faculty.aspx.cs" Inherits="Management_Faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="overflow:scroll;width:700px;height:inherit">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="EntityDataSource1">
        
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                  
                </td>
                <td>
                      <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="FacultyIdTextBox" runat="server" Text='<%# Bind("FacultyId") %>' />
                </td>
               
                <td>
                    <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Middle_NameTextBox" runat="server" Text='<%# Bind("Middle_Name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Last_NameTextBox" runat="server" Text='<%# Bind("Last_Name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ContactNumberTextBox" runat="server" Text='<%# Bind("ContactNumber") %>' />
                </td>
                
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SecurityQuestionTextBox" runat="server" Text='<%# Bind("SecurityQuestion") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SecurityAnswerTextBox" runat="server" Text='<%# Bind("SecurityAnswer") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DepartmentTextBox" runat="server" Text='<%# Bind("Department") %>' />
                </td>
                <td>
                    <asp:TextBox ID="EmailIdTextBox" runat="server" Text='<%# Bind("EmailId") %>' />
                </td>
                <td>
                    <asp:TextBox ID="sexTextBox" runat="server" Text='<%# Bind("sex") %>' />
                </td>
                <td>
                    <asp:TextBox ID="EnrolledDateTextBox" runat="server" Text='<%# Bind("EnrolledDate") %>' Enabled="false" />
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
            <br />
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
                    <asp:Label ID="FacultyIdLabel" runat="server" Text='<%# Eval("FacultyId") %>' />
                </td>
                
                <td>
                    <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                </td>
                <td>
                    <asp:Label ID="Middle_NameLabel" runat="server" Text='<%# Eval("Middle_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("Last_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="ContactNumberLabel" runat="server" Text='<%# Eval("ContactNumber") %>' />
                </td>
               
                <td>
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                </td>
                <td>
                    <asp:Label ID="SecurityQuestionLabel" runat="server" Text='<%# Eval("SecurityQuestion") %>' />
                </td>
                <td>
                    <asp:Label ID="SecurityAnswerLabel" runat="server" Text='<%# Eval("SecurityAnswer") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                </td>
                <td>
                    <asp:Label ID="DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' />
                </td>
                <td>
                    <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Eval("EmailId") %>' />
                </td>
                <td>
                    <asp:Label ID="sexLabel" runat="server" Text='<%# Eval("sex") %>' />
                </td>
                <td>
                    <asp:Label ID="EnrolledDateLabel" runat="server" Text='<%# Eval("EnrolledDate") %>' />
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
                                <th runat="server">FacultyId</th>
                                <th runat="server">ID</th>
                                <th runat="server">FirstName</th>
                                <th runat="server">Middle_Name</th>
                                <th runat="server">Last_Name</th>
                                <th runat="server">ContactNumber</th>
                                <th runat="server">Image</th>
                                <th runat="server">Address</th>
                                <th runat="server">SecurityQuestion</th>
                                <th runat="server">SecurityAnswer</th>
                                <th runat="server">Password</th>
                                <th runat="server">Department</th>
                                <th runat="server">EmailId</th>
                                <th runat="server">sex</th>
                                <th runat="server">EnrolledDate</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server">
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
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=CollegeString" DefaultContainerName="CollegeString" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="Faculties">
    </asp:EntityDataSource>
</asp:Content>

