<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewAccountInfo.aspx.cs" Inherits="NewAccountInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <h1>New Account Information</h1></div>
        
<table>
  <tr>
    <td>First Name:</td>
    <td><input type="text" runat="server" id="FirstName"/></td>
  </tr>
  <tr>
    <td>Last Name:</td>
    <td><input type="text" runat="server" id="LastName"/></td>
  </tr>
    <tr>
    <td>Email Address:</td>
    <td><input type="email" runat="server" id="txtEmail"/></td>
    
  </tr>
   <tr>
    <td>Program Option:</td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">

        </asp:DropDownList>&nbsp;<asp:CheckBox ID="CheckBox1" runat="server" Text="Confirm Email" OnCheckedChanged="CheckBox1_CheckedChanged" />
       </td>

  </tr>
    </table>
     <p>
            <asp:Button ID="Button1" runat="server" Text="Create Account" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
        </p>
    </form>
</body>
</html>
