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
    public partial class Message : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["studentnumber"] == null)
                {
                    // User is not logged in, redirect to the login page
                    Response.Redirect("Login.aspx"); // Replace "LoginPage.aspx" with the actual login page URL
                }
                string query = string.Format("select Firstname,image,ConnectConfirmed_ID,StudentNumber  from Student left join Connected on Student.StudentNumber=Connected.Sender or Student.StudentNumber=Connected.Recipient WHERE NOT StudentNumber='" + (string)Session["studentnumber"] + "' and Sender='" + (string)Session["studentnumber"] + "' or NOT StudentNumber='" + (string)Session["studentnumber"] + "' and Recipient='" + (string)Session["studentnumber"] + "'");
                string query2 = string.Format("select image,message from messages left join Student on messages.Student=Student.StudentNumber where ConfirmedID='" + (string)Session["MessageConfirmID"] + "' ORDER BY MessageCount ASC");
                


                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(query, con);
                SqlCommand cmd2 = new SqlCommand(query2, con);
                SqlCommand cmd3 = new SqlCommand(query, con);
                SqlCommand cmd4 = new SqlCommand(query2, con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                ChataRepeater.DataSource = reader;
                ChataRepeater.DataBind();

                con.Close();

                con.Open();
                SqlDataReader reader2 = cmd2.ExecuteReader();
                InboxRepeater.DataSource = reader2;
                InboxRepeater.DataBind();

                con.Close();

                con.Open();
                SqlDataReader reader3 = cmd3.ExecuteReader();
                ChataRepeater2.DataSource = reader3;
                ChataRepeater2.DataBind();

                con.Close();

                con.Open();
                SqlDataReader reader4 = cmd4.ExecuteReader();
                InboxRepeater2.DataSource = reader4;
                InboxRepeater2.DataBind();

                con.Close();


                string query3 = string.Format("select image from Student  left join messages on Student.StudentNumber=messages.Student where ConfirmedID='" + (string)Session["MessageConfirmID"] + "' and  NOT StudentNumber='" + (string)Session["studentnumber"] + "' ");
                string query4 = string.Format("select image,Firstname from Student  left join messages on Student.StudentNumber=messages.Student where ConfirmedID='" + (string)Session["MessageConfirmID"] + "' and  NOT StudentNumber='" + (string)Session["studentnumber"] + "' ");
                SqlConnection con2 = new SqlConnection(strcon);
                SqlCommand cmd5 = new SqlCommand(query3, con2);
                SqlCommand cmd6 = new SqlCommand(query4, con2);
                con2.Open();
                SqlDataReader reader5 = cmd5.ExecuteReader();
                FormView1.DataSource = reader5;
                FormView1.DataBind();
                con2.Close();

                con2.Open();
                SqlDataReader reader6 = cmd6.ExecuteReader();
                FormView2.DataSource = reader6;
                FormView2.DataBind();
                con2.Close();
            }

        }

        

        protected void SButton_Click(object sender, EventArgs e)
        {


            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into messages(ConfirmedID,Student,message)values(@ConfirmedID,@Student,@message)", con);
                cmd.Parameters.AddWithValue("@ConfirmedID", (string)Session["MessageConfirmID"]);
                cmd.Parameters.AddWithValue("@Student", (string)Session["studentnumber"]);
                cmd.Parameters.AddWithValue("@message", messageTextBox.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Message sent');</script>");
                Response.Redirect("Message.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;

            string MessageConfirmID = ((Label)item.FindControl("ConnectConfirmed_IDLabel")).Text;
            Session["MessageConfirmID"] = MessageConfirmID;
            Response.Redirect("Message.aspx");

        
           
                
           
        }

        

        protected void Image2_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;

            string MessageConfirmID = ((Label)item.FindControl("ConnectConfirmed_IDLabel")).Text;
            Session["MessageConfirmID"] = MessageConfirmID;
            Response.Redirect("Message.aspx");
        }

        protected void SButton2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into messages(ConfirmedID,Student,message)values(@ConfirmedID,@Student,@message)", con);
                cmd.Parameters.AddWithValue("@ConfirmedID", (string)Session["MessageConfirmID"]);
                cmd.Parameters.AddWithValue("@Student", (string)Session["studentnumber"]);
                cmd.Parameters.AddWithValue("@message", messageTextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Message sent');</script>");
                Response.Redirect("Message.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}