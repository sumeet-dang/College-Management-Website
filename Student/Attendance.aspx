<%@ Page Title="Attendance Records" Language="C#" MasterPageFile="~/MasterPages/FrontStudent.master" AutoEventWireup="true" CodeFile="Attendance.aspx.cs" Inherits="Student_Attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       Student Name : <asp:Label ID="NameLabel" runat="server" Text=""></asp:Label>
    <div style="table-layout:fixed;height:150px;width:750px;">
        <div style="table-layout:fixed;height:140px;width:150px;float:left">
            <asp:Image ID="Image1" runat="server" Height="120px" Width="90px" /></div>
        <div style="table-layout:fixed;width:180px;height:20px;float:left;">
            Branch:<asp:Label ID="BranchLabel" runat="server" Text=""></asp:Label>
        </div>
        <div style="width:180px;height:20px;float:left;table-layout:fixed">
            EnrollMent Number: <asp:Label ID="EnrollLabel" runat="server" Text=""></asp:Label>
        </div>
        <div style="float:left">
            Viewing Attendance For:&nbsp;&nbsp;<asp:Label ID="Month" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <table id="AttTable" class="Attendance">
        
        <tr>
            
            <th>Month</th>
            <th>Week1</th>
            <th>Week2</th>
            <th>Week3</th>
            <th>Week4</th>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:HyperLink ID="July" runat="server" >July</asp:HyperLink>
            </td>
            <td class="auto-style2">
                <asp:RadioButton ID="RadioButton11P" runat="server" GroupName="11" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton11A" runat="server" GroupName="11" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton11H" runat="server" GroupName="11" Text="H" Enabled="False" />
            </td>
            <td class="auto-style2">
                <asp:RadioButton ID="RadioButton21P" runat="server" GroupName="21" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton21A" runat="server" GroupName="21" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton21H" runat="server" GroupName="21" Text="H" Enabled="False" />
            </td>
            <td class="auto-style2">
                <asp:RadioButton ID="RadioButton31P" runat="server" GroupName="31" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton31A" runat="server" GroupName="31" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton31H" runat="server" GroupName="31" Text="H" Enabled="False" />
            </td>
            <td class="auto-style2">
                <asp:RadioButton ID="RadioButton41P" runat="server" GroupName="41" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton41A" runat="server" GroupName="41" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton41H" runat="server" GroupName="41" Text="H" Enabled="False" />
            </td>
        </tr><tr>
            <td class="auto-style3">
                <asp:HyperLink ID="August" runat="server">August</asp:HyperLink>
            </td>
            <td class="auto-style3">
                <asp:RadioButton ID="RadioButton12P" runat="server" GroupName="12" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton12A" runat="server" GroupName="12" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton12H" runat="server" GroupName="12" Text="H" Enabled="False" />
            </td>
            <td class="auto-style3">
                <asp:RadioButton ID="RadioButton22P" runat="server" GroupName="22" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton22A" runat="server" GroupName="22" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton22H" runat="server" GroupName="22" Text="H" Enabled="False" />
            </td>
            <td class="auto-style3">
                <asp:RadioButton ID="RadioButton32P" runat="server" GroupName="32" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton32A" runat="server" GroupName="32" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton32H" runat="server" GroupName="32" Text="H" Enabled="False" />
            </td>
            <td class="auto-style3">
                <asp:RadioButton ID="RadioButton42P" runat="server" GroupName="42" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton42A" runat="server" GroupName="42" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton42H" runat="server" GroupName="42" Text="H" Enabled="False" />
            </td>
        </tr><tr>
            <td>
                <asp:HyperLink ID="September" runat="server">September</asp:HyperLink>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton13P" runat="server" GroupName="13" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton13A" runat="server" GroupName="13" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton13H" runat="server" GroupName="13" Text="H" Enabled="False" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton23P" runat="server" GroupName="23" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton23A" runat="server" GroupName="23" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton23H" runat="server" GroupName="23" Text="H" Enabled="False" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton33P" runat="server" GroupName="33" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton33A" runat="server" GroupName="33" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton33H" runat="server" GroupName="33" Text="H" Enabled="False" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton43P" runat="server" GroupName="43" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton43A" runat="server" GroupName="43" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton43H" runat="server" GroupName="43" Text="H" Enabled="False" />
            </td>
        </tr><tr>
            <td>
                <asp:HyperLink ID="October" runat="server">October</asp:HyperLink>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton14P" runat="server" GroupName="14" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton14A" runat="server" GroupName="14" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton14H" runat="server" GroupName="14" Text="H" Enabled="False" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton24P" runat="server" GroupName="24" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton24A" runat="server" GroupName="24" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton24H" runat="server" GroupName="24" Text="H" Enabled="False" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton34P" runat="server" GroupName="34" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton34A" runat="server" GroupName="34" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton34H" runat="server" GroupName="34" Text="H" Enabled="False" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton44P" runat="server" GroupName="44" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton44A" runat="server" GroupName="44" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton44H" runat="server" GroupName="44" Text="H" Enabled="False" />
            </td>
        </tr><tr>
            <td>
                <asp:HyperLink ID="November" runat="server">November</asp:HyperLink>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton15P" runat="server" GroupName="15" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton15A" runat="server" GroupName="15" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton15H" runat="server" GroupName="15" Text="H" Enabled="False" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton25P" runat="server" GroupName="25" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton25A" runat="server" GroupName="25" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton25H" runat="server" GroupName="25" Text="H" Enabled="False" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton35P" runat="server" GroupName="35" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton35A" runat="server" GroupName="35" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton35H" runat="server" GroupName="35" Text="H" Enabled="False" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton45P" runat="server" GroupName="45" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton45A" runat="server" GroupName="45" Text="A" Enabled="False"  />
                <asp:RadioButton ID="RadioButton45H" runat="server" GroupName="45" Text="H" Enabled="False" />
            </td>
        </tr><tr>
            <td>
                <asp:HyperLink ID="December" runat="server">December</asp:HyperLink>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton16P" runat="server" GroupName="16" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton16A" runat="server" GroupName="16" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton16H" runat="server" GroupName="16" Text="H" Enabled="False" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton26P" runat="server" GroupName="26" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton26A" runat="server" GroupName="26" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton26H" runat="server" GroupName="26" Text="H" Enabled="False" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton36P" runat="server" GroupName="36" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton36A" runat="server" GroupName="36" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton36H" runat="server" GroupName="36" Text="H" Enabled="False"/>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton46P" runat="server" GroupName="46" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton46A" runat="server" GroupName="46" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton46H" runat="server" GroupName="46" Text="H" Enabled="False" />
            </td>
        </tr><tr>
            <td>
                <asp:HyperLink ID="January" runat="server">January</asp:HyperLink>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton17P" runat="server" GroupName="17" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton17A" runat="server" GroupName="17" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton17H" runat="server" GroupName="17" Text="H" Enabled="False" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton27P" runat="server" GroupName="27" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton27A" runat="server" GroupName="27" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton27H" runat="server" GroupName="27" Text="H" Enabled="False" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton37P" runat="server" GroupName="37" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton37A" runat="server" GroupName="37" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton37H" runat="server" GroupName="37" Text="H" Enabled="False" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton47P" runat="server" GroupName="47" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton47A" runat="server" GroupName="47" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton47H" runat="server" GroupName="47" Text="H" Enabled="False" />
            </td>
        </tr><tr>
            <td>
                <asp:HyperLink ID="February" runat="server">February</asp:HyperLink>
            </td>
            <th>Week5</th>
            <td></td>
            <td></td>
            <td></td>
        </tr><tr>
            <td>
                <asp:HyperLink ID="March" runat="server">March</asp:HyperLink>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton51P" runat="server" GroupName="51" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton51A" runat="server" GroupName="51" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton51H" runat="server" GroupName="51" Text="H" Enabled="False" />
            </td>
            <td></td>
            <td></td>
            <td></td>
        </tr><tr>
            <td>
                <asp:HyperLink ID="April" runat="server">April</asp:HyperLink>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton52P" runat="server" GroupName="52" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton52A" runat="server" GroupName="52" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton52H" runat="server" GroupName="52" Text="H" Enabled="False" />
            </td>
            <td></td>
            <td></td>
            <td></td>
        </tr><tr>
            <td>
                <asp:HyperLink ID="May" runat="server">May</asp:HyperLink>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton53P" runat="server" GroupName="53" Text="P" Enabled="False" />
                <asp:RadioButton ID="RadioButton53A" runat="server" GroupName="53" Text="A" Enabled="False" />
                <asp:RadioButton ID="RadioButton53H" runat="server" GroupName="53" Text="H" Enabled="False" />
            </td>
            <td></td>
            <td></td>
            <td></td>
        </tr><tr>
            <td class="auto-style1">
                <asp:HyperLink ID="June" runat="server">June</asp:HyperLink>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>Monthly Attendance:
                </td>
            <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
            <td>
                 Overall Attendance:
            </td>
            <td colspan="2"><asp:Label ID="TotalAttendance" runat="server" Text=""></asp:Label></td>
        </tr>
    </table>
   
    <br />
       
</asp:Content>

