using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using BLL;

namespace Ladyla_Accesories
{
    public partial class Productview : System.Web.UI.Page
    {
        productclass objbll=new productclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string cate_id = Session["category_id"].ToString();
                DataSet ds = objbll.view(cate_id);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            Session["product_id"] = getid;
            Response.Redirect("productedit.aspx");
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            int product_id = Convert.ToInt32(e.CommandArgument);
            Session["product_id"] = product_id;
            if(Session["uid"]==null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                string uid = Session["uid"].ToString();
                int count_id =Convert.ToInt32( objbll.count(uid));
                if(count_id==0)
                {
                    count_id = 10;
                }
                else
                {
                    count_id++;
                }
                string cart_id = Session["uid"] + count_id.ToString();
                int product_price = objbll.prod_price(product_id);
                int i = objbll.addcart(cart_id, product_price, uid,product_id);
                
            }
        }
    }
}