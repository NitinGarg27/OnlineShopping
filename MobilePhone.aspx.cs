using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class MobilePhone : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DropDownList dlist=(DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("~/secure/Addtocart.aspx?id="+e.CommandArgument.ToString()+"&quantity="+dlist.SelectedItem.ToString());

        }
    }
}