using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Channels;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RegisterButtonClick(object sender, EventArgs e)
    {
        string username = unameTextBox.Text.Trim();
        string email = emailTextBox.Text.Trim();
        string password = passTextBox.Text.Trim();
        string confirmPassword = confirmPassTextBox.Text.Trim();

        // check if the username field is empty
        if (username.Equals(""))
        {
            errorLabel.Text = "Username is empty";
        }
        // check if the email field is empty
        else if (email.Equals(""))
        {
            errorLabel.Text = "Email is empty";
        }
        // check if the password field is empty
        else if (password.Equals(""))
        {
            errorLabel.Text = "Password is empty";
        }
        // check if the confirm password field is empty
        else if (confirmPassword.Equals(""))
        {
            errorLabel.Text = "Confirm Password is empty";
        }


        if (password.Equals(confirmPassword)) 
        { 
            UserModel.Register(username, email, password);
            Response.Redirect("Login.aspx");
        } 
        else
        {
            errorLabel.Text = "Password mismatch";
        }

    }
}