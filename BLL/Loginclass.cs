using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
    public class Loginclass
    {
        Connectionclass objdal = new Connectionclass();
        public string Fn_cid(string un,string pw)
        {
            string s = "select count(login_id) from Logintab where username='" + un + "' and password='" + pw + "'";
            string cid = objdal.Fn_Scalar(s);
            return cid;
        }
        public string Fn_logtyp(string un,string pw)
        {
            string s = "select login_type from Logintab where username='" + un + "' and password='" + pw + "'";
            string logtyp = objdal.Fn_Scalar(s);
            return logtyp;
        }
    }
}
