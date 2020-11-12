﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         ViewAllPost.Text = PostModel.read();
        if (Session["userId"] is null)
        {
            // is Guest
            registerButton.Visible = true;
            loginButton.Visible = true;
            logoutButton.Visible = false;
        }
        else
        {
            // is logged in
            registerButton.Visible = false;
            loginButton.Visible = false;
            logoutButton.Visible = true;
            userLabel.Text = Session["username"] + " - " + Session["email"];
        }
    }

    protected void LoginButtonClick(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void RegisterButtonClick(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    protected void LogoutButtonClick(object sender, EventArgs e)
    {
        Session.Clear(); //remove session
        Response.Redirect("MainPage.aspx");
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
}