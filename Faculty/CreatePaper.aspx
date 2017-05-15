<%@ Page Title="Create New Papers" Language="C#" MasterPageFile="~/MasterPages/FrontFaculty.master" AutoEventWireup="true" CodeFile="CreatePaper.aspx.cs" Inherits="Faculty_CreatePaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" >
                <asp:TextBox ID="FileContentBox" runat="server" TextMode="MultiLine" Height="400px" Width="600px"></asp:TextBox>
                <br />
                <br />
                Name Of File&nbsp;
                <asp:TextBox ID="FileNameBox" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileNameBox" Display="Dynamic" ErrorMessage="Enter a Filename"></asp:RequiredFieldValidator>

                <br />
                <br />
                <br />
                <asp:Button ID="AddFileButton" runat="server" Text="Add File" OnClick="AddFileButton_Click"/>
            </asp:Panel>
</asp:Content>

