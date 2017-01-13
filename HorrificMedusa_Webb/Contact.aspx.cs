using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            getContactInformation();

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

    private void getContactInformation()
    {
        cUser myUser = new cUser();
        cDAL5 dal = new cDAL5();
        myUser = dal.getContactInfo();

        tbContact1.Text = myUser.PhoneNumber.ToString();
        tbContact2.Text = myUser.Street.ToString();
        tbContact3.Text = myUser.ZIP.ToString();
        tbContact4.Text = myUser.County.ToString();
        tbContact5.Text = myUser.Email.ToString();
    }
}