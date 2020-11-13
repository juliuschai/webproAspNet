using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string uid = (string)Session["userId"];
        ViewAllPost.Text = PostModel.readuserpost(uid);
    }

   

    protected void CreatePostButtonClick(object sender, EventArgs e)
    {
        Response.Redirect("CreatePost.aspx");
    }

    protected void DeletePostButtonClick(object sender, EventArgs e)
    {
        string pid = postIdTextBox.Text.Trim();
        PostModel.delete(pid);

        Response.Redirect("MainPage.aspx");
    }

    protected void UpdatePostButtonClick(object sender, EventArgs e)
    {
        string pid = updatePostNumber.Text.Trim();
        string title = updatePostTitle.Text.Trim();
        string content = updatePostContent.Text.Trim();
        PostModel.update(pid, title, content);

        Response.Redirect("MainPage.aspx");
    }
}