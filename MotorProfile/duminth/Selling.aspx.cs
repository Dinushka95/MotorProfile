using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MotorProfile.duminth
{
    public partial class Selling : System.Web.UI.Page
    {

        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3306;initial Catalog=motorprofile.lk;User Id=root;password=''");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MySqlDataAdapter da = new MySqlDataAdapter("select * from selling", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "vehicleno";
                DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("insert into selling values('" + TextBox0.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("update selling set brand='" + TextBox1.Text + "',model='" + TextBox2.Text + "',year='" + TextBox3.Text + "',fueltype='" + TextBox4.Text + "',enginecapacity='" + TextBox5.Text + "',mileage='" + TextBox6.Text + "',status='" + TextBox7.Text + "',prize='" + TextBox8.Text + "',contactno='" + TextBox9.Text + "',email= '" + TextBox10.Text + "' where vehicleno ='" + DropDownList1.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MySqlDataAdapter da = new MySqlDataAdapter("select * from selling where vehicleno='" + DropDownList1.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            TextBox0.Text = dt.Rows[0][0].ToString();
            TextBox1.Text = dt.Rows[0][1].ToString();
            TextBox2.Text = dt.Rows[0][2].ToString();
            TextBox3.Text = dt.Rows[0][3].ToString();
            TextBox4.Text = dt.Rows[0][4].ToString();
            TextBox5.Text = dt.Rows[0][5].ToString();
            TextBox6.Text = dt.Rows[0][6].ToString();
            TextBox7.Text = dt.Rows[0][7].ToString();
            TextBox8.Text = dt.Rows[0][8].ToString();
            TextBox9.Text = dt.Rows[0][9].ToString();
            TextBox10.Text = dt.Rows[0][10].ToString();


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("delete from selling where vehicleno ='" + DropDownList1.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void button5_Click(object sender, EventArgs e)
        {
            string find = "select * from selling where(vehicleno like '%' )";
            MySqlCommand cmd = new MySqlCommand(find, con);
            cmd.Parameters.Add("@vehicleno", MySqlDbType.VarChar).Value = TextBox0.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "vehicleno");
            con.Close();
        }
    }
}