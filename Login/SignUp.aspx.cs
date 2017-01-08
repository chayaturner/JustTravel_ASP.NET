using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\BegASPNET\\JustTravel_ASP.NET\\App_Data\\JustTravel.mdf;Integrated Security=True");
        con.Open();
        
        //get locationID from user state selection:
        String locationName = StateDropDownList.SelectedValue;
        String locationQuery = "SELECT LocationID FROM Location WHERE StateName = '" + locationName + "'";
        SqlCommand getLocationID = con.CreateCommand();
        getLocationID.CommandText = locationQuery;

        int locationID = ((int)getLocationID.ExecuteScalar());

        //run query to insert User
        SqlCommand cmd1 = new SqlCommand("INSERT into User(Password, FirstName, LastName, Email, LocationID, UserTypeID, TravelFreq) Values(@Password, @FirstName, @LastName, @Email @LocationID, 2, @TravelFreq)", con);
        cmd1.Parameters.AddWithValue("@Password", PasswordTextBox.Text);
        cmd1.Parameters.AddWithValue("@FirstName", FirstNameTextBox.Text);
        cmd1.Parameters.AddWithValue("@LastName", LastNameTextBox.Text);
        cmd1.Parameters.AddWithValue("@Email", EmailTextBox.Text);
        cmd1.Parameters.AddWithValue("@LocationID", locationID);
        cmd1.Parameters.AddWithValue("@TravelFreq", TravelFreqTextBox.Text);

        cmd1.ExecuteNonQuery();

        con.Close();
    }
}