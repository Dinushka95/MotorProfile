using MotorProfileLibrary.DataAccess;
using MotorProfileLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Serialization;
using MySql.Data.MySqlClient;

namespace MotorProfile.dinushka
{
    /// <summary>
    /// Summary description for tesing
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class tesing : System.Web.Services.WebService
    {

        [WebMethod]
        public void getvaluebyid(int id)
        {
            OwnerModel model = new OwnerModel();
            model = new SqlConnection().GetOwner(id);

            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(model));
        }


        // search bar user names are searched by the letters entered
        [WebMethod]
        public void getuserprofilebycharater(string value)
        {
            // OwnerModel model = new OwnerModel();
            // model = new SqlConnection().GetOwner(value);

            //load owner details 
            MySqlConnection connection1 = new MySqlConnection("Database=mp_schema;Data Source=motorprofile.cht0bvbob1wj.us-west-2.rds.amazonaws.com;User Id=motorprofile;Password=motorroot;");
            connection1.Open();
            MySqlCommand command1 = connection1.CreateCommand();

            command1.CommandText = $"SELECT username_owner_tablecol FROM mp_schema.owner_table where username_owner_tablecol like '{value}%';";
            MySqlDataReader reader1 = command1.ExecuteReader();

            string x = null;

            while (reader1.Read()) {
                x = x + reader1.GetString(0)+" ";
              
            }

            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(x));
            reader1.Close();
            connection1.Close();

        }

    }
}
