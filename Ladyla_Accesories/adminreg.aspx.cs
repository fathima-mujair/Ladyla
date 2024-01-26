using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Ladyla_Accesories
{
    public partial class adminreg : System.Web.UI.Page
    {
        Adminregclass objbll = new Adminregclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string reg_id = objbll.fn_uid(TextBox1.Text, TextBox6.Text);
            int i = objbll.Fn_insert(reg_id, TextBox1.Text,  TextBox3.Text,TextBox6.Text, TextBox7.Text, TextBox8.Text, "admin");
            if (i != 0)
                Response.Redirect("Login.aspx");

        }
    }
}