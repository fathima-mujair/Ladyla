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
    public class userclass
    {
        Connectionclass objdal = new Connectionclass();

        public string categoryview(string name)
        {
            string s = "select category_id from categorytab where category_name='" + name + "'";
            string cate_id = objdal.Fn_Scalar(s);
            return cate_id;
        }
    }
}
