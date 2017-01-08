using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["userInfo"] != null)
        {
            SignUpButton.Visible = true;
            SignUpLabel.Visible = true;
            PasswordTextBox.Visible = false;
            FirstNameTextBox.Visible = false;
            LastNameTextBox.Visible = false;
            EmailTextBox.Visible = false;
            Location.Visible = false;
            TravelFreqTextBox.Visible = false;
            TravelFreqTextBox.Visible = false;
            Button1.Visible = false;
            Label1.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
        }else
        {
            SignUpButton.Visible = false;
            SignUpLabel.Visible = false;
            PasswordTextBox.Visible = true;
            FirstNameTextBox.Visible = true;
            LastNameTextBox.Visible = true;
            EmailTextBox.Visible = true;
            Location.Visible = true;
            Button1.Visible = true;
            TravelFreqTextBox.Visible = true;
            TravelFreqLabel.Visible = true;
            Label1.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\JustTravel_ASP.NET\\App_Data\\JustTravel.mdf;Integrated Security=True");
        con.Open();

        String queryString = "SELECT [Email] FROM [dbo].[User] WHERE [Email] = @Email"; //default location for new york

        SqlCommand command = new SqlCommand(queryString, con);
        command.Parameters.AddWithValue("@Email", EmailTextBox.Text);
        SqlDataReader reader = command.ExecuteReader();

        if (reader.HasRows)
        {
            Error.Text = "*Email is already being used. Plese Try Another";
            reader.Close();
            return;
        }
        else {
            reader.Close();
            //run query to insert User
            SqlCommand cmd1 = new SqlCommand("INSERT INTO [dbo].[User]([Password], [FirstName], [LastName], [Email], [LocationID], [UserTypeID], [TravelFreq]) VALUES (@Password, @FirstName, @LastName, @Email, @Location, 2, @TravelFreq)", con); //default location for new york
            cmd1.Parameters.AddWithValue("@Password", PasswordTextBox.Text);
            cmd1.Parameters.AddWithValue("@FirstName", FirstNameTextBox.Text);
            cmd1.Parameters.AddWithValue("@LastName", LastNameTextBox.Text);
            cmd1.Parameters.AddWithValue("@Email", EmailTextBox.Text);
            cmd1.Parameters.AddWithValue("@Location", Location.SelectedValue);
            cmd1.Parameters.AddWithValue("@TravelFreq", TravelFreqTextBox.Text);

            cmd1.ExecuteNonQuery();

            con.Close();
            Response.Cookies["userInfo"]["email"] = EmailTextBox.Text;

            //set cookie and redirect
            Response.Redirect("../Default/Default");
            // InputLabel.Text = "Successful input.";
        }
    }


    protected void SignUpButton_Click(object sender, EventArgs e)
    {
        Response.Cookies["userInfo"].Expires = DateTime.Now.AddDays(-1);
        Response.Redirect(Request.RawUrl);
    }
}