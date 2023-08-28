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
    public partial class WebForm8 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = string.Format("select image from Student WHERE StudentNumber ='" + (string)Session["studentnumber"] + "'");

                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                FormView1.DataSource = reader;
                FormView1.DataBind();
                con.Close();
            }
            string University = UniversityIDList.Text;
            Session["university"] = University;

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from Student WHERE StudentNumber ='" + (string)Session["studentnumber"] + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        StudentNumbertxt.Text = dr.GetValue(0).ToString();
                        FirstNametxt.Text = dr.GetValue(1).ToString();
                        Lastnametxt.Text = dr.GetValue(2).ToString();
                        HometownList.Text = dr.GetValue(4).ToString();
                        UniversityIDList.Text = dr.GetValue(7).ToString();
                        ddlDegree.Text = dr.GetValue(8).ToString();
                        YearofstudyList.Text = dr.GetValue(9).ToString();
                        AccommodationIDList.Text = dr.GetValue(10).ToString();


                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



        // user defined function
        void getAuthorByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from Student WHERE StudentNumber ='" + (string)Session["studentnumber"] + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

               
                    Response.Write("<script>alert('Student numberID');</script>");



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void deleteAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from Student WHERE StudentNumber ='" + (string)Session["studentnumber"] + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Account Deleted Successfully');</script>");
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void ddlFaculty_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Clear previous options in the second dropdown list
            ddlDegree.Items.Clear();

            // Add new options based on the selected faculty
            if (ddlFaculty.SelectedValue == "ArtDesignArchitecture")
            {
                // List A options for Faculty of Art, Design and Architecture
                ddlDegree.Items.Add(new ListItem("Bachelor in Architecture"));
                ddlDegree.Items.Add(new ListItem("BA Design (Communication Design)"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Arts (Digital Media Design)"));
                ddlDegree.Items.Add(new ListItem("BA Design (Industrial Design)"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Arts (Interior Design)"));
                ddlDegree.Items.Add(new ListItem("BA Design (Fashion Design)"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Arts (Visual Art)"));
                ddlDegree.Items.Add(new ListItem("Diploma in Architecture"));
                ddlDegree.Items.Add(new ListItem("Diploma in Fashion Production"));
                ddlDegree.Items.Add(new ListItem("Diploma in Jewellery Design and Manufacture"));
                ddlDegree.Items.Add(new ListItem("Other"));

            }
            else if (ddlFaculty.SelectedValue == "BusinessEconomics")
            {
                // List B options for School of Business and Economics
                ddlDegree.Items.Add(new ListItem("Bachelor’s degree in Accounting CA"));
                ddlDegree.Items.Add(new ListItem("Bachelor’s degree in Hospitality management"));
                ddlDegree.Items.Add(new ListItem("Bachelor’s degree in Human Resource Management"));
                ddlDegree.Items.Add(new ListItem("Bachelor’s degree in Tourism Development and Management"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Arts in Public Management and Governance"));
                ddlDegree.Items.Add(new ListItem("BCom Accounting"));
                ddlDegree.Items.Add(new ListItem("BCom Business Management"));
                ddlDegree.Items.Add(new ListItem("BCom Economics and Econometrics"));
                ddlDegree.Items.Add(new ListItem("BCom Entrepreneurial Management"));
                ddlDegree.Items.Add(new ListItem("BCom Finance"));
                ddlDegree.Items.Add(new ListItem("BCom Industrial Psychology"));
                ddlDegree.Items.Add(new ListItem("BCom Information Management"));
                ddlDegree.Items.Add(new ListItem("BCom Logistics Management"));
                ddlDegree.Items.Add(new ListItem("BCom Marketing Management"));
                ddlDegree.Items.Add(new ListItem("BCom Accounting"));
                ddlDegree.Items.Add(new ListItem("BCom Business Management"));
                ddlDegree.Items.Add(new ListItem("BCom Economics and Econometrics"));
                ddlDegree.Items.Add(new ListItem("BCom Entrepreneurial Management"));
                ddlDegree.Items.Add(new ListItem("BCom Finance"));
                ddlDegree.Items.Add(new ListItem("Diploma in Accounting"));
                ddlDegree.Items.Add(new ListItem("Diploma in Business Information Technology"));
                ddlDegree.Items.Add(new ListItem("Diploma in Financial Services Operation"));
                ddlDegree.Items.Add(new ListItem("Diploma in Food and Beverage Operations"));
                ddlDegree.Items.Add(new ListItem("Diploma in Human Resource Management"));
                ddlDegree.Items.Add(new ListItem("Diploma in Logistics"));
                ddlDegree.Items.Add(new ListItem("Diploma in Marketing"));
                ddlDegree.Items.Add(new ListItem("Diploma in Retail Business Management"));
                ddlDegree.Items.Add(new ListItem("Diploma in Small Business Management"));
                ddlDegree.Items.Add(new ListItem("Diploma in Tourism Management"));
                ddlDegree.Items.Add(new ListItem("Diploma in Transportation Management"));
                ddlDegree.Items.Add(new ListItem("International Accounting"));
                ddlDegree.Items.Add(new ListItem("Human Resource Management"));
                ddlDegree.Items.Add(new ListItem("Other"));

            }
            else if (ddlFaculty.SelectedValue == "Education")
            {
                // List C options for Faculty of Education
                ddlDegree.Items.Add(new ListItem("Bachelor of Education in Foundation Phase Teaching Grade R-3"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Education in Intermediate Phase Teaching Grade 4-7"));
                ddlDegree.Items.Add(new ListItem("BEd in English"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Education in isiZulu"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Education in Sepedi"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Education in Psychology"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Education in Accounting"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Education in Business Management"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Education in Economics"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Education in Geography"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Education in Mathematics"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Education in Life Sciences"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Education in Physical Sciences"));
                ddlDegree.Items.Add(new ListItem("Other"));
            }
            else if (ddlFaculty.SelectedValue == "EngineeringBuiltEnvironment")
            {
                // List D options for Faculty of Engineering & Built Environment
                ddlDegree.Items.Add(new ListItem("Bachelor of Engineering in Civil Engineering"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Engineering in Mechanical Engineering"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Engineering in Electrical Engineering"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Construction in Construction"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Mine Surveying"));
                ddlDegree.Items.Add(new ListItem("Bachelor of in Urban and Regional Planning"));
                ddlDegree.Items.Add(new ListItem("Diploma of Management services"));
                ddlDegree.Items.Add(new ListItem("Diploma of Operations management"));
                ddlDegree.Items.Add(new ListItem("Other"));
            }
            else if (ddlFaculty.SelectedValue == "HealthSciences")
            {
                // List E options for Faculty of Health Sciences
                ddlDegree.Items.Add(new ListItem("Bachelor of Nursing"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Biokinetics"));
                ddlDegree.Items.Add(new ListItem("Diagnostic Radiography"));
                ddlDegree.Items.Add(new ListItem("Radiation Therapy"));
                ddlDegree.Items.Add(new ListItem("Nuclear Medicine"));
                ddlDegree.Items.Add(new ListItem("Chiropractic"));
                ddlDegree.Items.Add(new ListItem("Complementary Medicine"));
                ddlDegree.Items.Add(new ListItem("Emergency Medical Care"));
                ddlDegree.Items.Add(new ListItem("Medical Laboratory Science"));
                ddlDegree.Items.Add(new ListItem("Podiatry"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Environmental Health"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Optometry"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Arts Sport Psychology"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Arts Sport Development"));
                ddlDegree.Items.Add(new ListItem("Other"));


            }
            else if (ddlFaculty.SelectedValue == "Humanities")
            {
                // List F options for Faculty of Humanities
                ddlDegree.Items.Add(new ListItem("Bachelor of Social Work"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Arts"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Art with specialization in Politics, Economics and Technology"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Art in Community Development and Leadership"));
                ddlDegree.Items.Add(new ListItem("Diploma in Public Relations and Communication"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Arts in any two of these options: Anthropology, Development Studies"));
                ddlDegree.Items.Add(new ListItem("Bachelor of English"));
                ddlDegree.Items.Add(new ListItem("Bachelor of History"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Philosophy"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Politics"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Psychology "));
                ddlDegree.Items.Add(new ListItem("Bachelor of Religion Studies"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Social Work"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Sociology"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Communication Studies"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Journalism"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Film & Television"));
                ddlDegree.Items.Add(new ListItem("Bachelor of African Languages"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Strategic Communication"));
                ddlDegree.Items.Add(new ListItem("Bachelor of  Cultural Studies"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Applied Linguistics"));
                // Add other options
                // ...
            }
            else if (ddlFaculty.SelectedValue == "Law")
            {
                // List G options for Faculty of Law
                ddlDegree.Items.Add(new ListItem("Bachelor of Art in Law"));
                ddlDegree.Items.Add(new ListItem("Bachelor of Commerce in Law"));
                ddlDegree.Items.Add(new ListItem("LLB"));
            }
            else if (ddlFaculty.SelectedValue == "Science")
            {
                ddlDegree.Items.Add(new ListItem("BSc Biochemistry and Botany"));
                ddlDegree.Items.Add(new ListItem("BSc Botany and Chemistry"));
                ddlDegree.Items.Add(new ListItem("BSc Zoology and Biochemistry"));
                ddlDegree.Items.Add(new ListItem("BSc Zoology and Environmental management"));
                ddlDegree.Items.Add(new ListItem("BSc Zoology Geography"));
                ddlDegree.Items.Add(new ListItem("BSc Zoology and Physiology"));
                ddlDegree.Items.Add(new ListItem("BSc Physiology and Biochemistry"));
                ddlDegree.Items.Add(new ListItem("BSc Applied Physics"));
                ddlDegree.Items.Add(new ListItem("BSc Information Technology"));
                ddlDegree.Items.Add(new ListItem("BSc Computer Science and Informatics"));
                ddlDegree.Items.Add(new ListItem("BSc Applied Mathematics and Computer Science"));
                ddlDegree.Items.Add(new ListItem("BSc Applied Mathematics and Mathematical Statics"));
                ddlDegree.Items.Add(new ListItem("BSc Computational Science"));
                ddlDegree.Items.Add(new ListItem("BSc Mathematical Statistics and Computer Science"));
                ddlDegree.Items.Add(new ListItem("BSc Mathematics and Computer Science"));
                ddlDegree.Items.Add(new ListItem("BSc Mathematics and Informatics"));
                ddlDegree.Items.Add(new ListItem("BSc Mathematics and Mathematical Statics"));
                ddlDegree.Items.Add(new ListItem("BSc Mathematics and Psychology"));
                ddlDegree.Items.Add(new ListItem("BSc Mathematics and Mathematical Statics (with financial orientation)"));
                ddlDegree.Items.Add(new ListItem("BSc Mathematics and Economics (with financial orientation)"));
                ddlDegree.Items.Add(new ListItem("BSc Actuarial Science"));
                ddlDegree.Items.Add(new ListItem("BSc Physiology and Psychology"));
                ddlDegree.Items.Add(new ListItem("BSc Geography and Environmental Management"));
                ddlDegree.Items.Add(new ListItem("BSc Geology and Geography"));
                ddlDegree.Items.Add(new ListItem("BSc Geology and Mathematics"));
                ddlDegree.Items.Add(new ListItem("BSc Geology and Physics"));
                ddlDegree.Items.Add(new ListItem("BSc Physics and Applied Mathematics"));
                ddlDegree.Items.Add(new ListItem("BSc and Physics Mathematics"));
                ddlDegree.Items.Add(new ListItem("BSc Biochemistry and Chemistry"));
                ddlDegree.Items.Add(new ListItem("BSc Chemistry and Mathematics"));
                ddlDegree.Items.Add(new ListItem("BSc Chemistry and Physics"));
                ddlDegree.Items.Add(new ListItem("BSc Geology and Chemistry"));
                ddlDegree.Items.Add(new ListItem("Other"));
            }
        }


        void getMemberByID()
        {
           
        }



        void clearForm()
        {
            StudentNumbertxt.Text = "";
            
        }

        protected void Updatebtn_Click(object sender, EventArgs e)
        {

        }

        void updateMemberStatusByID(string status)
        {
            

        }
    }
}