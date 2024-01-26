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
    public partial class userreg : System.Web.UI.Page
    {
        Userregclass objbll = new Userregclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet ds = objbll.fn_state();
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "state";
                DropDownList1.DataValueField = "state_id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "select");

                DataSet ds1 = objbll.fn_dis();
                DropDownList3.DataSource = ds1;
                DropDownList3.DataTextField = "district";
                DropDownList3.DataValueField = "district_id";
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, "select");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string reg_id = objbll.fn_uid(TextBox1.Text, TextBox6.Text);
            int i = objbll.Fn_insert(reg_id, TextBox1.Text, Convert.ToInt32(TextBox2.Text), TextBox3.Text, RadioButtonList1.SelectedItem.Text, TextBox4.Text, DropDownList1.SelectedItem.Text, DropDownList3.SelectedItem.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text, "active", "user");
            if (i != 0)
                Response.Redirect("Login.aspx");

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int stateid =Convert.ToInt32(DropDownList1.SelectedItem.Value);
            DataSet ds1 = objbll.fn_dis1(stateid);
            DropDownList3.DataSource = ds1;
            DropDownList3.DataTextField = "district";
            DropDownList3.DataValueField = "district_id";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, "select");
        }
    }
}