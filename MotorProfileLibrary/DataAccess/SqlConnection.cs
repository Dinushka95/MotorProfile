using System;
using Dapper;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MotorProfileLibrary.Models;
using System.Configuration;

namespace MotorProfileLibrary.DataAccess
{
    public class SqlConnection : IDataConnection
    {
        private string myKey = "MotorProfileWebSite";

        public OwnerModel CreateOwner(OwnerModel model)
        {

            using (IDbConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MP_DB_Conn"].ConnectionString))
            {
                var p = new DynamicParameters();
                p.Add("name", model.Name);
                p.Add("age", model.Age);
                p.Add("location", model.Location);
                p.Add("gender", model.Gender);
                p.Add("email", model.Email);
                p.Add("jdate", model.Jdate);
                p.Add("lsdate", model.Lsdate);
                p.Add("description", model.Description);
                p.Add("picture",model.Picture);
                p.Add("username", model.Username);
                p.Add("password", encryptionNow(model.Password));

                connection.Execute("mp_schema.CreateOwner", p, commandType: CommandType.StoredProcedure);
                return model;
            }

        }


        public int CheckLogin(OwnerModel model)
        {
            using (IDbConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MP_DB_Conn"].ConnectionString))
            {
                var p = new DynamicParameters();
                p.Add("username", model.Username);
                p.Add("password", encryptionNow(model.Password));

                p.Add("id", 0, dbType: DbType.Int32, direction: ParameterDirection.Output);

                connection.Execute("LoginOwner", p, commandType: CommandType.StoredProcedure);
                try
                {
                    model.Id = p.Get<int>("id");
                    System.Diagnostics.Debug.WriteLine(model.Id);
                    return model.Id;
                }
                catch (Exception)
                {
                    return 0;
                }
            }
        }

        public OwnerModel GetOwner(int key)
        {
            using (IDbConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MP_DB_Conn"].ConnectionString))
            {
                OwnerModel model = new OwnerModel();
                var p = new DynamicParameters();
                p.Add("searcid", key);
                p.Add("name1", 0, dbType: DbType.String, direction: ParameterDirection.Output);
                connection.Execute("ownersearchtest", p, commandType: CommandType.StoredProcedure);
                model.Name = p.Get<string>("name1");
                System.Diagnostics.Debug.WriteLine(model.Name);
                return model;

            }
        }

        public string decryptionNow(string d)
        {
            return Encryption.AESThenHMAC.CreateMD5(d);
        }

        public string encryptionNow(string e)
        {
            return Encryption.AESThenHMAC.CreateMD5(e);
        }

        public List<VehicleModel> GetVehicleIOwn(string username)
        {
            List<VehicleModel> output;

            using (IDbConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MP_DB_Conn"].ConnectionString))
            {
                var p = new DynamicParameters();
                p.Add("username", username);
                p.Add("id", 0, dbType: DbType.String, direction: ParameterDirection.Output);
                p.Add("picture", 0, dbType: DbType.String, direction: ParameterDirection.Output);
                p.Add("regnumber", 0, dbType: DbType.String, direction: ParameterDirection.Output);
                p.Add("vname", 0, dbType: DbType.String, direction: ParameterDirection.Output);
                p.Add("soldornot", 0, dbType: DbType.String, direction: ParameterDirection.Output);
                output = connection.Query<VehicleModel>("GetvehicleiownbyUsername", p, commandType: CommandType.StoredProcedure).ToList();
                


                System.Diagnostics.Debug.WriteLine(output[0].Name);

            }
            return output;

        }

        public List<LatestcarnewModel> GetLatestcarnew()
        {
            List <LatestcarnewModel> output = new List<LatestcarnewModel>();

            using (IDbConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MP_DB_Conn"].ConnectionString))
            {               
                output=connection.Query<LatestcarnewModel>("GetLatestcarnew").ToList();

                return output;
            }
        }

        VehicleModel IDataConnection.GetVehicleIOwn(string username)
        {
            throw new NotImplementedException();
        }
    }
}
