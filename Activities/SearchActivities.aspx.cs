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
        if (Request.Cookies["userInfo"] == null)
        {
            Response.Redirect("~/Login/Login");
        }

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

        string command = SqlDataSource1.SelectCommand; // added just for debug purpose
        if (SearchTextBox.Text.Equals(""))
        {
            SqlDataSource1.SelectCommand = "SELECT [ActivityName], [Description], [Rating], [DateCreated], [ActivityID] FROM [Activity]";
        }
        else {
            SqlDataSource1.SelectCommand = "SELECT [ActivityName], [Description], [Rating], [DateCreated], [ActivityID] FROM [Activity] WHERE ([ActivityName] like '%'+ @ActivityName + '%')";
        }
        SqlDataSource1.DataBind();
        GridView1.DataBind();
        ResultsLabel.Text = "Search Complete";
    }

    protected void GridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataBind();
    }
    protected void SearchTextBox_TextChanged(object sender, EventArgs e)
    {

    }

}