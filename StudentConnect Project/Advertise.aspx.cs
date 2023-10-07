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
            if (Session["studentnumber"] == null)
            {
                // User is not logged in, redirect to the login page
                Response.Redirect("Login.aspx"); // Replace "LoginPage.aspx" with the actual login page URL
            }
        }

        protected void Submitbtn_Click(object sender, EventArgs e)
        {
            try
            {
                string uploadFolder = Server.MapPath("~/ProductImage/");
                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string filePath = Path.Combine(uploadFolder, fileName);

                // Check if the file has a valid extension (e.g., restrict to images only)
                string fileExtension = Path.GetExtension(fileName).ToLower();
                string[] allowedExtensions = { ".jpg", ".jpeg", ".png", ".gif" }; // Add more if needed
                if (!allowedExtensions.Contains(fileExtension))
                {
                    Response.Write("<script>alert('Invalid file format');</script>");
                    return;
                }

                FileUpload1.SaveAs(filePath);

                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO Product (Student, CategoryName, Product, Productimage, Price, ProductDescription) VALUES (@Student, @CategoryName, @Product, @Productimage, @Price, @ProductDescription)", con))
                    {
                        cmd.Parameters.AddWithValue("@Student", Session["studentnumber"]);
                        cmd.Parameters.AddWithValue("@CategoryName", CategoryList.Text.Trim());
                        cmd.Parameters.AddWithValue("@Product", ProductName.Text.Trim());
                        cmd.Parameters.AddWithValue("@Productimage", "~/ProductImage/" + fileName);
                        cmd.Parameters.AddWithValue("@Price", Pricetxt.Text.Trim());
                        cmd.Parameters.AddWithValue("@ProductDescription", ProductDescription.Text.Trim());

                        cmd.ExecuteNonQuery();
                    }
                }

                Response.Write("<script>alert('Item successfully added');</script>");
                Response.Redirect("Dashboard.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}