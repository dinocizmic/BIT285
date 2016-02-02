<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AutomaticPasswordGenerator.aspx.cs" Inherits="AutomaticPasswordGenerator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Automatic Password Generator</h1></div>
        <p>
            Haveing a hard time thinking up a unique and memorable password?</p>
        <p>
            Enter the information below to automatically generate possible passwords.</p>
        <p>Please enter a new User ID and Password:</p>
<table>
  <tr>
    <td>Last Name:</td>
    <td><input type="text" runat="server" id="txtName"/></td>
  </tr>
      
  <tr>
    <td>Birth Year:</td>
    <td><input type="text" runat="server" id="txtYear"/></td>
  </tr>
  <tr>
    <td>Favorite Color:</td>
    <td><input type="text" runat="server" id="txtColor"/></td>
  </tr>
    </table>
     <p>
            <asp:Button ID="Button1" runat="server" Text="Generate Password" OnClick="Button1_Click" />
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        </p>
        <asp:Button ID="Button2" runat="server" Text="Back to Login Page" OnClick="Button2_Click" />
    </form>

        
       

</body>
</html>
