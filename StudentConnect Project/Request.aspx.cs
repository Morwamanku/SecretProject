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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            if (!IsPostBack)
            {
                string query = string.Format("select StudentNumber,Firstname,Surname,QualificationName,image from Student left join ConnectRequest on Student.StudentNumber=ConnectRequest.Sender where ConnectRequest.Recipient = '" + (string)Session["studentnumber"] + "'");

                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                RequestRepeater.DataSource = reader;
                RequestRepeater.DataBind();
                con.Close();
            }
        }

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;

            string ProfileStudentNumber = ((Label)item.FindControl("StudentNumberLabel")).Text;
            Session["profilestudentnumber"] = ProfileStudentNumber;
            Response.Redirect("RequestViewProfile.aspx");
        }
    }
}