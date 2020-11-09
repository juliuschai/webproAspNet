<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="errorLabel" runat="server" Text=" "></asp:Label>
            <br />
            <asp:Label ID="unameLabel" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="unameTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="emailLabel" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="passLabel" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="passTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="confirmPassLabel" runat="server" Text="Re-Type Password"></asp:Label>
            <asp:TextBox ID="confirmPassTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="registerButton" runat="server" Text="Register" OnClick="RegisterButtonClick" />
        </div>
    </form>
</body>
</html>
