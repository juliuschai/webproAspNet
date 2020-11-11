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
            <br />
            <asp:Label ID="Label1" runat="server" Text="Post"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="CreatePostButtonClick" Text="Create New Post" />
        </div>
    </form>
</body>
</html>
