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
            <asp:Button ID="logoutButton" runat="server" OnClick="LogoutButtonClick" Text="Logout" />
            <br />
            <br />
            <asp:Label ID="createPostLabel" runat="server" Text="Post"></asp:Label>
            <br />
            <asp:Button ID="createPostButton" runat="server" OnClick="CreatePostButtonClick" Text="Create New Post" />
             <asp:Button ID="updatePostButon" runat="server" OnClick="updatePostButonClick" Text="update/delete your post" />
            <br />
            <br />
        </div>
    </form>
    <br />
    <asp:Label ID="LabelAllPost" runat="server" Text="All Posts:"></asp:Label>
    <br />
    <br />
    <asp:Label ID="ViewAllPost" runat="server" Text="No Post Has Been Made"></asp:Label>
    <br />
</body>
</html>
