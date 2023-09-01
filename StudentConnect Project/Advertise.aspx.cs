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
    public partial class Advertise : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submitbtn_Click(object sender, EventArgs e)
        {
            try
            {
                string filepath = "~/ProductImage/boity.jpg";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("ProductImage/" + filename));
                filepath = "~/ProfileImage/" + filename;


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Student(StudentNumber,CategoryName,Product,Productimage,Price,ProductDescription) values(@StudentNumber,@CategoryName,@Product,@Productimage,@Price,@ProductDescription)", con);
                cmd.Parameters.AddWithValue("@StudentNumber", (string)Session["studentnumber"]);
                cmd.Parameters.AddWithValue("@CategoryName", CategoryList.Text.Trim());
                cmd.Parameters.AddWithValue("@Product", ProductName.Text.Trim());
                cmd.Parameters.AddWithValue("@Productimage", filepath);
                cmd.Parameters.AddWithValue("@Price", Pricetxt.Text.Trim());
                cmd.Parameters.AddWithValue("@ProductDescription", ProductDescription.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}