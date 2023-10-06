using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentConnect_Project
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["studentnumber"] == null)
                {
                    // User is not logged in, redirect to the login page
                    Response.Redirect("Login.aspx"); // Replace "LoginPage.aspx" with the actual login page URL
                }

                string query = string.Format("Select BursaryName,BursaryImage from Bursary");

                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                BursaryRepeater.DataSource = reader;
                BursaryRepeater.DataBind();
                con.Close();
            }
        }

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;

            string Bursaryname = ((Label)item.FindControl("BursaryNameLabel")).Text;
            Session["Bursary"] = Bursaryname;
            Response.Redirect("ViewBursary.aspx");
        }
    }
}