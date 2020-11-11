using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CreateButtonClick(object sender, EventArgs e)
    {
        string uid = (string)Session["userId"];
        string title = titleTextBox.Text.Trim();
        string content = contentTextBox.Text.Trim();
        
        // check if the username field is empty
        if (title.Equals(""))
        {
            errorLabel.Text = "Title is empty";
        }
        // check if the email field is empty
        else if (content.Equals(""))
        {
            errorLabel.Text = "Content is empty";
        }

        PostModel.create(uid, title, content);
        Response.Redirect("MainPage.aspx");
    }
}