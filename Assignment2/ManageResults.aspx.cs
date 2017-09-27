using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment2
{
    public partial class Manager : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                string email = Session["user"].ToString();
                if (email != "manager@ecu.com")
                {
                    Response.Redirect("~/FormLogin.aspx");
                }
            }
            else
            {
                Response.Redirect("~/FormLogin.aspx");
            }
            Session.Remove("user");
        }
    }
}