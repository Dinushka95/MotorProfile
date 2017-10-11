using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.IO;

namespace SignalRChat
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("server = localhost; user id = root; database = motor");
        protected void Page_Load(object sender, EventArgs e)
        {
            NewMethod();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string filename = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/" + filename));

            }
            else {
                show();
            }

            Response.Redirect("~/Gallery/WebForm1.aspx/");
        }

        private void NewMethod()
        {
            foreach (string strFileName in Directory.GetFiles(Server.MapPath("~/Images/")))
            {
                ImageButton imgbtn = new ImageButton();
                FileInfo fileinfo = new FileInfo(strFileName);
                imgbtn.ImageUrl = "~/Images/" + fileinfo.Name;
                imgbtn.Width = Unit.Pixel(300);
                imgbtn.Height = Unit.Pixel(300);
                imgbtn.Style.Add("padding", "5px");
                imgbtn.Click += new ImageClickEventHandler(imgbtn_click);
                Panel1.Controls.Add(imgbtn);
            }
        }

        private void imgbtn_click(object sender, ImageClickEventArgs e)
        {


            //Image1.ImageUrl= Response.Redirect(((ImageButton)sender).ImageUrl);
            Response.Redirect("~/imageview.aspx/?ImageURL=" +((ImageButton)sender).ImageUrl);

        }


        public void show()
        {
            string message = "please choose a image file !";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }
    }
}