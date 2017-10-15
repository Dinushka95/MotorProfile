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
using System.IO;

namespace MotorProfile
{
    public partial class index : System.Web.UI.Page
    {
        String currentuser;
        Boolean LoginStatues;


        protected void Page_Load(object sender, EventArgs e)
        {
            LoadPage();
        }

        public void LoadPage()
        {

            List<LatestcarnewModel> latestcarnewModel = new List<LatestcarnewModel>();
            latestcarnewModel = new SqlConnection().GetLatestcarnew();
            string myhtml = "";
            foreach (LatestcarnewModel ls in latestcarnewModel)
            {
                myhtml += $" <div class='newsItem-container col-xs-12 col-sm-6 col-lg-4'><div id = '_content_cro_en_cars1_jcrcontent_centerpars_newslist_v2_5_1462474367112' class='newsItem' data-url='{ls.Link}'>" +
                                     "   <div class='news-item'>" +
                                      "      <div class='figure'>" +
                                       $"         <img class='cr-image cr-image-lazy' src='{ls.Imagelink}'>" +
                                        "        <div class='news-overlay'></div>" +
                                         "   </div>" +
                                          $"  <p class='title'><a href = '{ls.Link}' > {ls.Tital}</a></p>" +
                                        "</div>" +
                                    "</div>" +
                            "</div>";
            }
            latestcarnew.InnerHtml = myhtml;
            myhtml = "";
            // System.Diagnostics.Debug.WriteLine(myhtml);
        }

        protected void Button3login_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                OwnerModel model = new OwnerModel(TextBox1.Text, TextBox2.Text);

                if (new SqlConnection().CheckLogin(model))
                {

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
        }

        protected void Buttonsignup_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                try
                {

                    string path = "/dinushka/Files/" + FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("Files\\") + FileUpload1.FileName);
                    System.Diagnostics.Debug.WriteLine(path);

                    string gen;
                    if (RadioButton1.Checked)
                    { gen = "male"; }
                    else { gen = "female"; }

                    OwnerModel model = new OwnerModel(TextBox6.Text, TextBox7.Text, TextBox8.Text, gen, TextBox9.Text, DateTime.Now.ToString("M/d/yyyy"), TextBox3.Text, TextBox4.Text, path, TextBox3.Text, TextBox4.Text);
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
}