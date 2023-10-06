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
    public partial class WebForm12 : System.Web.UI.Page
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
                string query = string.Format("select BursaryName,BursaryImage,Qualifications ,Description ,StudyYear ,Documents ,OpeningDate ,ClosingDate, Link from Bursary where BursaryName='"+(string)Session["Bursary"] +"'");

                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                FormView1.DataSource = reader;
                FormView1.DataBind();
                con.Close();



            }
        }

        protected void Backbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bursary.aspx");
        }
    }
}