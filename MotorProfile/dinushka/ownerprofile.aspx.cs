using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MotorProfile
{
    public partial class ownerprofile : System.Web.UI.Page
    {
        String currentuser;
        Boolean LoginStatues;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["username"] == null) { Response.Redirect("index.aspx"); }
            else
            {
                currentuser = Session["username"].ToString();
                LoginStatues = (Boolean)Session["LogStatues"];
                if (!LoginStatues) { Response.Redirect("index.aspx"); }

                welcomemessage.Text = "Welcome " + currentuser;
                accountnamemenu.Text = currentuser;
                ScriptManager.RegisterStartupScript(this, typeof(Page), "accountloginiconupdate", "$(document).ready(function(){updateLabel();});", true);
            }
            loadData();

        }

        private void loadData()
        {
            
            MySqlConnection connection = new MySqlConnection("Database=mp_schema;Data Source=motorprofile.cht0bvbob1wj.us-west-2.rds.amazonaws.com;User Id=motorprofile;Password=motorroot");
            connection.Open();
            MySqlCommand command = connection.CreateCommand();

            command.CommandText = "select * from mp_schema.myvehicle_table where idowner_myvehicle_tablecol=(SELECT `owner_table`.`id_owner_table`FROM `mp_schema`.`owner_table` where username_owner_tablecol='"+currentuser+"');";
            //command.ExecuteNonQuery();
            int count = 0;
            MySqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                int data_vehicleid;
                int data_ownit;

                data_vehicleid = reader.GetInt16(2);
                data_ownit = reader.GetInt16(3);
                count++;

            }
            reader.Close();
            connection.Close();


        }
        
    }
}