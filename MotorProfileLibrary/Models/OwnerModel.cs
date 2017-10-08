using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MotorProfileLibrary.Models
{
    public class OwnerModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Age { get; set; }
        public string Location { get; set; }
        public string Gender { get; set; }
        public string Email { get; set; }
        public string Jdate { get; set; }
        public string Lsdate { get; set; }
        public string Description { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }


        public OwnerModel()
        {

        }

        public OwnerModel( string username, string password)
        {
            Username = username;
            Password = password;
        }

        

        public OwnerModel(string name, string age ,string location, string gender,string email,string jdate,string lsdate,string description,string username,string password)
        {
            Name = name;
            Age = age;
            Location = location;
            Gender = gender;
            Email = email;
            Jdate = jdate;
            lsdate = Lsdate;
            Description = description;
            Username = username;
            Password = password;
        }


        public OwnerModel(int id, string name, string age, string location, string gender, string email, string jdate, string lsdate, string description, string username, string password)
        {
            Id = id;
            Name = name;
            Age = age;
            Location = location;
            Gender = gender;
            Email = email;
            Jdate = jdate;
            lsdate = Lsdate;
            Username = username;
            Password = password;
        }



    }
}
