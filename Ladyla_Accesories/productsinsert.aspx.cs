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
    public partial class productsinsert : System.Web.UI.Page
    {
        productclass objbll = new productclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet ds = objbll.ddlbinding();
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "category_name";
                DropDownList1.DataValueField = "category_id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "select");
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "";
            p = "~/images/Product" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            int i = objbll.insert(Convert.ToInt32( DropDownList1.SelectedItem.Value),TextBox1.Text,p,Convert.ToInt32( TextBox2.Text),Convert.ToInt32( TextBox3.Text),TextBox4.Text);
            if (i != 0)
                Label7.Text = "Product Added";

        }


    }
}