<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontManagement.master" AutoEventWireup="true" CodeFile="CreateFaculty.aspx.cs" Inherits="Management_CreateFaculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .auto-style1 {
            height: 25px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <table style="width:100%;">
        <tr>
            <td>Employee Id</td>
            <td>
                <asp:TextBox ID="EmpId" runat="server" Width="163px" Enabled="false"></asp:TextBox></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight:bold">Enter Name</td>
            <td>
                &nbsp;</td>
            <td></td>
        </tr>
        <tr>
            <td>First Name</td>
            <td>
                <asp:TextBox ID="FirstName" runat="server" Width="163px"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="FNameValidator" runat="server" ErrorMessage="Fill In First Name" ControlToValidate="FirstName" Display="Dynamic" ValidateRequestMode="Enabled">Required Field</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="FnameRegular" runat="server" ControlToValidate="FirstName" ErrorMessage="Invalid Input at first name" ValidationExpression="^[a-zA-Z\s]+$" Display="Dynamic">Invalid Characters In Name</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>
                <asp:TextBox ID="LastName" runat="server" Width="163px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="LnameValidator" runat="server" ErrorMessage="Fill In Last Name" ControlToValidate="LastName" Display="Dynamic">Required Field</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="LnameRegular" runat="server" ControlToValidate="LastName" ErrorMessage="Invalid input at Last Name" ValidationExpression="^[a-zA-Z\s]+$" Display="Dynamic">Invalid Characters In Name</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Select Department</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DepartmentList" runat="server" Height="21px" Width="172px">
                    <asp:ListItem>Choose Department</asp:ListItem>
                    <asp:ListItem Value="Computer Science">Computer Science(CS)</asp:ListItem>
                    <asp:ListItem Value="Information Technology">Information Technology(IT)</asp:ListItem>
                    <asp:ListItem Value="Electronics And Communication">Electronics And Communication(EC)</asp:ListItem>
                    <asp:ListItem Value="Electrical And Electronics()">Electrical And Electronics(EE)</asp:ListItem>
                    <asp:ListItem Value="Mechanical">Mechanical(ME)</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="BranchValidator" runat="server" ErrorMessage="Please Select A Department" ControlToValidate="DepartmentList" InitialValue="Choose Department" Display="Dynamic">Required Field</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="GeneratePass" runat="server" Text="Generate Password" CausesValidation="False" OnClick="GeneratePass_Click" Width="140px" />
            </td>
            <td>
                <asp:TextBox ID="Password" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Password Must Be Generated">Password Needed</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td colspan="3">
                <asp:Button ID="CreateFacultyProfile" runat="server" Text="Create Profile" Width="100px" OnClientClick="Page_ClientValidate();Loading(true);" OnClick="CreateFacultyProfile_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Reset" runat="server" Text="Reset" OnClick="Reset_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Cancel" runat="server" Text="Cancel" OnClick="Cancel_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
       </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

