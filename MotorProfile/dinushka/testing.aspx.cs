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
        [WebMethod]
        public static string RegisterUser(string email, string password)
        {
            string result = "Congratulations!!! your account has been created.";
            if (email.Length == 0)//Zero length check
            {
                result = "Email Address cannot be blank";
            }
            else if (!email.Contains(".") || !email.Contains("@")) //some other basic checks
            {
                result = "Not a valid email address";
            }
            else if (!email.Contains(".") || !email.Contains("@")) //some other basic checks
            {
                result = "Not a valid email address";
            }

            else if (password.Length == 0)
            {
                result = "Password cannot be blank";
            }
            else if (password.Length < 5)
            {
                result = "Password canonot be less than 5 chars";
            }

            return result;
        }
    }
}