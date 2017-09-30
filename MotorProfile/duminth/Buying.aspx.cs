using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MotorProfile.duminth
{
    public partial class Buying : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnr(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:1598/Buying1.aspx");
        }
    }
}