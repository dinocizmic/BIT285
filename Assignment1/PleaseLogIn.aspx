<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PleaseLogIn.aspx.cs" Inherits="PleaseLogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Please Log In</h1>
    </div>&nbsp;<td> User ID:</td>
    <td>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        
  
  <tr>
    <td>
        <br />
        Password:</td>
    <td>
        <asp:TextBox TextMode="Password" ID="txtPWord" runat="server"></asp:TextBox>
       
  </tr>
        <asp:HyperLink ID="HyperLink1" runat="server"></asp:HyperLink>
    
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        
    <asp:HyperLink ID="HyperLink2" runat="server" Text="Need New Account?" NavigateUrl ="~/NewAccountInfo.aspx"> </asp:HyperLink>
        <asp:Label ID="Label1" runat="server" Text="Login Error" Visible="False"></asp:Label>
        
    </form>
    </body>
</html>
