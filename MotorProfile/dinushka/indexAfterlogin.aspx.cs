using MotorProfileLibrary.Models;
using MotorProfileLibrary.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MotorProfile.dinushka
{
    public partial class indexAfterlogin : System.Web.UI.Page
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

            }
            else
            {
                Response.Redirect("index.aspx");

            }
            LoadPage();
        }


        public void LoadPage()
        {
      
            List<LatestcarnewModel> latestcarnewModel = new List<LatestcarnewModel>();
            latestcarnewModel = new SqlConnection().GetLatestcarnew();
            string myhtml = "";
            foreach (LatestcarnewModel ls in latestcarnewModel)
            {
            myhtml += $" <div class='newsItem-container col-xs-12 col-sm-6 col-lg-4'><div id = '_content_cro_en_cars1_jcrcontent_centerpars_newslist_v2_5_1462474367112' class='newsItem' data-url='{ls.Link}'>"+
                                 "   <div class='news-item'>"+
                                  "      <div class='figure'>"+
                                   $"         <img class='cr-image cr-image-lazy' src='{ls.Imagelink}'>"+
                                    "        <div class='news-overlay'></div>"+
                                     "   </div>"+
                                      $"  <p class='title'><a href = '{ls.Link}' > {ls.Tital}</a></p>"+
                                    "</div>"+
                                "</div>"+
                        "</div>";
            }
            latestcarnew.InnerHtml = myhtml;
            myhtml = "";
           // System.Diagnostics.Debug.WriteLine(myhtml);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["username"] = "";
            HttpContext.Current.Session["LogStatues"] =false;

            Response.Redirect("~/dinushka/index.aspx");
        }

        }
}