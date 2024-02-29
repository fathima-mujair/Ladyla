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
    public partial class Loginpage : System.Web.UI.Page
    {
        Loginclass objbll = new Loginclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cid = objbll.Fn_cid(TextBox10.Text, TextBox11.Text);
            string logtyp = objbll.Fn_logtyp(TextBox10.Text, TextBox11.Text);
            if(cid=="1")
            {

                if(logtyp=="admin")
                Label14.Text = "valid admin";
                if(logtyp=="user")
                    Label14.Text="valid user";
            }
            else
            {
                Label14.Text = "user doesn't exist";
            }
        }
    }
}