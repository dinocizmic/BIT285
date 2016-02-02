using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewAccountInfo : System.Web.UI.Page
{//On the page load, fill out the three degree options as shown below. 
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] programOption = { " Web Developer Degree", "ETSP Degree", "Network Technology Degree"};

        DropDownList1.DataSource = programOption;
        DropDownList1.DataBind();
    }


    //When the button is clicked, save the last name into the value, and transfer the page over to the password generator
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["LastName"] = this.LastName.Value;
        Server.Transfer("AutomaticPasswordGenerator.aspx");
    }
    //This code is to reset the text inside the boxes
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.FirstName.Value = "";
        this.LastName.Value = "";
        this.txtEmail.Value = "";
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
}