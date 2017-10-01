using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace MotorProfile
{
    public partial class index : System.Web.UI.Page
    {
        String currentuser;
        Boolean LoginStatues;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                currentuser = Session["username"].ToString();
                LoginStatues = (Boolean)Session["LogStatues"];


                // welcomemessage.Text = "Welcome " + currentuser;
                accountnamemenu.Text = currentuser;
                //ScriptManager.RegisterStartupScript(this, typeof(Page), "accountloginicone", "$(document).ready();", true);

                string script = " $('#signupbutton').hide(); $('#loginbutton').hide(); hideaccountsucess(); ";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                ScriptManager.RegisterStartupScript(this, typeof(Page), "accountloginiconupdate", "$(document).ready(function(){updateLabelqq();});", true);
            }
            else
            {
                
                    string script = " hideaccountload() ";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }


        }

        [WebMethod]

        public static string LoginUser(string email, string password)
        {
            Console.WriteLine("Started the login function");
            string result = "Congratulations!!! your account has been created.";
            string col1Value="";

            if (email.Length == 0)//Zero length check
            {
                return result = "username Emtype";
            }

            else if (password.Length == 0)
            {
                return result = "Password cannot be blank";
            }
              
          else  {

                try
                {
                    Console.WriteLine("connect to db");
                    MySqlConnection connection = new MySqlConnection("Database=mp_schema;Data Source=localhost;User Id=root;Password=root");
                    connection.Open();
                    MySqlCommand command = connection.CreateCommand();

                    command.CommandText = "SELECT `owner_table`.`username_owner_tablecol`FROM `mp_schema`.`owner_table`where `owner_table`.`username_owner_tablecol`= \""+email+"\" AND `owner_table`.`password_owner_tablecol`= \""+password+"\"; ";
                    //command.ExecuteNonQuery();

                    MySqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        col1Value = reader.GetString(0);
                        
                    }
                    reader.Close();
                    connection.Close();

                    if (col1Value.Equals(email))
                    {
                        Console.WriteLine("success full login");

                        HttpContext.Current.Session["username"] = email;
                        HttpContext.Current.Session["LogStatues"] = true;


                        //ScriptManager.RegisterClientScriptBlock((Page)(HttpContext.Current.Handler), typeof(Page), "ApprovalHistory", "closeloginModal();", true);

                        ScriptManager.RegisterStartupScript((Page)(HttpContext.Current.Handler), typeof(Page), "myal‌​ert", "alert('Sucessfully Login ');", true);
                        // Page.ClientScript.RegisterStartupScript(this.GetType(), "myal‌​ert", "alert('Sucessfully Login "+email+ " ');", true);
                        //ScriptManager.RegisterStartupScript(this, this.GetType(), "isActive", "closeloginModal();", true);
                       

                        System.Diagnostics.Debug.WriteLine("ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
                        return "sucessfully login";
                    }
                    else { Console.WriteLine("fail"); return "Failed login"; }
                }
                catch (Exception)
                {
                    Console.WriteLine("fail");
                    return "Failed login";
                }

                
            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection connection = new MySqlConnection("Database=mp_schema;Data Source=localhost;User Id=root;Password=root");
                connection.Open();
                MySqlCommand command = connection.CreateCommand();
                string gen;
                if (RadioButton1.Checked)
                { gen = "male"; }
                else { gen = "female"; }
                string x= "INSERT INTO `mp_schema`.`owner_table`(`name_owner_tablecol`,`age_owner_tablecol`,`location_owner_tablecol`,`gender_owner_tablecol`,`email_owner_tablecol`,`username_owner_tablecol`,`password_owner_tablecol`)VALUES('" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + gen + "','" + TextBox9.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'); ";
                command.CommandText = x;
                command.ExecuteNonQuery();
                connection.Close();
                string script = "alert(\"sucessfully to add!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            catch (Exception)
            {
                string script = "alert(\"Fail to add!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

            }

        }
    }
}