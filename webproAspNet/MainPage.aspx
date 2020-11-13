<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
  <h1 class="display-3">Post Your Articles Here!</h1>
  <p class="lead">Create and post your articles for free! Forever! </p>
  <hr class="my-4">
  
  <p class="lead">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="userLabel" runat="server" Text="Not Logged In"></asp:Label>
            <br />
            <asp:Button class="btn btn-primary" ID="loginButton" runat="server" OnClick="LoginButtonClick" Text="Login" />
            <asp:Button class="btn btn-primary" ID="registerButton" runat="server" OnClick="RegisterButtonClick" Text="Register" />
            <asp:Button class="btn btn-primary" ID="logoutButton" runat="server" OnClick="LogoutButtonClick" Text="Logout" />
            <br />
            <br />
            <asp:Label ID="createPostLabel" runat="server" Text="Post"></asp:Label>
            <br />
            <asp:Button class="btn btn-primary" ID="createPostButton" runat="server" OnClick="CreatePostButtonClick" Text="Create New Post" />
             <asp:Button class="btn btn-primary" ID="updatePostButon" runat="server" OnClick="updatePostButonClick" Text="update/delete your post " />
            <br />
            <br />
        </div>
    </form>
  </p>
    <hr class="my-4">
    <br />
    <asp:Label ID="LabelAllPost" runat="server" Text="All Posts:"></asp:Label>
    <br />
    <br />
    <asp:Label ID="ViewAllPost" runat="server" Text="No Post Has Been Made"></asp:Label>
    <br />
</div>
</body>
</html>
