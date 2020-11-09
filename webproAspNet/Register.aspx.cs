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
        string username = unameTextBox.Text;
        string email = emailTextBox.Text;
        string password = passTextBox.Text;
        string confirmPassword = confirmPassTextBox.Text;
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