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
    public class productclass
    {
        Connectionclass objdal = new Connectionclass();
        public int insert(int cate_id,string prod_name,string prod_img,float prod_price,int prod_stock,string prod_disc)
        {
            string s = "insert into producttab values(" + cate_id + ",'" + prod_name + "'," + prod_price + "," + prod_stock + ",'" + prod_disc + "','" + prod_img + "','available')";
            int i = objdal.Fn_Nonquery(s);
            return i;
        }
        
        public DataSet ddlbinding()
        {
            string s = "select category_id,category_name from categorytab";
            DataSet ds = objdal.Fn_Dataset(s);
            return ds;
        }
    }
}
