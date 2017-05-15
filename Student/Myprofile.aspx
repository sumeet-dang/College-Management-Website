<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/MasterPages/FrontStudent.master" AutoEventWireup="true" CodeFile="Myprofile.aspx.cs" Inherits="Student_Myprofile"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="LoginTable" style="width:100%;table-layout:fixed">
        <tr>
            <td colspan="3" style="text-align:center">
                <strong>Update Your Profile</strong>
            </td>
            
        </tr>
        <tr style="height:auto">
            <td style="border:2px solid black">
               
                        <div>
                    <asp:Image runat="server" ID="ProfileImage" Height="200px" Width="150px"></asp:Image> 
                            </div>
                        <div>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>     
                        <div>
                            <asp:Button ID="ImageUpload" runat="server" Text="Upload Image" Height="26px" OnClick="ImageUpload_Click" Width="120px" />
                        </div>
                       
            </td>
            
            <td colspan="2" style="border:2px solid black">
               
                 
                                           <div class="CenterAlign">
                            <strong> Your Password</strong>
                        </div>
                        <div>
                            Old Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="OldPassBox" runat="server"></asp:TextBox>
                        </div>
                        <div>
                            New Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="NewPassBox" runat="server"></asp:TextBox>
                            &nbsp;</div>
                        <div>
                            Confirm New Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="ConfirmPassBox" runat="server"></asp:TextBox>
                        </div>
                        <div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="NewPassBox" ControlToValidate="ConfirmPassBox" Display="Dynamic" ErrorMessage="Passwords Dont Match"></asp:CompareValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="ChangePassButton" runat="server" Text="Change Password" Width="120px" OnClick="ChangePassButton_Click" /> <asp:Label ID="Label1" runat="server" Text="Password Changed" Visible="false"></asp:Label>
                        </div>
                
            </td>
            
        </tr>
        
        <tr>
            
            <td></td>
            <td></td>
            <td></td>
        </tr>
         <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
         <tr>
            <td>
                
                Name</td>
            <td> 
                <asp:Label ID="NameLabel" runat="server" Text="Label"></asp:Label>
                        </td>
            <td></td>
        </tr>
         <tr>
            <td class="auto-style1">Branch</td>
            <td class="auto-style1"> <asp:TextBox ID="BranchBox" runat="server" Enabled="False"></asp:TextBox>
                        </td>
            <td class="auto-style1"></td>
        </tr>
         <tr>
            <td>EnrollMent Number</td>
            <td> <asp:TextBox ID="EnrollNoBox" runat="server" Enabled="False"></asp:TextBox>
                        </td>
            <td></td>
        </tr>
         <tr>
            <td>Admission_Date</td>
            <td> <asp:TextBox ID="AdmissionDateBox" runat="server" Enabled="False"></asp:TextBox>
                        </td>
            <td></td>
             
        </tr>
    <tr>
        <td>Sex</td>
            
                <td>
                    <asp:Label ID="StudentSex" runat="server"></asp:Label>
        </td>
            
        <td></td>
    </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td>Living Status</td>
            <td>
                <asp:RadioButton ID="Hostler" runat="server" GroupName="Living" Text="Hostler" />
                <br />
                <asp:RadioButton ID="DayScholar" runat="server" GroupName="Living" Text="Day Scholar" />
             </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td>Address</td>
            <td> <asp:TextBox ID="AddressBox" runat="server"></asp:TextBox>
                        </td>
            <td></td>
        </tr>
         <tr>
            <td>Email</td>
            <td> <asp:TextBox ID="EmailBox" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailBox" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </td>
        </tr>
         <tr>
            <td>Phone Number</td>
            <td> <asp:TextBox ID="PhoneBox" runat="server"></asp:TextBox>
                        </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td>Guardian Phone Number</td>
            <td> <asp:TextBox ID="GPhoneBox" runat="server"></asp:TextBox>
                        </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td>Year</td>
            <td>
                <asp:Label ID="Year" runat="server" Text="Label"></asp:Label>
             </td>
            <td></td>
        </tr>
         <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td> 
             <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" />
                        </td>
            <td></td>
        </tr>
     <tr>
         <td>

         </td>
         <td>
             &nbsp;</td>
         <td>
             &nbsp;</td>
     </tr>
       
    </table>
</asp:Content>

