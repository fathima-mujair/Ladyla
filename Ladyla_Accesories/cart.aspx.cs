using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BLL;

namespace Ladyla_Accesories
{
    public partial class cart : System.Web.UI.Page
    {
        cartclass objbll = new cartclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_datalist(); 
            }
        }

        public void bind_datalist()
        {
            string uid = Session["uid"].ToString();
            DataSet ds = objbll.view(uid);
            DataList1.DataSource = ds;
            DataList1.DataBind();

            SqlDataReader dr = objbll.total(uid);
            int total = 0;
            while (dr.Read())
            {
                total = total + Convert.ToInt32(dr["total"]);

            }
            Label7.Text = total.ToString();
        }

        public int quantity( int id)
        {
            string uid = Session["uid"].ToString();
            SqlDataReader dr1 = objbll.product_qty(id, Session["uid"].ToString());
            int prod_qty = 0;
            while (dr1.Read())
            {
                prod_qty = Convert.ToInt32(dr1["quantity"]);

            }
            return prod_qty;
        }
        protected void Button2_Command(object sender, CommandEventArgs e)
        {
            int product_id =Convert.ToInt32( e.CommandArgument);
            objbll.delete(product_id, Session["uid"].ToString());
            Response.Redirect("cart.aspx");
        }

        protected void Button3_Command(object sender, CommandEventArgs e)
        {
            int product_id = Convert.ToInt32(e.CommandArgument);
            int qty = quantity(product_id);
            int stock = Convert.ToInt32(objbll.stock(product_id));
            int prod_price = Convert.ToInt32( objbll.price(product_id));
            int new_qty = qty + 1;
            if(new_qty>stock)
            {
                bind_datalist();
            }
            else
            {
                int new_price = new_qty * prod_price;
                objbll.update_qty(product_id, Session["uid"].ToString(), new_qty, new_price);
                bind_datalist();
            }
            
            //SqlDataReader dr2 = objbll.total(uid);
            //int total = 0;
            //while (dr2.Read())
            //{
            //    total = total + Convert.ToInt32(dr2["total"]);

            //}
            //Label7.Text = total.ToString();
            //Response.Redirect("cart.aspx");

        }

        protected void Button4_Command1(object sender, CommandEventArgs e)
        {
            int product_id = Convert.ToInt32(e.CommandArgument);
            int qty = quantity(product_id);
           
            if (qty >= 0)
            {
                int new_qty = qty - 1;
                int prod_price = Convert.ToInt32(objbll.price(product_id));
                int new_price = new_qty * prod_price;
                objbll.update_qty(product_id, Session["uid"].ToString(), new_qty,new_price );
                bind_datalist();
               
            }
           

            //SqlDataReader dr2 = objbll.total(uid);
            //int total = 0;
            //while (dr2.Read())
            //{
            //    total = total + Convert.ToInt32(dr2["total"]);

            //}
            //Label7.Text = total.ToString();
            //Response.Redirect("cart.aspx");
        }
    }
}