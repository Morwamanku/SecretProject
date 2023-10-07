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
            string query2 = string.Format("select StudentNumber,image from Student Where StudentNumber ='" + (string)Session["profilestudentnumber"] + "'");

            SqlConnection con2 = new SqlConnection(strcon);
            SqlCommand cmd2 = new SqlCommand(query2, con2);

            con2.Open();
            SqlDataReader reader2 = cmd2.ExecuteReader();

            FormView2.DataSource = reader2;
            FormView2.DataBind();
            con2.Close();

          
        }

        protected void Backbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Request.aspx");
        }

        protected void Connectbtn_Click(object sender, EventArgs e)
        {
            if (checkConnectionExists())
            {
                Response.Write("<script>alert('Connection is already made');</script>");
            }
            else
            {
                if (ConnectionMade())
                {
                    Response.Redirect("Request.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Failed to create the connection.');</script>");
                }
            }
        }

        protected void Declinebtn_Click(object sender, EventArgs e)
        {
            string studentNumber = ((System.Web.UI.WebControls.Label)FormView1.FindControl("StudentNumberLabel")).Text;

            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();

                    SqlCommand deleteRequestCmd = new SqlCommand("DELETE FROM ConnectRequest WHERE Sender=@Sender AND Recipient=@Recipient", con);
                    deleteRequestCmd.Parameters.AddWithValue("@Recipient", (string)Session["studentnumber"]);
                    deleteRequestCmd.Parameters.AddWithValue("@Sender", studentNumber);
                    deleteRequestCmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Connection Request Declined');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool checkConnectionExists()
        {
            string studentNumber = ((System.Web.UI.WebControls.Label)FormView1.FindControl("StudentNumberLabel")).Text;

            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Connected WHERE Recipient=@Recipient AND Sender=@Sender;", con);
                    cmd.Parameters.AddWithValue("@Recipient", (string)Session["studentnumber"]);
                    cmd.Parameters.AddWithValue("@Sender", studentNumber);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        return reader.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        bool ConnectionMade()
        {
            string studentNumber = ((System.Web.UI.WebControls.Label)FormView1.FindControl("StudentNumberLabel")).Text;

            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();

                    // Insert the connection into the "Connected" table
                    SqlCommand insertConnectionCmd = new SqlCommand("INSERT INTO Connected (Sender, Recipient) VALUES (@Sender, @Recipient);", con);
                    insertConnectionCmd.Parameters.AddWithValue("@Recipient", (string)Session["studentnumber"]);
                    insertConnectionCmd.Parameters.AddWithValue("@Sender", studentNumber);
                    insertConnectionCmd.ExecuteNonQuery();

                    // Delete the connection request
                    SqlCommand deleteRequestCmd = new SqlCommand("DELETE FROM ConnectRequest WHERE Sender=@Sender AND Recipient=@Recipient;", con);
                    deleteRequestCmd.Parameters.AddWithValue("@Recipient", (string)Session["studentnumber"]);
                    deleteRequestCmd.Parameters.AddWithValue("@Sender", studentNumber);
                    deleteRequestCmd.ExecuteNonQuery();

                    return true;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        protected void Blockedbtn_Click(object sender, EventArgs e)
        {
            if (checkBlockedExists())
            {
                Response.Write("<script>alert('Already Blocked');</script>");
            }
            else
            {
                if (BlockedMade())
                {
                    Response.Redirect("Request.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Failed to Block');</script>");
                }
            }
        }

        bool checkBlockedExists()
        {
            string studentNumber = ((System.Web.UI.WebControls.Label)FormView1.FindControl("StudentNumberLabel")).Text;

            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Blocked WHERE Recipient=@Recipient AND Sender=@Sender;", con);
                    cmd.Parameters.AddWithValue("@Recipient", (string)Session["studentnumber"]);
                    cmd.Parameters.AddWithValue("@Sender", studentNumber);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        return reader.HasRows;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        bool BlockedMade()
        {
            string studentNumber = ((System.Web.UI.WebControls.Label)FormView1.FindControl("StudentNumberLabel")).Text;

            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();

                    // Insert the connection into the "Blocked" table
                    SqlCommand insertConnectionCmd = new SqlCommand("INSERT INTO Blocked (Sender, Recipient) VALUES (@Sender, @Recipient);", con);
                    insertConnectionCmd.Parameters.AddWithValue("@Recipient", (string)Session["studentnumber"]);
                    insertConnectionCmd.Parameters.AddWithValue("@Sender", studentNumber);
                    insertConnectionCmd.ExecuteNonQuery();

                    // Delete the connection request
                    SqlCommand deleteRequestCmd = new SqlCommand("DELETE FROM ConnectRequest WHERE Sender=@Sender AND Recipient=@Recipient;", con);
                    deleteRequestCmd.Parameters.AddWithValue("@Recipient", (string)Session["studentnumber"]);
                    deleteRequestCmd.Parameters.AddWithValue("@Sender", studentNumber);
                    deleteRequestCmd.ExecuteNonQuery();

                    return true;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
    }
}