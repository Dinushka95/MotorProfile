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
        //  currentuser = Session["user"].ToString();
            
            if (Session["username"] == null) { Response.Redirect("index.aspx"); }
            else {
                currentuser = Session["username"].ToString();
                LoginStatues = (Boolean)Session["LogStatues"];
                if (!LoginStatues) { Response.Redirect("index.aspx"); }

                welcomemessage.Text = "WelCome "+currentuser;
                //accountlabel.Text = currentuser;



            }

            
        }


        
    }
}