using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentConnect_Project
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                string query = string.Format("select StudentNumber,Firstname,Surname,Hometown,UniversityName,QualificationName,image from Student Where StudentNumber ='" + (string)Session["profilestudentnumber"] + "'");

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

        protected void Connectbtn_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;



            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO ConnectRequests(StudentNumber,RecipientID) values(@StudentNumber,@RecipientID) INSERT INTO Recipient SELECT StudentNumber FROM Student WHERE StudentNumber=@RecipientID", con);
                cmd.Parameters.AddWithValue("@RecipientID", ((Label)item.FindControl("StudentNumberLabel")).Text);
                cmd.Parameters.AddWithValue("@StudentNumber", (string)Session["studentnumber"]);

                //SqlCommand cmd2 = new SqlCommand("INSERT INTO ConnectedStudent SELECT StudentNumber,Firstname,Surname,Gender,Hometown,Password,image,UniversityID,QualificationID,AccommodationName FROM Student WHERE StudentNumber=@ConnectedStudentNumber", con);
                //cmd2.Parameters.AddWithValue("@ConnectedStudentNumber", ((Label)item.FindControl("StudentNumberLabel")).Text);

                //cmd2.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Request Made');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}