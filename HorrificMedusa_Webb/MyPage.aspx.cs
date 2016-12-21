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

        if (!IsPostBack)
        {
            if (Session.Count > 0)
            {
                getPersonalInfo(Convert.ToInt16(Session["UserId"].ToString()));
                getReservationInfo(Convert.ToInt16(Session["UserId"].ToString()));
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

    protected void btnLogIn2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Login.aspx");
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

        btnLogIn.Visible = false;
        btnRegistry.Visible = false;
        btnLogOut.Visible = true;
        lbLogInText.Visible = false;
        btnLogIn2.Visible = false;
        UserImg1.Visible = true;
        tbInfo2.Visible = true;
        tbInfo3.Visible = true;
        tbInfo4.Visible = true;
        tbInfo5.Visible = true;
        tbInfo6.Visible = true;
        tbInfo7.Visible = true;
    }

    private void getReservationInfo(Int16 UserId)
    {
        cUser myUser = new cUser();
        cDal2 dal = new cDal2();
        myUser = dal.getUserReservation(UserId);
        tbBokn1.Text = myUser.Meeting.ToString();
        tbBokn2.Text = myUser.Day.ToString();
        tbBokn3.Text = myUser.Date.ToString();
        tbBokn4.Text = myUser.Month.ToString();
        tbBokn5.Text = myUser.Starting.ToString();
        tbBokn6.Text = myUser.Ending.ToString();
        tbBokn7.Text = myUser.TattoArtist.ToString();

        lbBokningsText.Visible = true;
        tbBokn1.Visible = true;
        tbBokn2.Visible = true;
        tbBokn3.Visible = true;
        tbBokn4.Visible = true;
        tbBokn5.Visible = true;
        tbBokn6.Visible = true;
        tbBokn7.Visible = true;
    }
}