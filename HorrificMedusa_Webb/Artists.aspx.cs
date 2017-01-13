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
        if (!IsPostBack)
        {
            getArtistInfo();

            if (Session.Count > 0)
            {
                getPersonalInfo(Convert.ToInt16(Session["UserId"].ToString()));
                
            }
        }
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

    private void getArtistInfo()
    {
        cUser tatt1 = new cUser();
        cUser tatt2 = new cUser();
        cUser tatt3 = new cUser();
        cDAL4 dal = new cDAL4();
        tatt1 = dal.getArtistInfo(1);
        tatt2 = dal.getArtistInfo(2);
        tatt3 = dal.getArtistInfo(3);

        tbArtist1.Text = tatt1.FirstName.ToString();
        tbArtist11.Text = tatt1.LastName.ToString();
        tbArtist111.Text = tatt1.PhoneNumber.ToString();
        tbArtist1111.Text = tatt1.Email.ToString();

        tbArtist2.Text = tatt3.FirstName.ToString();
        tbArtist22.Text = tatt3.LastName.ToString();
        tbArtist222.Text = tatt3.PhoneNumber.ToString();
        tbArtist2222.Text = tatt3.Email.ToString();

        tbArtist3.Text = tatt2.FirstName.ToString();
        tbArtist33.Text = tatt2.LastName.ToString();
        tbArtist333.Text = tatt2.PhoneNumber.ToString();
        tbArtist3333.Text = tatt2.Email.ToString();

    }
}