using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Activities_SearchActivities : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    protected void SearchButton_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\JustTravel.mdf;Integrated Security=True");
        //con.Open();
        //String search = SearchTextBox.Text;
        
        ////Get activity's name:
        //String nameQuery = "SELECT ActivityName FROM Activity WHERE ActivityName = '" + search + "'";
        //SqlCommand getname = con.CreateCommand();
        //getname.CommandText = nameQuery;
        //String name = ((String)getname.ExecuteScalar());

        ////Get activity's desription:
        //String descQuery = "SELECT Description FROM Activity WHERE ActivityName = '" + search + "'";
        //SqlCommand getDesc = con.CreateCommand();
        //getDesc.CommandText = descQuery;
        //String description = ((String)getDesc.ExecuteScalar());

        ////Get activity's rating:
        //String ratingQuery = "SELECT Rating FROM Activity WHERE ActivityName = '" + search + "'";
        //SqlCommand getRating = con.CreateCommand();
        //getRating.CommandText = ratingQuery;
        //int rating = ((int)getRating.ExecuteScalar());

        ////Get activity's date:
        //String dateQuery = "SELECT DateCreated FROM Activity WHERE ActivityName = '" + search + "'";
        //SqlCommand getDate = con.CreateCommand();
        //getDate.CommandText = dateQuery;
        //DateTime date = ((DateTime)getDate.ExecuteScalar());
        
        //con.Close();

        ResultsLabel.Text = "Search Complete";

        
    }
}