using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication6
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String mycon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Nitin\documents\visual studio 2010\Projects\WebApplication6\WebApplication6\App_Data\products.mdf;Integrated Security=True;User Instance=True";
            using (SqlConnection scon = new SqlConnection(mycon))
            {
                string key = Request.QueryString["key"];
                SqlCommand cmd = new SqlCommand("select * from mobiledb where prodname like '%" + key + "%' union select * from shoesdb where prodname like '%" + key + "%'", scon);
                scon.Open();
                DataList1.DataSource = cmd.ExecuteReader();
                DataList1.DataBind();
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("~/secure/Addtocart.aspx?id="+e.CommandArgument.ToString()+"&quantity="+dlist.SelectedItem.ToString());

        }

        }
}