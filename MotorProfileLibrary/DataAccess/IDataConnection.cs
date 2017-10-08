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

        List<OwnerModel> GetOwner(OwnerModel model);

        bool CheckLogin(OwnerModel model);

    }
}
