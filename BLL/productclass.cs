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

        public int insert(int cate_id, string prod_name, string prod_img, float prod_price, int prod_stock, string prod_disc)
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

        public DataSet view()
        {
            string s = "select product_id,product_name,image,price from producttab";
            DataSet ds = objdal.Fn_Dataset(s);
            return ds;
        }

        public SqlDataReader editview(int prod_id)
        {
            string s = "select product_name,price,stock,image,price,stock,description from producttab where product_id=" + prod_id + "";
            SqlDataReader dr = objdal.Fn_Reader(s);
            return dr;
        }

        public int edit(int prod_id, string prod_name, string prod_img, float price,int stock, string cate_desc)
        {
            string s = "update producttab set product_name='" + prod_name + "',image='" + prod_img + "',price="+price+",stock="+stock+",description='" + cate_desc + "'where product_id=" + prod_id + "";
            int i = objdal.Fn_Nonquery(s);
            return i;
        }

        public int delete(int prod_id)
        {
            string s = "delete from producttab where product_id=" + prod_id + "";
            int i = objdal.Fn_Nonquery(s);
            return i;
        }
    }
}
