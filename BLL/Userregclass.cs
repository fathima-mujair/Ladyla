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
    public class Userregclass
    {
        Connectionclass objdal = new Connectionclass();
        
        public DataSet fn_state()
        {
            string state = "select state_id, state from Statetab ";
            DataSet ds = objdal.Fn_Dataset(state);
            return ds;
        }
        public DataSet fn_dis()
        {
            string dis = "select district_id, district from Districttab ";
            DataSet ds = objdal.Fn_Dataset(dis);
            return ds;
        }
        public DataSet fn_dis1(int stateid)
        {
            string dis1 = "select district_id, district from Districttab where state_id='" + stateid + "'";
            DataSet ds1 = objdal.Fn_Dataset(dis1);
            return ds1;
        }
        public string fn_uid(string name,string phn)
        {
            string uid = name.Substring(0, 4) + phn.Substring(3, 6);
            return uid;

        }
        public int Fn_insert(string reg_id,string na, int ag, string addr, string gen, string pin, string dist, string state, string phn, string email, string pw,string usersts,string log_typ)
        {
            string insuser = "insert into Usertab values('" + reg_id + "','" + na + "'," + ag + ",'" + addr + "','" + gen + "','" + pin + "','" + dist + "','" + state + "','" + phn + "','" + email + "','" + usersts + "')";
            int i = objdal.Fn_Nonquery(insuser);

            string inslog = "insert into Logintab values('" + reg_id + "','" + na + "','" + pw + "','" + log_typ + "')";
            int j = objdal.Fn_Nonquery(inslog);

            return j;
        }
    }
}
