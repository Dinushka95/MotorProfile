using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using MySql.Data.MySqlClient;

/// <summary>
/// Summary description for ConnectionManager
/// </summary>
public class ConnectionManager
{
    public ConnectionManager()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static MySqlConnection NewCon;
    public static string ConStr = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;

    public static MySqlConnection GetConnection()
    {
        NewCon = new MySqlConnection(ConStr);
        return NewCon;
    }
}