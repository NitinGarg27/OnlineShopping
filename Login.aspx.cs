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
    public partial class login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              
            }

        }

        protected void login_Authenticate(object sender, AuthenticateEventArgs e)
        {

            String mycon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Nitin\documents\visual studio 2010\Projects\WebApplication6\WebApplication6\App_Data\products.mdf;Integrated Security=True;User Instance=True";
            using(SqlConnection scon = new SqlConnection(mycon))
            {
               SqlCommand cmd = new SqlCommand("select count(username) from logindb where username='"+LoginPage.UserName+"' and password='"+LoginPage.Password+"'",scon);
                scon.Open();
               
                if ((int)(cmd.ExecuteScalar()) == 1)
                {
                    e.Authenticated = true;
                    Response.Write("Welcome");

                }
                else
                    LoginPage.FailureText = "Incorrect Information";
            }}
    }
}