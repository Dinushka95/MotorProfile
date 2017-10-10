using MotorProfileLibrary.Models;
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
            if ((Session["username"] != null))
            {
                currentuser = Session["username"].ToString();
                LoginStatues = (Boolean)Session["LogStatues"];

                accountnamemenu.Text = currentuser;
                LoadPage();
            }
            else
            {
                Response.Redirect("index.aspx");

            }

<<<<<<< HEAD
        }

        public void LoadPage() {

            MySqlConnection connection = new MySqlConnection("Database=mp_schema;Data Source=Database=mp_schema;Data Source=motorprofile.cht0bvbob1wj.us-west-2.rds.amazonaws.com;User Id=motorprofile;Password=motorroot");
=======
        private void loadData()
        {
            
            MySqlConnection connection = new MySqlConnection("Database=mp_schema;Data Source=motorprofile.cht0bvbob1wj.us-west-2.rds.amazonaws.com;User Id=motorprofile;Password=motorroot");
>>>>>>> 77ecac6671e13534af60f49f21b1e545dc18ae00
            connection.Open();
            MySqlCommand command = connection.CreateCommand();

            command.CommandText = "SELECT `myvehicle_table`.`idowner_myvehicle_tablecol`,`vehicle_table`.`id_vehicle_table`,`vehicle_table`.`model_vehicle_tablecol`,`vehicle_table`.`picture_vehicle_tablecol`,`vehicle_table`.`name_vehicle_tablecol`,`vehicle_table`.`regnumber_vehicle_tablecol`, `vehicle_table`.`regdate_vehicle_tablecol`,`vehicle_table`.`country_vehicle_tablecol`,`vehicle_table`.`videolink_vehicle_tablecol`, `myvehicle_table`.`soldornot_myvehicle_tablecol` FROM mp_schema.myvehicle_table LEFT JOIN mp_schema.vehicle_table on idvehicle_myvehicle_tablecol = id_vehicle_table group by id_vehicle_table having idowner_myvehicle_tablecol = ( SELECT id_owner_table FROM mp_schema.owner_table where username_owner_tablecol ='" + currentuser + "'); ";
            MySqlDataReader reader = command.ExecuteReader();

<<<<<<< HEAD
            List<VehicleModel> iownmodels = new List <VehicleModel>();
            List<VehicleModel> iownedmodels = new List<VehicleModel>();
            while (reader.Read())
            {   
                VehicleModel model = new VehicleModel();
                model.Id = reader.GetInt32(1);
                model.Model = reader.GetString(2);
                model.Picture = reader.GetString(3);
                model.Name = reader.GetString(4);
                model.Regnumber = reader.GetString(5);
                model.Regdate = reader.GetString(6);
                model.Country = reader.GetString(7);
                model.Videolink = reader.GetString(8);
                model.Soldornot = reader.GetBoolean(9);
                if (reader.GetBoolean(9))
                { iownmodels.Add(model);}
                else
                { iownedmodels.Add(model); }
                

                System.Diagnostics.Debug.WriteLine(model);

=======
>>>>>>> 77ecac6671e13534af60f49f21b1e545dc18ae00
            }
            
            reader.Close();
            connection.Close();
            string myhtml = "";

            welcomemessage.Text ="Welcome "+ currentuser;

            foreach (VehicleModel x in iownmodels)
            {
                myhtml +=$"<div class=\"col-md-4\"><div class=\"thumbnail\"><img alt=\"300x200\" src=\"{x.Picture}\"><div class=\"caption\"><h3>{x.Model}</h3><p>{x.Name + x.Regnumber}</p></div></div> </div> ";
            }
            myowncar.InnerHtml = myhtml;

            myhtml = "";

            foreach (VehicleModel x in iownedmodels)
            {
                myhtml += $"<div class=\"col-md-4\"><div class=\"thumbnail\"><img alt=\"300x200\" src=\"{x.Picture}\"><div class=\"caption\"><h3>{x.Model}</h3><p>{x.Name + x.Regnumber}</p></div></div> </div> ";
            }
            myownedcar.InnerHtml = myhtml;


            //myowncar.InnerHtml = "<div class=\"col-md-4\"><div class=\"thumbnail\"><img alt=\"300x200\" src=\"img/sports.jpg\"><div class=\"caption\"><h3>Rover</h3><p>CAR DETAILS</p></div></div> </div>";

        }
        
    }
}