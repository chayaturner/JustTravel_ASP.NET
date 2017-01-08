using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Activities_AddActivities : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
     protected void Button1_Click(object sender, EventArgs e){

     }
    
    protected void AddButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\JustTravel_ASP.NET\\App_Data\\JustTravel.mdf;Integrated Security=True");
        con.Open();

        //get locationID from user state selection:
        String locationName = StateDropDownList.SelectedValue;
        String locationQuery = "SELECT LocationID FROM Location WHERE StateName = '" + locationName + "'";
        SqlCommand getLocationID = con.CreateCommand();
        getLocationID.CommandText = locationQuery;

        int locationID = ((int)getLocationID.ExecuteScalar());

        //run query to insert Address
        SqlCommand cmd1 = new SqlCommand("INSERT into Address(Street, City, LocationID, Zip) Values(@Street, @City, @LocationID, @Zip)", con);
        cmd1.Parameters.AddWithValue("@Street", StreetTextBox.Text);
        cmd1.Parameters.AddWithValue("@City", CityTextBox.Text);
        cmd1.Parameters.AddWithValue("@LocationID", locationID);
        cmd1.Parameters.AddWithValue("@Zip", ZipTextBox.Text);

        cmd1.ExecuteNonQuery();

        //get AddressID that user just inserted:
        String addressQuery = "SELECT AddressID FROM Address WHERE (Street = '"
            + StreetTextBox.Text + "' AND City = '"
            + CityTextBox.Text + "' AND LocationID = '"
            + locationID + "' AND Zip = '"
            + ZipTextBox.Text + "')";
        SqlCommand getAddressID = con.CreateCommand();
        getAddressID.CommandText = addressQuery;
        int addressID = ((int)getAddressID.ExecuteScalar());

        //run query to insert activityContact
        SqlCommand cmd2 = new SqlCommand("INSERT into ActivityContact(ContactName, ContactEmail, ContactPhone, OtherInfo, AddressID) " +
            "Values (@ContactName, @ContactEmail, @ContactPhone, @OtherInfo, @AddressID)", con);
        cmd2.Parameters.AddWithValue("@ContactName", ContactNameTextBox.Text);
        cmd2.Parameters.AddWithValue("@ContactEmail", ContactEmailTextBox.Text);
        cmd2.Parameters.AddWithValue("@ContactPhone", ContactPhoneTextBox.Text);
        cmd2.Parameters.AddWithValue("@OtherInfo", OtherInfoTextBox.Text);
        cmd2.Parameters.AddWithValue("@AddressID", addressID);

        cmd2.ExecuteNonQuery();

        //get ContactID that user just inserted:
        String contactQuery = "SELECT ContactID FROM Contact WHERE (ContactName = '"
            + ContactNameTextBox.Text + "' AND ContactEmail = '"
            + ContactEmailTextBox.Text + "' AND ContactPhone = '"
            + ContactPhoneTextBox.Text  + "' AND AddressID = '"
            + addressID + "')";
        SqlCommand getContactID = con.CreateCommand();
        getContactID.CommandText = contactQuery;
        int contactID = ((int)getContactID.ExecuteScalar());

        //run query to insert activity Type
        SqlCommand cmd3 = new SqlCommand("INSERT into ActivityType(ActivityTypeName) Values (" + ActivityTypeTextBox.Text + ")");
        cmd3.ExecuteNonQuery();

        //get ActivityTypeID that user just inserted:
        String typeQuery = "SELECT ActivityTypeID FROM ActivityType WHERE (ActivityTypeName = '" + ActivityTypeTextBox.Text + ")";
        SqlCommand getTypeID = con.CreateCommand();
        int typeID = ((int)getTypeID.ExecuteScalar());

        //And finally...

        //run query to insert activity
        SqlCommand cmd4 = new SqlCommand("INSERT into Activity(ActivityName, Description, ActivityTypeID, Rating, ActivityContactID, LocationID, DateCreated) " +
            "Values (@ActivityName, @Description, @ActivityTypeID, @Rating, @ActivityContactID, @LocationID, @DateCreated)", con);
        cmd4.Parameters.AddWithValue("@ActivityName", NameTextBox.Text);
        cmd4.Parameters.AddWithValue("@Description", DescriptionTextBox.Text);
        cmd4.Parameters.AddWithValue("@ActivityTypeID", typeID);
        cmd4.Parameters.AddWithValue("@Rating", RatingDropDownList.SelectedValue);
        cmd4.Parameters.AddWithValue("@ActivityContactID", contactID);
        cmd4.Parameters.AddWithValue("@LocationID", locationID);
        cmd4.Parameters.AddWithValue("@DateCreated", DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss"));
        cmd4.ExecuteNonQuery();
        
        con.Close();

        Label4.Text = "Add Complete";
    }
}