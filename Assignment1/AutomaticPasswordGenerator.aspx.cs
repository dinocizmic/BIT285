using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AutomaticPasswordGenerator : System.Web.UI.Page
{//WHen the page loads, fill in the last name from the previous page into the specificed box
    protected void Page_Load(object sender, EventArgs e)
    {
        this.txtName.Value = (string)(Session["LastName"]);
     
    } 
    //once trhe button is clicked, create three strings, lname, bdate, and fcolor. These will be the passwords. The first drop down is going to be the lname+bdate together, as a password
    //Etc for the rest of the passwords
    //if howvever the legth is less than 8 characters, then we will need to add another string as shown below in the 'if' section
    protected void Button1_Click(object sender, EventArgs e)
    {
        string lName = this.txtName.Value;
        string bDate = this.txtYear.Value;
        string fColor = this.txtColor.Value;

        string passwordRecOne = lName + bDate;
        string passwordRecTwo = fColor + lName;
        string passwordRecThree = bDate + fColor;
        string passwordRecFour = bDate + fColor + bDate;
        string passwordRecFive = bDate + fColor + fColor;

        if (passwordRecOne.Length < 8)
            passwordRecOne += fColor;

        if (passwordRecTwo.Length < 8)
            passwordRecTwo += bDate;

        if (passwordRecThree.Length < 8)
            passwordRecThree += lName;

        if (passwordRecFour.Length < 8)
            passwordRecThree += lName;

        if (passwordRecFive.Length < 8)
            passwordRecThree += lName;


        //this this will list out the five passwords
        string[] passwordList = {passwordRecOne, passwordRecTwo, passwordRecThree, passwordRecFour, passwordRecFive};

        DropDownList1.DataSource = passwordList;
        DropDownList1.DataBind();

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {


    }

    protected void Button2_Click(object sender, EventArgs e)
    {//THis will simply transfer the page over to please login completing the loop. 
        Server.Transfer("PleaseLogin.aspx");
    }
}