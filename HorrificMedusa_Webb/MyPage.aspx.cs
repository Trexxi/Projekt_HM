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
        btnChangeInfo.Visible = true;
    }

    private void getReservationInfo(Int16 UserId)
    {
        cDal2 dReservation = new cDal2();
        repBokningar.DataSource = dReservation.getUserReservation2(UserId);
        repBokningar.DataBind();

        if (repBokningar != null)
        {
            lbBokningsText.Visible = true;
        }  
    }

    protected void btnChangeInfo_Click(object sender, EventArgs e)
    {
        cUser myUser = new cUser();
        cDAL dal = new cDAL();

        tbInfo2.Enabled = true;
        tbInfo3.Enabled = true;
        tbInfo4.Enabled = true;
        tbInfo5.Enabled = true;
        tbInfo6.Enabled = true;
        tbInfo7.Enabled = true;
        btnChangeInfo.Visible = false;
        btnBackToMyPage.Visible = true;

        lbBokningsText.Visible = false;
        repBokningar.Visible = false;

        btnSaveChanges.Visible = true;

    }

    protected void btnBackToMyPage_Click(object sender, EventArgs e)
    {
        tbInfo2.Enabled = false;
        tbInfo3.Enabled = false;
        tbInfo4.Enabled = false;
        tbInfo5.Enabled = false;
        tbInfo6.Enabled = false;
        tbInfo7.Enabled = false;
        btnBackToMyPage.Visible = false;
        btnChangeInfo.Visible = true;

        lbBokningsText.Visible = true;
        repBokningar.Visible = true;

        btnSaveChanges.Visible = false;
    }

    protected void btnSaveChanges_Click(object sender, EventArgs e)
    {
        cChangeInformation myDAL = new cChangeInformation();

        myDAL.changeInformation(Convert.ToInt16(Session["UserId"]), tbInfo2.Text, tbInfo3.Text, tbInfo4.Text, tbInfo5.Text, tbInfo6.Text, tbInfo7.Text);

        tbInfo2.Enabled = false;
        tbInfo3.Enabled = false;
        tbInfo4.Enabled = false;
        tbInfo5.Enabled = false;
        tbInfo6.Enabled = false;
        tbInfo7.Enabled = false;
        btnBackToMyPage.Visible = false;
        btnChangeInfo.Visible = true;

        lbBokningsText.Visible = true;
        repBokningar.Visible = true;

        btnSaveChanges.Visible = false;

    }

    protected void repBokningar_ItemCommand(object source, RepeaterCommandEventArgs e)
       {

        tbTest.Text = e.CommandArgument.ToString();

        cCancelReservation myDAL = new cCancelReservation();

        myDAL.cancelReservation(Convert.ToInt16(tbTest.Text));

        getReservationInfo(Convert.ToInt16(Session["UserId"].ToString()));

    }

    protected void btnAvboka_Click(object sender, EventArgs e)
    {
        
    }
}