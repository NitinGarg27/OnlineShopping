﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MobilePhone.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
           
            Response.Redirect("shoes.aspx");
        }
    }
}