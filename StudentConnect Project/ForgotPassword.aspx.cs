using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;

namespace StudentConnect_Project
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

       

        protected void Resetpasswordbtn_Click(object sender, EventArgs e)
        {
            try
            {
                string salt = BCrypt.Net.BCrypt.GenerateSalt(12);
                string hashedPassword = BCrypt.Net.BCrypt.HashPassword(Passwordtxt1.Text.Trim(), salt);

                SqlConnection con = new SqlConnection(strcon);
                con.Open();

                // Check if the user exists first
                SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM Student WHERE StudentNumber = @StudentNumber", con);
                checkCmd.Parameters.AddWithValue("@StudentNumber", studentnumbertxt.Text.Trim());
                int userCount = (int)checkCmd.ExecuteScalar();

                if (userCount > 0)
                {
                    // Update the password
                    SqlCommand updateCmd = new SqlCommand("UPDATE Student SET Password = @Password WHERE StudentNumber = @StudentNumber", con);
                    updateCmd.Parameters.AddWithValue("@Password", hashedPassword);
                    updateCmd.Parameters.AddWithValue("@StudentNumber", studentnumbertxt.Text.Trim());
                    updateCmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Password has been changed');</script>");
                }
                else
                {
                    con.Close();
                    Response.Write("<script>alert('User not found');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }
    }
}