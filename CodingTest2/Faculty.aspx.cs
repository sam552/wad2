using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodingTest2
{
    public partial class Faculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            StudentDBLogic stuDBLogic = new StudentDBLogic();
            int coursesList = stuDBLogic.getFaccount(TextBox1.Text);
            if (coursesList != 0)
            {
                Label3.Text = coursesList.ToString();
            }
            else
                Label3.Text = "Sorry!!. No Faculty ID";
        }
    }
}