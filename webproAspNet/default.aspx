<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://bootswatch.com/4/minty/bootstrap.min.css">
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="MainPage.aspx">Forum Website</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="MainPage.aspx">Home
          <span class="sr-only">(current)</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="update_delete_post.aspx">Your Post</a>
      </li>  
    </ul>
    
  </div>
</nav>
    </header>
    <div class="jumbotron">
    <form id="form1" runat="server">
        <div class ="form-group">
            <asp:Label ID="errorLabel" runat="server" Text=" "></asp:Label>
            <br />
            <asp:Label ID="emailLabel" runat="server" Text="Email"></asp:Label>
            <asp:TextBox class="form-control" ID="emailTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="passLabel" runat="server" Text="Password"></asp:Label>
            <asp:TextBox class="form-control" ID="passTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button class="btn btn-primary" ID="loginButton" runat="server" Text="Login" OnClick="LoginButtonClick" />
        </div>
    </form>
    </div>
</body>
</html>
