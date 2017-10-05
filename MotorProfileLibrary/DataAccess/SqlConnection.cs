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
    public  class SqlConnection : IDataConnection
    {

        public UserModel CreateUser(UserModel model)
        {
            using (IDbConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MP_DB_Conn"].ConnectionString))
            {
                var p = new DynamicParameters();
                p.Add("username",model.Username);
                p.Add("password",model.Password);

                connection.Execute("mp_schema.CreateUser", p, commandType: CommandType.StoredProcedure);
                return model;
            }
        }

        public UserModel GetUser(UserModel model)
        {
            throw new NotImplementedException();
        }

        public VehicleModel GetVehicle(VehicleModel model)
        {
            throw new NotImplementedException();
        }
    }
}
