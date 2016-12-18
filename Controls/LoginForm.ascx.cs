using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_LoginForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Response.Cookies["userInfo"]["email"] = LoginEmail.Text;
            Response.Redirect("../Default/Default");
        }
    }
}