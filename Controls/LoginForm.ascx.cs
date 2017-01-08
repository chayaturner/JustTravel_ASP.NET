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
        String queryString = "SELECT [Email] FROM [dbo].[User] WHERE [Email] = @Email and [Password] = @Password"; //default location for new york
        using (SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\JustTravel_ASP.NET\\App_Data\\JustTravel.mdf;Integrated Security=True")) {
            SqlCommand command = new SqlCommand(queryString, con);
            command.Parameters.AddWithValue("@Password", password.Text);
            command.Parameters.AddWithValue("@Email", LoginEmail.Text);
            con.Open();
            SqlDataReader reader = command.ExecuteReader();
            try
            {
                if (reader.HasRows)
                {
                    Response.Cookies["userInfo"]["email"] = LoginEmail.Text;
                    Response.Redirect("../Default/Default");
                }
                else{
                    EmailMessage.Text = "Invalid Login";                 
                }
            }
            finally
            {
                // Always call Close when done reading.
                reader.Close();
            }
        }


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
