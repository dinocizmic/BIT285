using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
//Dino Cizmic PleaseLogin Code
public partial class PleaseLogIn : System.Web.UI.Page
{
    private object Firstname;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //When the button is clicked and there is nothing insside the password box, then transfer to new account info page, 
    //WHen the button is clicked and there is somthing inside the password box, then log this in the database
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.txtPWord.Text == "")
        {
            Server.Transfer("NewAccountInfo.aspx");

            this.Label1.Visible = true;
        }
        else
        {
            DataTable mydt = (DataTable)Application["visitorlog"];
            //Now its time for fill in the username
            DataRow myRow = mydt.NewRow();
            //Fill up the row with values
            myRow["session ID"] = this.Session.SessionID;
            myRow["UserName"] = txtName.Text;
            myRow["Time logged in"] = "13:09 1/1/2016";
            myRow["IP Address"] = "192.169.0.1";
            
            //add the row to the data table
            mydt.Rows.Add(myRow);

            //save datatable back into application
            

        }
    }
}