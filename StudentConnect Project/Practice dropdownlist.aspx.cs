using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentConnect_Project
{
    public partial class Practice_dropdownlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Populate the first dropdown list with initial options
                ddlFaculty.Items.Add(new ListItem("Faculty of Art, Design and Architecture", "ArtDesignArchitecture"));
                ddlFaculty.Items.Add(new ListItem("School of Business and Economics", "BusinessEconomics"));
                ddlFaculty.Items.Add(new ListItem("Faculty of Education", "Education"));
                ddlFaculty.Items.Add(new ListItem("Faculty of Engineering & Built Environment", "EngineeringBuiltEnvironment"));
                ddlFaculty.Items.Add(new ListItem("Faculty of Health Sciences", "HealthSciences"));
                ddlFaculty.Items.Add(new ListItem("Faculty of Humanities", "Humanities"));
                ddlFaculty.Items.Add(new ListItem("Faculty of Law", "Law"));
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


            }
            else if(ddlFaculty.SelectedValue == "Science")
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
            }
        }
    }
}