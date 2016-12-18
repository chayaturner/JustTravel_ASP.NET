using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master_Pages_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["userInfo"] != null)
        {
            String email = Server.HtmlEncode(Request.Cookies["userInfo"]["email"]);
            userLabel.Text = "<a href='/Default/Default'>" + email + "</a>";
        }
        else
        {
            userLabel.Text = "<a href='/Login/Login'>Login</a>";
        }
    }
}
