using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentConnect_Project
{
    public partial class Login : System.Web.UI.Page
    {
       

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogIn_Click(object sender, EventArgs e)
        {
            string StudentNumber = studentnumbertxt.Text;
            Session["studentnumber"] = StudentNumber;

            // user login
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT Password, image, Firstname FROM Student WHERE StudentNumber=@StudentNumber", con);
                cmd.Parameters.AddWithValue("@StudentNumber", StudentNumber);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    string hashedPasswordFromDatabase = dr["Password"].ToString();
                    string userEnteredPassword = Passwordtxt.Text.Trim();

                    if (BCrypt.Net.BCrypt.Verify(userEnteredPassword, hashedPasswordFromDatabase))
                    {
                        // Passwords match - login successful
                        Session["image"] = dr["image"].ToString();
                        Session["Firstname"] = dr["Firstname"].ToString();
                        Response.Redirect("Dashboard.aspx");
                    }
                    else
                    {
                        // Passwords do not match
                        Response.Write("<script>alert('Invalid credentials');</script>");
                    }
                }
                else
                {
                    // No user with the provided StudentNumber found
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

                dr.Close();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}