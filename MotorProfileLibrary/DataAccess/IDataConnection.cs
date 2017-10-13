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

        OwnerModel CreateOwner(OwnerModel model);

        OwnerModel GetOwner(int key);

        bool CheckLogin(OwnerModel model);

        VehicleModel GetVehicleIOwn(string username);

       List <LatestcarnewModel> GetLatestcarnew();
    }
}
