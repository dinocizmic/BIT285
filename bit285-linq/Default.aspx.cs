using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataStudentsDataContext studentdb = new DataStudentsDataContext();
        var allstudents = from student in studentdb.DataStudents
                          where NewStudents.StudentID > 1
                          select NewStudents;
        GridView1.DataSource = allstudents;
        GridView1.DataBind();
    }
}