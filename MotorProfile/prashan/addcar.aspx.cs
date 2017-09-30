using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace aspwebtemp1
{
    public partial class addcar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //CheckMysqlConnection();
            }
        }

        private void CheckMysqlConnection()
        {
            //ConnectionString
            string connectionString = @"Data Source=localhost; Database=motor_profile; User ID=root; Password=''";
            using (MySqlConnection cn = new MySqlConnection(connectionString))
            {
                cn.Open();
                Response.Write("Successfull");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //ConnectionString
            string connectionString = @"Data Source=localhost; Database=motor_profile; User ID=root; Password=''";
            using (MySqlConnection cn = new MySqlConnection(connectionString))
            {
                cn.Open();
                string sql = "INSERT INTO vehicles (vehicle_model, vehicle_name, reg_num, reg_date, country) VALUES (@model,@name,@reg_num,@reg_date,@country)";
                MySqlCommand cmd = new MySqlCommand(sql, cn);
                cmd.Parameters.AddWithValue("@model",model.SelectedItem);
                cmd.Parameters.AddWithValue("@name", vehicle_name.Text);
                cmd.Parameters.AddWithValue("@reg_num", reg_num.Text);
                cmd.Parameters.AddWithValue("@reg_date", reg_date.Text);
                cmd.Parameters.AddWithValue("@country", country.Text);
                cmd.ExecuteNonQuery();
                Response.Write("Successfull");
            }
            
        }

    }
}