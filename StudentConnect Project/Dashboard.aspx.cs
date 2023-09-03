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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                string query = string.Format("select StudentNumber,Firstname,Surname,QualificationName,image from Student WHERE NOT StudentNumber='" + (string)Session["studentnumber"] + "' order by NEWID()");

                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                DashboardRepeater.DataSource = reader;
                DashboardRepeater.DataBind();
                con.Close();
            }
        }

        protected void DashboardRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;

            string ProfileStudentNumber = ((Label)item.FindControl("StudentNumberLabel")).Text;
            Session["profilestudentnumber"] = ProfileStudentNumber;
            Response.Redirect("ViewProfile.aspx");
        }

        

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Accommodationbtn_Click(object sender, EventArgs e)
        {
            string query = string.Format("select * from Student where AccommodationID='" + AccommodationIDList.Text + "'");

            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DashboardRepeater.DataSource = reader;
            DashboardRepeater.DataBind();
            con.Close();
        }

        protected void Coursebtn_Click(object sender, EventArgs e)
        {

        }

        protected void University_Click(object sender, EventArgs e)
        {
            string query = string.Format("select * from Student where UniversityName='"+ UniversityNameList.Text +"'");

            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DashboardRepeater.DataSource = reader;
            DashboardRepeater.DataBind();
            con.Close();
        }

       

        protected void Hometown_Click(object sender, EventArgs e)
        {
            string query = string.Format("select * from Student where Hometown='" + HometownList.Text + "'");

            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DashboardRepeater.DataSource = reader;
            DashboardRepeater.DataBind();
            con.Close();
        }

        protected void Default_Click(object sender, EventArgs e)
        {
            string query = string.Format("select StudentNumber,Firstname,Surname,QualificationName,image from Student WHERE NOT StudentNumber='" + (string)Session["studentnumber"] + "'");

            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DashboardRepeater.DataSource = reader;
            DashboardRepeater.DataBind();
            con.Close();
        }
    }
}