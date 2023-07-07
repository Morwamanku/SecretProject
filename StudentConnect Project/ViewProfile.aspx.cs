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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            if (!IsPostBack)
            {
                string query = string.Format("select StudentNumber,Firstname,Surname,Hometown,UniversityName,QualificationName,image from Student left join Qualification on  Student.QualificationID= Qualification.QualificationID left join University on  Student.UniversityID= University.UniversityID Where StudentNumber ='" + (string)Session["profilestudentnumber"] + "'");

                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                FormView1.DataSource = reader;
                FormView1.DataBind();
                con.Close();
            }
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void Backbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }
    }
}