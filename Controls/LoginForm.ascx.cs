using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Controls_LoginForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        EmailMessage.Text = "";
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Response.Cookies["userInfo"]["email"] = LoginEmail.Text;
            Response.Redirect("../Default/Default");

        }
        else {
            EmailMessage.Text = "Invalid Loggin";
            EmailMessage.Visible = true;
        }
    }
}
