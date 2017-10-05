using MotorProfileLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MotorProfileLibrary.DataAccess
{
    public interface IDataConnection
    {
        VehicleModel GetVehicle(VehicleModel model);

        UserModel CreateUser(UserModel model);

        UserModel GetUser(UserModel model);
    }
}
