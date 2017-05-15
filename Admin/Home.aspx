<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td><a href="Student.aspx">Student Details</a></td>
            <td>View Student Database</td>
        </tr>
        
        <tr>
            <td><a href="Faculty.aspx">Faculty Details</a></td>
            <td>View Faculty Database</td>
        </tr>
        <tr>
            <td><a href="Management.aspx">Management Details</a></td>
            <td>View Management Database</td>
        </tr>
        <tr>
            <td><a href="Admin.aspx">Administrator Details</a></td>
            <td>View Administrator Database</td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
