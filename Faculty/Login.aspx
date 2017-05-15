<%@ Page Title="Faculty Login" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Faculty_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">Enter Information Below To Log Into Your Faculty Profile.</td>
           
        </tr>
        <tr>
            <td colspan="3">If You Are A First Time User, Be Sure To Collect Your Password<br />
                And Employee Id From Management.</td>
            </tr>
        <tr>
            <td colspan="3"></td>
        </tr>
        <tr>
            <td>Employee Id</td>
            <td>
                <asp:TextBox ID="EmpId" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="EmployeeIdValidator" runat="server" ErrorMessage="Please Enter Your Employee Id" ControlToValidate="EmpId" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="Please Enter Your Password." ControlToValidate="Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:CheckBox ID="RememberMe" runat="server" Text="Remember Me" />
            </td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            </td>
            <td class="auto-style1">
                <a href="ForgotPassword.aspx">Forgot Password</a>
            </td>
        </tr>
    </table>
</asp:Content>

