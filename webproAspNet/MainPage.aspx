<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="userLabel" runat="server" Text="Not Logged In"></asp:Label>
            <br />
            <asp:Button ID="loginButton" runat="server" OnClick="LoginButtonClick" Text="Login" />
            <asp:Button ID="registerButton" runat="server" OnClick="RegisterButtonClick" Text="Register" />
            <br />
            <asp:Button ID="logoutButton" runat="server" OnClick="LogoutButtonClick" Text="Logout" />
        </div>
    </form>
</body>
</html>
