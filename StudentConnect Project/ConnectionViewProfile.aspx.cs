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
    public partial class WebForm15 : System.Web.UI.Page
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
                string query = string.Format("select StudentNumber,Firstname,Surname,Hometown,UniversityName,QualificationName,image,Description from Student Where StudentNumber ='" + (string)Session["profilestudentnumber"] + "'");

                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                FormView1.DataSource = reader;
                FormView1.DataBind();
                con.Close();



            }
            string query2 = string.Format("select StudentNumber,image from Student Where StudentNumber ='" + (string)Session["profilestudentnumber"] + "'");

            SqlConnection con2 = new SqlConnection(strcon);
            SqlCommand cmd2 = new SqlCommand(query2, con2);

            con2.Open();
            SqlDataReader reader2 = cmd2.ExecuteReader();

            FormView2.DataSource = reader2;
            FormView2.DataBind();
            con2.Close();
        }

        protected void Disconnectbtn_Click(object sender, EventArgs e)
        {
            string studentNumber = ((System.Web.UI.WebControls.Label)FormView1.FindControl("StudentNumberLabel")).Text;

            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();

                    SqlCommand deleteRequestCmd = new SqlCommand("DELETE FROM Connected WHERE (Sender=@Sender AND Recipient=@Recipient) OR (Sender=@Recipient AND Recipient=@Sender)", con);
                    deleteRequestCmd.Parameters.AddWithValue("@Recipient", (string)Session["studentnumber"]);
                    deleteRequestCmd.Parameters.AddWithValue("@Sender", studentNumber);
                    deleteRequestCmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Successfully Disconnected');</script>");
                    Response.Redirect("Connection.aspx");

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }
    }
}