using System;
using System.Collections.Generic;
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
            if (!IsPostBack)
            {
                string query = string.Format("select Student.StudentNumber,Student.Firstname,Student.Surname,Student.image from Student left join ConnectRequests on Student.StudentNumber = ConnectRequests.StudentNumber where ConnectRequests.ConnectedStudentNumber = '" + (string)Session["studentnumber"] + "'");

                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                ConnectionRepeater.DataSource = reader;
                ConnectionRepeater.DataBind();
                con.Close();
            }
        }
    }
}