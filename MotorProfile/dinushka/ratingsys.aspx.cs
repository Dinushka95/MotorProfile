using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MotorProfile
{
    public partial class ratingsys : System.Web.UI.Page
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
                //LoadPage();
            }
            else
            {
                Response.Redirect("index.aspx");

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["username"] = "";
            HttpContext.Current.Session["LogStatues"] = false;

            Response.Redirect("~/dinushka/index.aspx");
        }
    }
}
