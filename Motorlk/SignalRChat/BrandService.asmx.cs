using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using MySql.Data;

namespace SignalRChat
{
    /// <summary>
    /// Summary description for BrandService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class BrandService : System.Web.Services.WebService
    {

        [WebMethod]
        public List<Brand> getBrand()
        {
            List<Brand> listBrands = new List<Brand>();
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spGetBrand", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Brand brand = new Brand();
                    brand.ID = Convert.ToInt32(rdr["ID"]);
                    brand.oname = rdr["oname"].ToString();
                    brand.brand = rdr["brand"].ToString();
                    listBrands.Add(brand);
                }
            }
            return listBrands;
        }
    }
}
