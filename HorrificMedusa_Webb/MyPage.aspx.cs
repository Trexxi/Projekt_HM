using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tbInfo1.Text = Session["UserId"].ToString();

        if(!IsPostBack)
        {
            getPersonalInfo(Convert.ToInt16(tbInfo1.Text));
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

    }

    private void getPersonalInfo(Int16 UserId)
    {
        cUser myUser = new cUser();
        cDAL dal = new cDAL();
        myUser = dal.PersonalInformation(UserId);
        tbInfo2.Text = myUser.FirstName.ToString();
        tbInfo3.Text = myUser.LastName.ToString();
        tbInfo4.Text = myUser.PhoneNumber.ToString();
        tbInfo5.Text = myUser.County.ToString();
        tbInfo6.Text = myUser.Street.ToString();
        tbInfo7.Text = myUser.ZIP.ToString();
    }

}