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

<<<<<<< HEAD
=======

            string script = "alert(\"GGGGGGGGGGGGGGGGh!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
>>>>>>> 77ecac6671e13534af60f49f21b1e545dc18ae00
        }
    }
}