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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
         protected void createuser_Click(object sender, EventArgs e)
        {

            String mycon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Nitin\documents\visual studio 2010\Projects\WebApplication6\WebApplication6\App_Data\products.mdf;Integrated Security=True;User Instance=True";
            using (SqlConnection scon = new SqlConnection(mycon))
            {
                SqlCommand cmd = new SqlCommand("Insert into  logindb values('" + UserName.Text + "','" + Password.Text + "','" + Email.Text + "','" + mobile.Text + "')", scon);
                scon.Open();
                int count = cmd.ExecuteNonQuery();
                         }
            Response.Redirect("Login.aspx");
    }
    }
}