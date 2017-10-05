using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MotorProfileLibrary.Models
{
    public class UserModel
    {
        public int Id { get; set; }
        public String Username { get; set; }
        public String Password { get; set; }

        public UserModel()
        {
            
        }

        public UserModel(String username, String password)
        {
            Username = username;
            Password = password;
        }


    }


}
