using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace StudentConnect_Project
{
    public partial class Signup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {

                Response.Write("<script>alert('Student Already Exist with this Student Number, try other Student Number');</script>");
            }
            else
            {
                signUpNewMember();
                Response.Redirect("Login.aspx");
            }
        }

        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Student WHERE StudentNumber='" + studentnumbertxt.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void signUpNewMember()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                string filepath = "~/ProfileImage/boity.jpg";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("ProfileImage/" + filename));
                filepath = "~/ProfileImage/" + filename;


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Student(StudentNumber,Firstname,Surname,Gender,Hometown,Password,image) values(@StudentNumber,@Firstname,@Surname,@Gender,@Hometown,@Password,@image)", con);
                cmd.Parameters.AddWithValue("@StudentNumber", studentnumbertxt.Text.Trim());
                cmd.Parameters.AddWithValue("@Firstname", Firstnametxt.Text.Trim());
                cmd.Parameters.AddWithValue("@Surname", Surnametxt.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", GenderList.Text.Trim());
                cmd.Parameters.AddWithValue("@Hometown", HometownList.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Password", Passwordtxt.Text.Trim());
                cmd.Parameters.AddWithValue("@image", filepath);

                SqlCommand cmd2 = new SqlCommand("INSERT INTO University(UniversityName) values(@UniversityName)", con);
                cmd2.Parameters.AddWithValue("UniversityName", UniversityList.Text.Trim());

                SqlCommand cmd3 = new SqlCommand("INSERT INTO Accommodation(AccommodationName) values(@AccommodationName)", con);
                cmd3.Parameters.AddWithValue("@AccommodationName", AccommodationNametxt.Text.Trim());


                cmd.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                cmd3.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //protected void signupbtn_Click(object sender, EventArgs e)
        //{
        //    if (checkMemberExists())
        //    {
        //        Response.Write("<script>alert('Book Already Exists, try some other Book ID');</script>");
        //    }
        //    else
        //    {
        //        signUpNewMember();
        //        Response.Redirect("Login.aspx");
        //    }
        //}
    }
}