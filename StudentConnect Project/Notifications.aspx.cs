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
    public partial class WebForm2 : System.Web.UI.Page
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
                string query = string.Format("select Connected.ConnectConfirmed_ID,message,messages.Student,image,Student.Firstname from Connected left join messages on Connected.ConnectConfirmed_ID=messages.ConfirmedID left join Student on messages.Student=Student.StudentNumber where Recipient='" + (string)Session["studentnumber"] + "' and messages.Student!='" + (string)Session["studentnumber"] + "' or Sender='" + (string)Session["studentnumber"] + "' and messages.Student!='" + (string)Session["studentnumber"] + "' group by Connected.ConnectConfirmed_ID,message,messages.Student,image,Student.Firstname");

                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                NotifactionRepeater.DataSource = reader;
                NotifactionRepeater.DataBind();
                con.Close();
            }
        }
    }
}