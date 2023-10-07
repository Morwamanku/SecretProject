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
    public partial class WebForm6 : System.Web.UI.Page
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
                string query = string.Format("select StudentNumber,Firstname,Surname,QualificationName,image from Student left join Blocked on Student.StudentNumber=Blocked.Sender or Student.StudentNumber=Blocked.Recipient WHERE NOT StudentNumber='" + (string)Session["studentnumber"] + "' and Sender='" + (string)Session["studentnumber"] + "' or NOT StudentNumber='" + (string)Session["studentnumber"] + "' and Recipient='" + (string)Session["studentnumber"] + "'");

                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                BlockedRepeater.DataSource = reader;
                BlockedRepeater.DataBind();
                con.Close();
            }
        }

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;

            string ProfileStudentNumber = ((Label)item.FindControl("StudentNumberLabel")).Text;
            Session["profilestudentnumber"] = ProfileStudentNumber;
            Response.Redirect("BlockedViewProfile.aspx");
        }
    }
}