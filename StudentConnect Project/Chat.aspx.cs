using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentConnect_Project
{
    public partial class Chat : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                string query = string.Format("select Firstname,image,ConnectConfirmed_ID  from Student left join Connected on Student.StudentNumber=Connected.Sender or Student.StudentNumber=Connected.Recipient WHERE NOT StudentNumber='" + (string)Session["studentnumber"] + "' and Sender='" + (string)Session["studentnumber"] + "' or NOT StudentNumber='" + (string)Session["studentnumber"] + "' and Recipient='" + (string)Session["studentnumber"] + "'");
                string query2 = string.Format("select message,ConnectConfirmed_ID from messages left join Connected on messages.ConfirmedID=Connected.ConnectConfirmed_ID where Sender= '" + (string)Session["studentnumber"] + "' or Recipient= '" + (string)Session["studentnumber"] + "'");

                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(query, con);
                SqlCommand cmd2 = new SqlCommand(query2, con);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();               
                ChataRepeater.DataSource = reader;
                ChataRepeater.DataBind();
                
                con.Close();

                con.Open();
                SqlDataReader reader2 = cmd2.ExecuteReader();
                InboxRepeater.DataSource = reader2;
                InboxRepeater.DataBind();
            }
        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            //Button btn = (Button)sender;
            //RepeaterItem item = (RepeaterItem)btn.NamingContainer;


            //try
            //{
            //    SqlConnection con = new SqlConnection(strcon);
            //    if (con.State == ConnectionState.Closed)
            //    {
            //        con.Open();
            //    }
            //    SqlCommand cmd = new SqlCommand("insert into messages(ConfirmedID,Student,message)values(@ConfirmedID,@Student,@message)", con);
            //    cmd.Parameters.AddWithValue("@ConfirmedID", ((Label)item.FindControl("ConnectConfirmed_IDLabel")).Text);
            //    cmd.Parameters.AddWithValue("@Student", (string)Session["studentnumber"]);
            //    //cmd.Parameters.AddWithValue("@message", Textingtxt.Text.Trim());

            //    cmd.ExecuteNonQuery();
            //    con.Close();
            //    Response.Write("<script>alert('Message sent');</script>");
            //}
            //catch (Exception ex)
            //{
            //    Response.Write("<script>alert('" + ex.Message + "');</script>");
            //}
        }

        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {


            if (e.CommandName == "Insert")
            {
                TextBox messageTextBox = (TextBox)FormView1.FindControl("messageTextBox");
                Label ConfirmedIDLabel = (Label)FormView1.FindControl("ConfirmedIDLabel");

                // Get the values from the form controls
                string message = messageTextBox.Text;
                string ConfirmedID = ConfirmedIDLabel.Text;


                // Insert the data into the database
                SqlDataSource1.InsertParameters["message"].DefaultValue = message;
                SqlDataSource1.InsertParameters["ConfirmedID"].DefaultValue = ConfirmedID;
                SqlDataSource1.Insert();

                // Rebind the FormView to refresh the data
                FormView1.DataBind();
            }
        }


    }
}