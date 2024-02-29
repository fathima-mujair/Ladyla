using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DAL;

namespace BLL
{
     public class cartclass
    {
        Connectionclass objdal = new Connectionclass();

        public DataSet view(string uid)
        {
            string s = "select producttab.product_name,producttab.product_id,producttab.image,carttab.quantity,carttab.total from producttab inner join carttab on producttab.product_id=carttab.product_id where carttab.user_id='" + uid + "'";
            //string s = "select producttab.image from producttab inner join carttab on producttab.product_id=carttab.product_id";
            DataSet ds = objdal.Fn_Dataset(s);
            return ds;
        }

        public SqlDataReader total(string uid)
        {
            string s = "select total from carttab where user_id='" + uid + "'";
            SqlDataReader dr = objdal.Fn_Reader(s);
            return dr;
        }

        public void delete(int prod_id, string uid)
        {
            string s="delete from carttab where user_id='" + uid + "' and product_id=" + prod_id + "";
            int i= objdal.Fn_Nonquery(s);
            
        }
        public SqlDataReader product_qty(int prod_id,string uid)
        {
            string s = "select quantity from carttab where user_id='" + uid + "' and product_id=" + prod_id + "";
            SqlDataReader dr = objdal.Fn_Reader(s);
            return dr;
        }

        public string price(int prod_id)
        {
            string s = "select price from producttab where product_id=" + prod_id + "";
            string prc= objdal.Fn_Scalar(s);
            return prc;
        }
        public string stock(int prod_id)
        {
            string s = "select stock from producttab where product_id=" + prod_id + "";
            string stk = objdal.Fn_Scalar(s);
            return stk;
        }

        public void update_qty(int prod_id,string uid,int prod_qty,int price)
        {
            string s = "update carttab set quantity=" + prod_qty + ", total=" + price + " where user_id='" + uid + "' and product_id=" + prod_id + "";

            objdal.Fn_Nonquery(s);
        }
    }
}
