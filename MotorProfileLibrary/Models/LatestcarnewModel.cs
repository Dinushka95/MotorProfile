using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MotorProfileLibrary.Models
{
   public  class LatestcarnewModel
    {
        public int Id { get; set; }
        public string Imagelink { get; set; }
        public string Link { get; set; }
        public string Tital { get; set; }

        public LatestcarnewModel()
        {

        }

        public LatestcarnewModel(string imagelink,string link,string tital)
        {
            Imagelink = imagelink;
            Link = link;
            Tital = tital;
        }


    }
}
