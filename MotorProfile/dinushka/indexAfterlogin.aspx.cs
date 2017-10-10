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
        }
    }
}