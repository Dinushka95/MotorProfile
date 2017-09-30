using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace aspwebtemp1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlBind();
                viewcar();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        private void ddlBind()
        {
            string connectionString = @"Data Source=localhost; Database=motor_profile; User ID=root; Password=''";
            using (MySqlConnection cn = new MySqlConnection(connectionString))
            {
                MySqlDataAdapter adp = new MySqlDataAdapter("Select vehicle_id, vehicle_name from vehicles", cn);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ddl.DataSource = dt;
                    ddl.DataTextField = "vehicle_name";
                    ddl.DataValueField = "vehicle_id";
                    ddl.DataBind();
                }
            }
        }

        private void viewcar()
        {
            string connectionString = @"Data Source=localhost; Database=motor_profile; User ID=root; Password=''";
            using (MySqlConnection cn = new MySqlConnection(connectionString))
            {
                MySqlDataAdapter adp = new MySqlDataAdapter("Select * from vehicles where vehicle_name='"+ ddl.SelectedItem +"'" , cn);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    lb1.Text = dt.Rows[0].Field<string>("vehicle_name").ToString();
                    lb11.Text = dt.Rows[0].Field<string>("vehicle_model").ToString();
                    lb2.Text = dt.Rows[0].Field<string>("reg_num").ToString();
                    lb3.Text = dt.Rows[0].Field<string>("reg_date").ToString();
                    lb4.Text = dt.Rows[0].Field<string>("country").ToString();
                }
            }
        }
        private void deletecar()
        {
            string connectionString = @"Data Source=localhost; Database=motor_profile; User ID=root; Password=''";
            using (MySqlConnection cn = new MySqlConnection(connectionString))
            {
                cn.Open();
                string sql = "Delete from vehicles where vehicle_name='"+ddl.SelectedItem+"'";
                MySqlCommand cmd = new MySqlCommand(sql, cn);
                cmd.ExecuteNonQuery();
                Response.Write("Successfull");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            viewcar();
            ddlBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            deletecar();
            ddlBind();
        }
    }
}
