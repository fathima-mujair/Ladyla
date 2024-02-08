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
   public class Categoryinsertclass
    {
        Connectionclass objdal = new Connectionclass();
        public int insert( string cate_name, string cate_img,string cate_desc)
        {
            string s = "insert into categorytab values('" + cate_name + "','" + cate_img + "','" + cate_desc + "','available')";
            int i = objdal.Fn_Nonquery(s);
            return i;
        }

        public DataSet view()
        {
            string s = "select category_id,category_name,image,description from categorytab";
            DataSet ds = objdal.Fn_Dataset(s);
            return ds;
        }
       
        public SqlDataReader editview(int cate_id)
        {
            string s = "select category_name,image,description from categorytab where category_id=" + cate_id + "";
            SqlDataReader dr = objdal.Fn_Reader(s);
            return dr;
        }
    }
}
