<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update_delete_post.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="createPostLabel" runat="server" Text="Your Post"></asp:Label>
            <br />
            <asp:Button ID="createPostButton" runat="server" OnClick="CreatePostButtonClick" Text="Create New Post" />
           
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Delete Post"></asp:Label>
            <br />
            <asp:Label ID="deletePostLabel" runat="server" Text="Input Post Number Below"></asp:Label>
            <br />
            <asp:TextBox ID="postIdTextBox" runat="server"></asp:TextBox>
            <asp:Button ID="deletePostButton" runat="server" OnClick="DeletePostButtonClick" Text="Delete Post" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Update Post"></asp:Label>
            <br />
             <asp:Label ID="Label1" runat="server" Text="Input Post Number: "></asp:Label>
            <asp:TextBox ID="updatePostNumber" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Input new Post Title: "></asp:Label>
            <asp:TextBox ID="updatePostTitle" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Input new Post content: "></asp:Label>
            <asp:TextBox ID="updatePostContent" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="UpdatePostButton" runat="server" OnClick="UpdatePostButtonClick" Text="Update Post" />
            <br />
        </div>
    </form>
    <br />
    <asp:Label ID="LabelAllPost" runat="server" Text="All of Your Posts:"></asp:Label>
    <br />
    <br />
    <asp:Label ID="ViewAllPost" runat="server" Text="No Post Has Been Made"></asp:Label>
    <br />
</body>
</html>
