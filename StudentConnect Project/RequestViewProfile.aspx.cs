using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace StudentConnect_Project
{
    public partial class WebForm9 : System.Web.UI.Page
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

        protected void Backbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Request.aspx");
        }

        protected void Connectbtn_Click(object sender, EventArgs e)
        {
            string StudentNumber = ((System.Web.UI.WebControls.Label)FormView1.FindControl("StudentNumberLabel")).Text;



            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into Connected(Sender,Recipient)values(@Sender,@Recipient)", con);

                cmd.Parameters.AddWithValue("@Recipient", (string)Session["studentnumber"] );
                cmd.Parameters.AddWithValue("@Sender", StudentNumber);

                cmd.ExecuteNonQuery();
                con.Close();
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd2 = new SqlCommand("DELETE FROM ConnectRequest WHERE Sender=@Sender and Recipient=@Recipient", con);

                cmd2.Parameters.AddWithValue("@Recipient", (string)Session["studentnumber"] );
                cmd2.Parameters.AddWithValue("@Sender", StudentNumber);

                cmd2.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Connection Made');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}