using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["userInfo"] == null)
        {
            LoginForm.Visible = true;
            logout.Visible = false;
            logoutlabel.Visible = false;
        }
        else
        {
            LoginForm.Visible = false;
            logout.Visible = true;
            logoutlabel.Visible = true;
        }
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Cookies["userInfo"].Expires = DateTime.Now.AddDays(-1);
        Response.Redirect(Request.RawUrl);
    }
}


