using MotorProfileLibrary;
using MotorProfileLibrary.DataAccess;
using MotorProfileLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MotorProfile
{
    public partial class testing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            new SqlConnection().GetLatestcarnew();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
           
        
            string message = "You will now be redirected to YOUR Page.";
            string url = "http://www.yourpage.com/";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "');";
            script += "window.location = '";
            script += url;
            script += "'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
        
    }

    }
}