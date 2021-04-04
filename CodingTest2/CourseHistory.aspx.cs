using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodingTest2
{
    public partial class CourseHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownStuID_SelectedIndexChanged(object sender, EventArgs e)
        {
            StudentDBLogic stuDBLogic = new StudentDBLogic();
            ArrayList coursesList = stuDBLogic.getCoursesList(DropDownStuID.SelectedValue);
            ListBoxCourses.Items.Clear();
            foreach (string courseNumber in coursesList)
            {
                ListBoxCourses.Items.Add(courseNumber);
            }
        }
    }
}