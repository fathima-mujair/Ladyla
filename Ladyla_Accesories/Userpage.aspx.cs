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
    public partial class Userpage : System.Web.UI.Page
    {
        userclass objbll = new userclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = "Bracelets";
            Session["category_id"] = objbll.categoryview(name);
            Response.Redirect("productview.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string name = "Rings";
            Session["category_id"] = objbll.categoryview(name);
            Response.Redirect("productview.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string name = "Earrings";
            Session["category_id"] = objbll.categoryview(name);
            Response.Redirect("productview.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string name = "Chains";
            Session["category_id"] = objbll.categoryview(name);
            Response.Redirect("productview.aspx");
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            string name = "Bangles";
            Session["category_id"] = objbll.categoryview(name);
            Response.Redirect("productview.aspx");
        }
    }
}