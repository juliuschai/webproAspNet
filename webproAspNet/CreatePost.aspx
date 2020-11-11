<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreatePost.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="postFormLabel" runat="server" Text="New Post Form"></asp:Label>
            <br />
            <asp:Label ID="errorLabel" runat="server" Text=" "></asp:Label>
            <br />
            <asp:Label ID="titleLabel" runat="server" Text="Title"></asp:Label>
            <asp:TextBox ID="titleTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="contentLabel" runat="server" Text="Content"></asp:Label>
            <asp:TextBox ID="contentTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="createButton" runat="server" Text="Create" OnClick="CreateButtonClick" />
        </div>
    </form>
</body>
</html>
