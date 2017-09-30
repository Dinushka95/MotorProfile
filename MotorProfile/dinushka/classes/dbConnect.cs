using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MotorProfile.classes
{
    public class dbConnect
    {
        String URL;
        String DBN;
        String UN;
        String PW;

        MySqlConnection connection;
        MySqlCommand command;

        public dbConnect(String DBURL,String DBName,String Username, String Password) {
            URL = DBURL;
            DBN = DBURL;
            UN = Username;
            PW = Password;    
        }

        public void Connection_CreateNew()
        {
            String ConnectionString = "Database=" + DBN + ";Data Source=" + URL + ";User Id=" + UN + ";Password=" + PW;
            Console.WriteLine("*** Db connection string = "+ConnectionString);

            connection = new MySqlConnection(ConnectionString);

            try
            {
                connection.Open();
                Console.WriteLine("*** DB Connection SUCESSFULL :) ***");
                command = connection.CreateCommand();
            }
            catch (Exception)
            {
                Console.WriteLine("*** DB Connection FAILED ***");
                throw;
            }
            
        }

        public void Excute_NONQuery(String SQLStatement)
        {
            command.CommandText = SQLStatement;
            command.ExecuteNonQuery();
        }

        public void Excute_Query(String SQLStatement)
        {
            command.CommandText = SQLStatement;
            command.ExecuteReader();
            Object returnValue= command.ExecuteScalar();
        }

        public void Connection_Close()
        {
            connection.Close();
        } 


    }
}