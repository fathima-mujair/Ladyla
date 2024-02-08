using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Ladyla_Accesories
{

    public partial class Category : System.Web.UI.Page
    {
        Categoryinsertclass objbll = new Categoryinsertclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "";
            p = "~/images/Category" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            int i = objbll.insert(TextBox1.Text, p, TextBox2.Text);
                if(i != 0)
                Label4.Text = "Category Added";
        }

       
    }
}