<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testaspx.aspx.cs" Inherits="testaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript" >
        var tim;

        var min = 1;
        var sec = 10;
        var f = new Date();       
        
        function f1()
        {
            f2();
           
        }
        function f2()
        {
            if (parseInt(sec) > 0) {
                sec = parseInt(sec) - 1;
                document.getElementById("showtime").innerHTML = "Your Left Time  is :" + min + " Minutes ," + sec + " Seconds";
                tim = setTimeout("f2()", 1000);
            }
            else {
                if (parseInt(sec) == 0) {
                    min = parseInt(min) - 1;
                    if (parseInt(min) == 0)
                    {
                        clearTimeout(tim);
                        document.getElementById('<%=Button1.ClientID%>').click();
                        //location.href = "default.aspx";
                    }
                    else {
                        sec = 10;
                        document.getElementById("showtime").innerHTML = "Your Left Time  is :" + min + " Minutes ," + sec + " Seconds";
                        tim = setTimeout("f2()", 1000);
                    }
                }

            }
        }
        
    </script>
</head>
 
<body onload="f1()">
    <form id="form1" runat="server">
    <div>
      <table width="100%" align="center">
        <tr>
          <td colspan="2">
            <h2>This is head part for showing timer and all other details</h2>
          </td>
        </tr>
        <tr>
          <td>
            <div id="starttime"></div><br />
            <div id="endtime"></div><br />
            <div id="showtime"></div>
              <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
          </td>
        </tr>
        <tr>
  </tr>
      </table>
      <br />
   
 
    </div>
    </form>
</body>
</html>
</body>