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

<<<<<<< HEAD
        OwnerModel GetOwner(int key);

        bool CheckLogin(OwnerModel model);

        VehicleModel GetVehicleIOwn(string username);
=======
        List<OwnerModel> GetOwner(OwnerModel model);

        bool CheckLogin(OwnerModel model);
>>>>>>> 77ecac6671e13534af60f49f21b1e545dc18ae00

    }
}
