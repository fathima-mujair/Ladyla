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
    public partial class categoryedit : System.Web.UI.Page
    {
        Categoryinsertclass objbll = new Categoryinsertclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Session["category_id"]);
                SqlDataReader dr = objbll.editview(id);

                while (dr.Read())
                {
                    TextBox1.Text = dr["category_name"].ToString();
                    Image1.ImageUrl = dr["image"].ToString();
                    TextBox2.Text = dr["description"].ToString();
                }
            }

                

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Session["category_id"]);
            int i = objbll.edit(id, TextBox1.Text, Image1.ImageUrl, TextBox2.Text);
            if (i != 0)
                Label4.Text = "Category Updated";
            Response.Redirect("categoryview.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Session["category_id"]);
            int i = objbll.delete(id);
            if (i != 0)
                Label4.Text = "Category Deleted";

            Response.Redirect("categoryview.aspx");

        }
    }
}