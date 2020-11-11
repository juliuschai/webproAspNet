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

    public static void update(string id)
    {
        // Update post
    }

    public static void delete(string id)
    {
        // Delete post
    }
}