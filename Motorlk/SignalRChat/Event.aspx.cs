using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.IO;
using System.Configuration;
using System.Web;

namespace SignalRChat
{
    public partial class Event : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3306;initial Catalog=motor;User Id=root;password=''");
        protected void Page_Load(object sender, EventArgs e)
        {
            //BindData();


            if (!IsPostBack)
            {
                btnDelete.Enabled = false;
                FillGridView();
            }
       
        }

     

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }

        public void clear()
        {
            hfid.Value = "";
            TextBox1.Text = TextBox2.Text = TextBox3.Text = "";
            lblsuccess.Text = lblfail.Text = "";
            btnAdd.Text = "Add";
            btnDelete.Enabled = false;
        }

        void FillGridView()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
                /*
                MySqlDataAdapter sqlda = new MySqlDataAdapter();
                sqlda.SelectCommand.CommandType = CommandType.Text;
                DataTable dt = new DataTable();
                sqlda.Fill(dt);
                con.Close();
                GridView1.DataSource = dt;
                GridView1.DataBind();
                */
                
                MySqlCommand cmd = new MySqlCommand("select id,eName,venue,description from eventdetails", con);
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();


            }
        }

        protected void lnk_onclick(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32((sender as LinkButton).CommandArgument);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();

                MySqlCommand cmd = new MySqlCommand("select id,eName,venue,description from eventdetails where id='"+ ID + "'", con);
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                sda.Fill(ds);
                sda.Fill(dt);
                
                con.Close();
                hfid.Value = ID.ToString();
                TextBox1.Text = dt.Rows[0]["eName"].ToString();  
                TextBox2.Text = dt.Rows[0]["venue"].ToString();
                TextBox3.Text = dt.Rows[0]["description"].ToString();
                //btnAdd.Text = "Update";
                btnDelete.Enabled = true;
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Insert into eventdetails(eName,date,venue,description) values('" + TextBox1.Text + "','" + Calendar1.SelectedDate.ToString("dd/MM/yyyy") + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                string ID = hfid.Value;
                clear();

                if (ID == "")
                {
                    lblsuccess.Text = "Added Successfully";
                }
                else
                {
                    lblsuccess.Text = "Updated Successfully";
                }

                FillGridView();
                
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(hfid.Value);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Delete from eventdetails where id = '"+ ID + "' ";
                cmd.ExecuteNonQuery();
                con.Close();
                clear();
                FillGridView();
                lblsuccess.Text = "Deleted successfully";
                
                

            }
        }

        protected void btnUpdate(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(hfid.Value);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Update eventdetails set eName='"+ TextBox1.Text + "', venue='" + TextBox2.Text + "', description='" + TextBox3.Text + "' where id = '" + ID + "' ";
                cmd.ExecuteNonQuery();
                con.Close();
                clear();
                FillGridView();
                lblsuccess.Text = "Updated successfully";



            }
        }

        public void BindData()
        {
            MySqlConnection con = new MySqlConnection("server = localhost; user id = root; database = motor");
            con.Open();


            MySqlCommand cmd = new MySqlCommand("select  * from image", con);


            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();          
            adp.Fill(ds);

            Repeater1.DataSource = ds;
            Repeater1.DataBind();

          
            con.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Gallery/WebForm1.aspx");


        }
    }
}