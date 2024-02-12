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
    public partial class productedit : System.Web.UI.Page
    {
        productclass objbll = new productclass();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Session["product_id"]);
                SqlDataReader dr = objbll.editview(id);

                while (dr.Read())
                {
                    TextBox1.Text = dr["product_name"].ToString();
                    Image1.ImageUrl = dr["image"].ToString();
                    TextBox2.Text = dr["price"].ToString();
                    TextBox3.Text = dr["stock"].ToString();
                    TextBox4.Text = dr["description"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["product_id"]);
            int i = objbll.edit(id, TextBox1.Text, Image1.ImageUrl,Convert.ToInt32(TextBox2.Text),Convert.ToInt32(TextBox3.Text),TextBox4.Text);
            if (i != 0)
                Label4.Text = "Product Updated";
            Response.Redirect("productview.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["product_id"]);
            int i = objbll.delete(id);
            if (i != 0)
                Label4.Text = "Product Deleted";

            Response.Redirect("productview.aspx");
        }
    }
}