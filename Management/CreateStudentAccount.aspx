<%@ Page Title="New Student Account" Language="C#" MasterPageFile="~/MasterPages/FrontManagement.master" AutoEventWireup="true" CodeFile="CreateStudentAccount.aspx.cs" Inherits="Management_CreateStudentAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   

   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <table style="width:100%;">
        <tr>
            <td>Enrollment Number</td>
            <td>
                <asp:TextBox ID="EnrollNo" runat="server" Width="163px" Enabled="False" ReadOnly="True"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td style="font-weight:bold">Enter Student Name</td>
            <td>
                &nbsp;</td>
            <td></td>
        </tr>
        <tr>
            <td>First Name</td>
            <td>
                <asp:TextBox ID="FirstName" runat="server" Width="163px"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="FNameValidator" runat="server" ErrorMessage="Fill In First Name" ControlToValidate="FirstName" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="FnameRegular" runat="server" ControlToValidate="FirstName" ErrorMessage="Invalid Characters In Name" ValidationExpression="^[a-zA-Z\s]+$" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>
                <asp:TextBox ID="LastName" runat="server" Width="163px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="LnameValidator" runat="server" ErrorMessage="Fill In Last Name" ControlToValidate="LastName" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="LnameRegular" runat="server" ControlToValidate="LastName" ErrorMessage="Invalid Characters In Name" ValidationExpression="^[a-zA-Z\s]+$" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Select A Branch</td>
            <td>
                <asp:DropDownList ID="BranchList" runat="server" Height="21px" Width="172px">
                    <asp:ListItem>Choose Branch</asp:ListItem>
                    <asp:ListItem Value="Computer Science">Computer Science(CS)</asp:ListItem>
                    <asp:ListItem Value="Information Technology">Information Technology(IT)</asp:ListItem>
                    <asp:ListItem Value="Electronics And Communication">Electronics And Communication(EC)</asp:ListItem>
                    <asp:ListItem Value="Electrical And Electronics()">Electrical And Electronics(EE)</asp:ListItem>
                    <asp:ListItem Value="Mechanical">Mechanical(ME)</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="BranchValidator" runat="server" ErrorMessage="Please Select A Branch" ControlToValidate="BranchList" InitialValue="Choose Branch" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="GeneratePass" runat="server" Text="Generate Password" CausesValidation="False" OnClick="GeneratePass_Click" Width="136px" /></td>
            <td>
                <asp:TextBox ID="Password" runat="server" Enabled="False" Width="163px"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Password" ErrorMessage="RequiredFieldValidator">Create a Password</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td colspan="3" class="auto-style1">
                <asp:Button ID="CreateStudentProfile" runat="server" Text="Create Profile" Width="100px" OnClientClick="Page_ClientValidate();Loading(true);" OnClick="CreateStudentProfile_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Reset" runat="server" Text="Reset" OnClick="Reset_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Cancel" runat="server" Text="Cancel" OnClick="Cancel_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Record Created" Visible="false"></asp:Label>
            </td>
       </tr>
    </table>

    
</asp:Content>

