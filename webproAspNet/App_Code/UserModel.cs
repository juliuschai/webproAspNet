using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
public class UserModel
{
    public UserModel(string userId, string email, string username)
    {
        UserId = userId;
        Email = email;
        Username = username;
    }

    public string Username { get; set; }
    public string Email { get; set; }
    public string UserId { get; }

    public static UserModel Login(string email, string password)
    {
        password = PassHelper.GetMD5(password);

        DB db = new DB();
        DataTable table = new DataTable();
        MySqlDataAdapter adapter = new MySqlDataAdapter();

        MySqlCommand command = new MySqlCommand("SELECT * FROM `users` WHERE `email` = @email and `password` = @pass", db.getConnection());
        command.Parameters.Add("@email", MySqlDbType.VarChar).Value = email;
        command.Parameters.Add("@pass", MySqlDbType.VarChar).Value = password;

        adapter.SelectCommand = command;

        adapter.Fill(table);

        // check if the user exists or not
        if (table.Rows.Count > 0)
        {
            DataRow dataRow = table.Rows[0];
            UserModel user = new UserModel(dataRow["id"].ToString(), dataRow["email"].ToString(), dataRow["username"].ToString());
            return user;
        }
        else
        {
            return null;
        }
    }

    public static void Register(string username, string email, string password)
    {
        password = PassHelper.GetMD5(password);
        DB db = new DB();

        MySqlCommand command = new MySqlCommand("INSERT INTO `users`(`username`, `email`, `password`) VALUES (@uname, @email, @pass)", db.getConnection());
        command.Parameters.Add("@uname", MySqlDbType.VarChar).Value = username;
        command.Parameters.Add("@email", MySqlDbType.VarChar).Value = email;
        command.Parameters.Add("@pass", MySqlDbType.VarChar).Value = password;

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

    public Boolean CheckEmail(string email)
    {
        DB db = new DB();

        DataTable table = new DataTable();
        MySqlDataAdapter adapter = new MySqlDataAdapter();

        MySqlCommand command = new MySqlCommand("SELECT * FROM `users` WHERE `email` = @email", db.getConnection());
        command.Parameters.Add("@email", MySqlDbType.VarChar).Value = email;
        adapter.SelectCommand = command;
        adapter.Fill(table);

        // check if this username already exists in the database
        if (table.Rows.Count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }

    }

}