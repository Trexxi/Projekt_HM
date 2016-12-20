using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Artists : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }

    protected void btnRegistry_Click1(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Registry.aspx");
    }

    protected void btnLogIn_Click1(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {

    }
}