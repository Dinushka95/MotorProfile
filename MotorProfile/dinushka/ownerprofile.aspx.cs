using MotorProfileLibrary.DataAccess;
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

        }

        public void LoadPage()
        {
            Label1.Text= DateTime.Now.ToString("M/d/yyyy");


            //load owner details 
            MySqlConnection connection1 = new MySqlConnection("Database=mp_schema;Data Source=motorprofile.cht0bvbob1wj.us-west-2.rds.amazonaws.com;User Id=motorprofile;Password=motorroot;");
            connection1.Open();
            MySqlCommand command1 = connection1.CreateCommand();

            command1.CommandText = $"SELECT * FROM `mp_schema`.`owner_table` where username_owner_tablecol ='{currentuser}';";
            MySqlDataReader reader1 = command1.ExecuteReader();

            OwnerModel ownedmodel = new OwnerModel();
            reader1.Read();

            ownedmodel.Id = reader1.GetInt32(0);
            ownedmodel.Name = reader1.GetString(1);
            ownedmodel.Age = reader1.GetString(2);
            ownedmodel.Location = reader1.GetString(3);
            ownedmodel.Gender = reader1.GetString(4);
            ownedmodel.Email = reader1.GetString(5);
            ownedmodel.Jdate = reader1.GetString(6);
            //ownedmodel.Lsdate = reader1.GetString(1);
            ownedmodel.Description = reader1.GetString(8);
            ownedmodel.Picture = reader1.GetString(11);
            //ownedmodel.Picture = reader1.GetString("picture_owner_tablecol");

            reader1.Close();
            connection1.Close();
            System.Diagnostics.Debug.WriteLine(ownedmodel.Picture);
            Image1.ImageUrl = ownedmodel.Picture;
            Label2des.Text = ownedmodel.Description;
            Label2name.Text = ownedmodel.Name;
            Label3location.Text = ownedmodel.Location;

            //------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            //load vehicles  details 
            MySqlConnection connection = new MySqlConnection("Database=mp_schema;Data Source=motorprofile.cht0bvbob1wj.us-west-2.rds.amazonaws.com;User Id=motorprofile;Password=motorroot;");
            connection.Open();
            MySqlCommand command = connection.CreateCommand();

            command.CommandText = "SELECT `myvehicle_table`.`idowner_myvehicle_tablecol`,`vehicle_table`.`id_vehicle_table`,`vehicle_table`.`model_vehicle_tablecol`,`vehicle_table`.`picture_vehicle_tablecol`,`vehicle_table`.`name_vehicle_tablecol`,`vehicle_table`.`regnumber_vehicle_tablecol`, `vehicle_table`.`regdate_vehicle_tablecol`,`vehicle_table`.`country_vehicle_tablecol`,`vehicle_table`.`videolink_vehicle_tablecol`, `myvehicle_table`.`soldornot_myvehicle_tablecol` FROM mp_schema.myvehicle_table LEFT JOIN mp_schema.vehicle_table on idvehicle_myvehicle_tablecol = id_vehicle_table group by id_vehicle_table having idowner_myvehicle_tablecol = ( SELECT id_owner_table FROM mp_schema.owner_table where username_owner_tablecol ='" + currentuser + "'); ";
            MySqlDataReader reader = command.ExecuteReader();

            List<VehicleModel> iownmodels = new List<VehicleModel>();
           // iownmodels = new SqlConnection().GetVehicleIOwn("admin");
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
                { iownmodels.Add(model); }
                else
                { iownedmodels.Add(model); }


                System.Diagnostics.Debug.WriteLine(model);

            }

            reader.Close();
            connection.Close();

            string myhtml = "";

            welcomemessage.Text = "Welcome " + currentuser;

            foreach (VehicleModel x in iownmodels)
            {
                System.Diagnostics.Debug.WriteLine(x.Name);
                myhtml += $"<div class=\"col-md-4\"><div class=\"thumbnail\"><img alt=\"300x200\" src=\"{x.Picture}\"><div class=\"caption\"><h3>{x.Model}</h3><p>{x.Name + x.Regnumber}</p></div></div> </div> ";
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["username"] = "";
            HttpContext.Current.Session["LogStatues"] = false;

            Response.Redirect("~/dinushka/index.aspx");
        }


    }
}