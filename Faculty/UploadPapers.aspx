<%@ Page Title="Add Sample Papers" Language="C#" MasterPageFile="~/MasterPages/FrontFaculty.master" AutoEventWireup="true" CodeFile="UploadPapers.aspx.cs" Inherits="Faculty_UploadPapers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h2>
        Documents Already Uploaded
    </h2>
    <asp:Panel ID="Panel2" runat="server"></asp:Panel>
    
    <h3>Upload Documents From Your PC Or Choose To Write Papers in txt Files Here</h3>
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#BBFFDD" BorderColor="Black" BorderWidth="1px" />
    &nbsp;&nbsp;
    <asp:Button ID="UploadButton" runat="server" Text="Upload File" CausesValidation="False"  OnClientClick="Page_ClientValidate();Loading(true);" OnClick="UploadButton_Click" />
    
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Choose A file First"></asp:RequiredFieldValidator>
    <br />
    
    <p>Choose File To Upload</p>
    <p>OR</p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Button ID="CreateFileButton" runat="server" Text="Write File On Server" OnClick="CreateFileButton_Click" CausesValidation="False" />
            <br />
            
        </ContentTemplate>
    </asp:UpdatePanel>
    </asp:Content>

