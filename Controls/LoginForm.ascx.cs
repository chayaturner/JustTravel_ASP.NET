using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Entity;

public partial class Controls_LoginForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        EmailMessage.Text = "";
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\JustTravel_ASP.NET\\App_Data\\JustTravel.mdf;Integrated Security=True");
        con.Open();


        //run query to insert User
        SqlCommand cmd1 = new SqlCommand("SELECT [Email] FROM [dbo].[User] WHERE Email =" + LoginEmail.Text + " and Password = " + password.Text); //default location for new york


        String locationQuery = ("SELECT [Email] FROM [dbo].[User] WHERE [Email] = " + LoginEmail.Text + " and [Password] = " + password.Text); //default location for new york
        SqlCommand getLocationID = con.CreateCommand();
        getLocationID.CommandText = locationQuery;

        var locationID = getLocationID.ExecuteScalar();


        String result = locationID.ToString();
        EmailMessage.Text = result;

        con.Close();



        /*
        if (Page.IsValid)
        {
            Response.Cookies["userInfo"]["email"] = LoginEmail.Text;
            Response.Redirect("../Default/Default");

        }
        else {
            EmailMessage.Text = "Invalid Loggin";
            EmailMessage.Visible = true;
        }
        */
    }
}
