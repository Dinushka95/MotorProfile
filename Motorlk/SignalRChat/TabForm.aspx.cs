using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


namespace SignalRChat
{
    public partial class TabForm : System.Web.UI.Page
    {
        public String id = String.Empty;
        public String brand = String.Empty;
       

        protected void Page_Load(object sender, EventArgs e)
        {
            /* try {
                 Services.BrandServiceSoapClient client = new Services.BrandServiceSoapClient();
                 Services.Brand[] brands = client.getBrand();

                 Repeater1.DataSource = brands;
                 Repeater1.DataBind();

                 Repeater2.DataSource = brands;
                 Repeater2.DataBind();
             } catch (Exception ex){

             }
          */
            BindData();
        }

        public void BindData()
        {
            MySqlConnection con = new MySqlConnection("server = localhost; user id = root; database = motor");
            con.Open();           

            MySqlCommand cmd = new MySqlCommand("select  ID,brand from vehicle where oname ='Sunil'", con);
            

            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            

            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                id = reader[0].ToString();
                brand = reader[1].ToString();
                
                
            }
       

            Repeater1.DataSource = ds;
            Repeater1.DataBind();

            Repeater2.DataSource = ds;
            Repeater2.DataBind();

           

            
            con.Close();


        }
    }
}