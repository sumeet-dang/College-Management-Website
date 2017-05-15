<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontFaculty.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Faculty_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                            Old Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="OldPassBox" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <div>
                            New Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="NewPassBox" runat="server" TextMode="Password"></asp:TextBox>
                            &nbsp;</div>
                        <div>
                            Confirm New Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="ConfirmPassBox" runat="server" TextMode="Password"></asp:TextBox>
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
            <td class="auto-style1">Department</td>
            <td class="auto-style1"> <asp:TextBox ID="DepartmentBox" runat="server" Enabled="False"></asp:TextBox>
                        </td>
            <td class="auto-style1"></td>
        </tr>
         <tr>
            <td>Employee Id</td>
            <td> <asp:TextBox ID="EmpIdBox" runat="server" Enabled="False"></asp:TextBox>
                        </td>
            <td></td>
        </tr>
         <tr>
            <td>Enrolled_Date</td>
            <td> <asp:TextBox ID="EnrollDateBox" runat="server" Enabled="False"></asp:TextBox>
                        </td>
            <td></td>
             
        </tr>
    <tr>
        <td>Sex</td>
            
                <td>
                    <asp:Label ID="Sex" runat="server"></asp:Label>
        </td>
            
        <td></td>
    </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td>&nbsp;</td>
            <td>
                <br />
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
            <td> <asp:TextBox ID="EmailBox" runat="server" TextMode="Email"></asp:TextBox>
                        </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailBox" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </td>
        </tr>
         <tr>
            <td>Phone Number</td>
            <td> <asp:TextBox ID="PhoneBox" runat="server"></asp:TextBox>
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

