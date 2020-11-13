<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update_delete_post.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your Post</title>
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
        <div>
            
            <asp:Label ID="createPostLabel" runat="server" Text="Your Post"></asp:Label>
            <br />
            <asp:Button class="btn btn-primary" ID="createPostButton" runat="server" OnClick="CreatePostButtonClick" Text="Create New Post" />
           
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Delete Post"></asp:Label>
            <br />
            <asp:Label ID="deletePostLabel" runat="server" Text="Input Post Number Below"></asp:Label>
            <br />
            <asp:TextBox class="form-control" ID="postIdTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Button class="btn btn-primary" ID="deletePostButton" runat="server" OnClick="DeletePostButtonClick" Text="Delete Post" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Update Post"></asp:Label>
            <br />
             <asp:Label ID="Label1" runat="server" Text="Input Post Number: "></asp:Label>
            <asp:TextBox class="form-control" ID="updatePostNumber" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Input new Post Title: "></asp:Label>
            <asp:TextBox class="form-control" ID="updatePostTitle" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Input new Post content: "></asp:Label>
            <asp:TextBox class="form-control" ID="updatePostContent" runat="server"></asp:TextBox>
            <br />
            <asp:Button class="btn btn-primary" ID="UpdatePostButton" runat="server" OnClick="UpdatePostButtonClick" Text="Update Post" />
            <br />
        </div>
    </form>
    <br />
    <asp:Label ID="LabelAllPost" runat="server" Text="All of Your Posts:"></asp:Label>
    <br />
    <br />
    <asp:Label ID="ViewAllPost" runat="server" Text="No Post Has Been Made"></asp:Label>
    <br />
    </div>
</body>
</html>
