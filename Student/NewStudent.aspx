<%@ Page Title="First Time Login" Language="C#" MasterPageFile="~/MasterPages/FrontStudent.master" AutoEventWireup="true" CodeFile="NewStudent.aspx.cs" Inherits="Student_NewStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            height: 28px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3" style="text-align:center">
                <strong>Please Enter The Following Details To Proceed</strong>
            </td>
        </tr>
        <tr>
            <td ></td>
            <td></td>
            <td ></td>
        </tr>
        <tr>
            <td>Sex</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="SexValidator" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" ErrorMessage="Select your Sex"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3"></td>
        </tr>
        <tr>
            <td class="auto-style1">Security Question</td>
            <td class="auto-style1">
                <asp:DropDownList ID="SecurityQList" runat="server" Width="180px">
                    <asp:ListItem>What was your first pets name</asp:ListItem>
                    <asp:ListItem>What is your mother&#39;s maiden name</asp:ListItem>
                    <asp:ListItem>What&#39;s the name of your first school</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="SecurityQValidator" runat="server" ControlToValidate="SecurityQList" Display="Dynamic" ErrorMessage="Please Pick a Question"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Security Answer
            </td>
            <td>

                <asp:TextBox ID="SecurityABox" runat="server" Width="181px"></asp:TextBox>

            </td>
            <td>
                <asp:RequiredFieldValidator ID="SecurityAValidator" runat="server" ControlToValidate="SecurityABox" Display="Dynamic" ErrorMessage="Please Enter An Answer"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">

            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Proceed" OnClick="Button1_Click" /></td>
            <td></td>
        </tr>
    </table>
</asp:Content>

