<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontFaculty.master" AutoEventWireup="true" CodeFile="LoginFailed.aspx.cs" Inherits="Faculty_LoginFailed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>
        Invalid UserName Or Password</p>
    <p>
        Please Try again&nbsp;&nbsp; &nbsp;
        <a href="Login.aspx">Login Here</a>
    </p>
    <p>
        Or Visit The Following Link&nbsp;&nbsp;&nbsp; <a href="ForgotPassword.aspx">Forgot Paswword</a>
    </p>
    <p>
        Or Contact Management For a new Password
    </p>
</asp:Content>

