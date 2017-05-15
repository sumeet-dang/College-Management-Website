<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontFaculty.master" AutoEventWireup="true" CodeFile="Notification.aspx.cs" Inherits="Faculty_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Enter Your Message Below:</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>
&nbsp;&nbsp;
    </p>
    <p>
        <asp:RequiredFieldValidator ID="MessageValidator" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Enter A Message"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Notice Inserted" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </p>
</asp:Content>

