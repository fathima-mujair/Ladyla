using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using System.Data.SqlClient;
namespace Ladyla_Accesories
{
   
    public partial class categoryview : System.Web.UI.Page
    {
        Categoryinsertclass objbll = new Categoryinsertclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet ds = objbll.view();
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            Session["category_id"] = getid;
            Response.Redirect("categoryedit.aspx");

        }
       
       



       


    }
}