using System;
using System.Collections.Generic;
using MySql.Data.MySqlClient;
using System.Linq;
using MotorProfileLibrary.DataAccess;
using MotorProfileLibrary.Models;
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

        }

        protected void Button3login_Click(object sender, EventArgs e)
        {
            OwnerModel model = new OwnerModel(TextBox1.Text, TextBox2.Text);

            if (new SqlConnection().CheckLogin(model))
            {
                System.Diagnostics.Debug.WriteLine("ssssssssss");
                HttpContext.Current.Session["username"] = TextBox1.Text;
                HttpContext.Current.Session["LogStatues"] = true;

                ScriptManager.RegisterStartupScript((Page)(HttpContext.Current.Handler), typeof(Page), "myal‌​ert", "alert('Sucessfully Login ');", true);
                Response.Redirect("~/dinushka/indexAfterlogin.aspx");
                System.Diagnostics.Debug.WriteLine("ssssssssss");

            }
            else
            {
                System.Diagnostics.Debug.WriteLine("fffffffffffffffffff");
                HttpContext.Current.Session["LogStatues"] = false;
                Response.Redirect("index.aspx");

            }

        }

        protected void Buttonsignup_Click(object sender, EventArgs e)
        {
            try
            {
                string gen;
                if (RadioButton1.Checked)
                { gen = "male"; }
                else { gen = "female"; }

                OwnerModel model = new OwnerModel(TextBox6.Text, TextBox7.Text, TextBox8.Text, gen, TextBox9.Text, DateTime.Now.ToString("M/d/yyyy"), TextBox3.Text, TextBox4.Text, TextBox3.Text, TextBox4.Text);
                new SqlConnection().CreateOwner(model);

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