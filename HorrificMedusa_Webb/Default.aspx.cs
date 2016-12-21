using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session.Count > 0)
            {
                getPersonalInfo(Convert.ToInt16(Session["UserId"].ToString()));
            }
        }
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    protected void btnRegistry_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Registry.aspx");
    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }

    private void getPersonalInfo(Int16 UserId)
    {
        cUser myUser = new cUser();
        cDAL dal = new cDAL();
        myUser = dal.PersonalInformation(UserId);

        btnLogIn.Visible = false;
        btnRegistry.Visible = false;
        btnLogOut.Visible = true;
    }
}