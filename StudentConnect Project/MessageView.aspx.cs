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
    public partial class MessageView : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                string query2 = string.Format("select image,message from messages left join Student on messages.Student=Student.StudentNumber where ConfirmedID='" + (string)Session["MessageConfirmID"] + "'");
                


                SqlConnection con = new SqlConnection(strcon);
              
                SqlCommand cmd2 = new SqlCommand(query2, con);
               
                

                con.Open();
                SqlDataReader reader2 = cmd2.ExecuteReader();
                InboxRepeater.DataSource = reader2;
                InboxRepeater.DataBind();

                con.Close();

                
            }
        }
    }
}