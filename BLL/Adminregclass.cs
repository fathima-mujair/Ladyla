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
    public class Adminregclass
    {
        Connectionclass objdal = new Connectionclass();
        public string fn_uid(string name, string phn)
        {
            string uid = name.Substring(0, 4) + phn.Substring(3, 6);
            return uid;

        }
        public int Fn_insert(string reg_id, string na, string addr, string phn, string email, string pw, string log_typ)
        {
            string insuser = "insert into Admintab values('" + reg_id + "','" + na + "','" + addr + "','" + email + "','" + phn + "')";
            int i = objdal.Fn_Nonquery(insuser);

            string inslog = "insert into Logintab values('" + reg_id + "','" + na + "','" + pw + "','" + log_typ + "')";
            int j = objdal.Fn_Nonquery(inslog);

            return j;
        }
    }
}
