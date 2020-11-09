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

    protected void LoginButtonClick(object sender, EventArgs e)
    {
        string email = emailTextBox.Text.Trim();
        string password = passTextBox.Text.Trim();
        // check if the email field is empty
        if (email.Equals(""))
        {
            errorLabel.Text = "Email is empty";
        }
        // check if the password field is empty
        else if (password.Equals(""))
        {
            errorLabel.Text = "Password is empty";
        }

        UserModel user = UserModel.Login(email, password);
        if (user is null)
        {
            errorLabel.Text = "Email or password not found";
        }
        else
        {
            Session["userId"] = user.UserId;
            Session["username"] = user.Username;
            Session["email"] = user.Email;
            Response.Redirect("MainPage.aspx");
        }
    }
}