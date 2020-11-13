using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Post
/// </summary>
public class PostModel
{
    public PostModel(string postId, string userId, string title, string content)
    {
        PostId = postId;
        UserId = userId;
        Title = title;
        Content = content;
    }

    public string PostId { get; }
    public string UserId { get; set; }
    public string Title { get; set; }
    public string Content { get; set; }

    public static void create(string uid, string title, string content)
    {
        // Create post
        DB db = new DB();

        MySqlCommand command = new MySqlCommand("INSERT INTO `posts`(`user_id`, `title`, `content`) VALUES (@uid, @title, @content)", db.getConnection());
        command.Parameters.Add("@uid", MySqlDbType.VarChar).Value = uid;
        command.Parameters.Add("@title", MySqlDbType.VarChar).Value = title;
        command.Parameters.Add("@content", MySqlDbType.VarChar).Value = content;

        // open the connection
        db.openConnection();

        if (command.ExecuteNonQuery() != 1)
        {
            // mysql error
            Trace.TraceError("Mysql error");
        }

        // close the connection
        db.closeConnection();
    }
    public static string read()
    {
        // Read post
        DB db = new DB();

        MySqlCommand command = new MySqlCommand("SELECT `id`, `title`, `content` FROM `posts`", db.getConnection());
        command.CommandType = System.Data.CommandType.Text;

        db.openConnection();

        if (command.ExecuteNonQuery() != 1)
        {
            // mysql error
            Trace.TraceError("Mysql error");
        }

        string temp = "";
        MySqlDataReader reader = command.ExecuteReader();
        while (reader.Read())
        {
            temp += "Post: ";
            temp += reader["id"].ToString();
            temp += "<br/>";
            temp += "Title: ";
            temp += reader["title"].ToString();
            temp += "<br/>";
            temp += reader["content"].ToString();
            temp += "<br/>";
            temp += "<br/>";
        }

        // close the connection
        db.closeConnection();

        return temp;
    }

    public static string readuserpost(string uid)
    {
        // Read post
        DB db = new DB();
        MySqlCommand command = new MySqlCommand("SELECT `id`, `title`, `content` FROM `posts` WHERE `user_id` = @uid", db.getConnection());
        command.Parameters.Add("@uid", MySqlDbType.VarChar).Value = uid;
        command.CommandType = System.Data.CommandType.Text;

        db.openConnection();

        if (command.ExecuteNonQuery() != 1)
        {
            // mysql error
            Trace.TraceError("Mysql error");
        }

        string temp = "";
        MySqlDataReader reader = command.ExecuteReader();
        while (reader.Read())
        {
            temp += "Post: ";
            temp += reader["id"].ToString();
            temp += "<br/>";
            temp += "Title: ";
            temp += reader["title"].ToString();
            temp += "<br/>";
            temp += reader["content"].ToString();
            temp += "<br/>";
            temp += "<br/>";
        }

        // close the connection
        db.closeConnection();

        return temp;
    }

    public static void update(string pid, string title, string content)
    {
        // Update post
        // Create post
        DB db = new DB();

        MySqlCommand command = new MySqlCommand("UPDATE `posts` SET `title` = @title, `content` = @content WHERE `id` = @pid", db.getConnection());
        command.Parameters.Add("@pid", MySqlDbType.VarChar).Value = pid;
        command.Parameters.Add("@title", MySqlDbType.VarChar).Value = title;
        command.Parameters.Add("@content", MySqlDbType.VarChar).Value = content;

        // open the connection
        db.openConnection();

        if (command.ExecuteNonQuery() != 1)
        {
            // mysql error
            Trace.TraceError("Mysql error");
        }

        // close the connection
        db.closeConnection();
    }

    public static void delete(string pid)
    {
        // Delete post
        DB db = new DB();

        MySqlCommand command = new MySqlCommand("DELETE FROM `posts` WHERE ID ="+"@pid", db.getConnection());
        command.Parameters.Add("@pid", MySqlDbType.VarChar).Value = pid;

        // open the connection
        db.openConnection();

        if (command.ExecuteNonQuery() != 1)
        {
            // mysql error
            Trace.TraceError("Mysql error");
        }

        // close the connection
        db.closeConnection();
    }
}