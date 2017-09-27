using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace Assignment2
{
    public partial class FormLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["connection1"].ToString());
            cn.Open();
            String query_email_count = "select count(*) from user where UserEmail = '" + txtEmail.Text + "'and UserPassword = '" + txtPassword.Text + "' ";

            MySqlCommand cmd_query_email_count = new MySqlCommand(query_email_count, cn);
            String output_query_email_count = cmd_query_email_count.ExecuteScalar().ToString();

          
            

            if (output_query_email_count == "1")
            {
                string email = txtEmail.Text.ToString();
                Session["user"] = email;
                if (txtEmail.Text == "admin@ecu.com")
                {
                    Response.Redirect("~/ManageUnits.aspx");
                }
                else
                {
                    Response.Redirect("~/ManageResults.aspx");
                }
                
            }
            else
            {
                Response.Write("Coudnt Log in");
            }
        }
    }
}