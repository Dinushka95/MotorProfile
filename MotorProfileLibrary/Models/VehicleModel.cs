using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MotorProfileLibrary.Models
{
    public class VehicleModel
    {
        public int Id { get; set; }
        public string Model { get; set; }
        public string Picture { get; set; }
        public string Name { get; set; }
        public string Regnumber { get; set; }
        public string Regdate { get; set; }
        public string Country { get; set; }
        public string Videolink { get; set; }
        public bool Soldornot { get; set; }

        public VehicleModel()
        {

        }

        public VehicleModel(int id, string model, string picture, string name, string regnumber,string regdate ,string country  ,string videolink, bool soldornot)
        {
            Id = id;
            Model = model;
            Picture = picture;
            Name = name;
            Regnumber = regnumber;
            Regdate = regdate;
            Country = country;
            Videolink = videolink;
            Soldornot = soldornot;
        }

    }
}
