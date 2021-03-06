﻿using DayPilot.Web.Ui;
using DayPilot.Web.Ui.Events.Calendar;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ReservationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillScheme();

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
        tb.Visible = true;
        tb1.Visible = true;
        tb2.Visible = true;
        tb3.Visible = true;
        btnSubmit.Visible = true;
        tbSchemaId.Visible = true;
    }

    protected void ddlArtist_SelectedIndexChanged(object sender, EventArgs e)
    {
        DayPilotCalendar1.StartDate = DateTimeExtensions.FirstDateOfWeekISO8601(2016, 46);
        DayPilotCalendar1.DataSource = calendarEvents(DayPilotCalendar1.StartDate, 46 + 1);
        DayPilotCalendar1.DataBind();

    }
   
    private int artistBoxWowSuchWOW()
    {
        return int.Parse(ddlArtist.SelectedValue);
    }

    private DataTable calendarEvents(DateTime start, int week)
    {
        dataACC dac = new dataACC();
        DataTable dt = new DataTable();

        dt = dac.getScheme(week, artistBoxWowSuchWOW());
      
        return dt;
    }

    private void FillScheme ()
    {
        DayPilotCalendar1.StartDate = DateTimeExtensions.FirstDateOfWeekISO8601(2016, 46);
        DayPilotCalendar1.DataSource = calendarEvents(DayPilotCalendar1.StartDate, 46 + 1);
        DayPilotCalendar1.DataBind();

    }

    protected void DayPilotCalendar1_EventClick(object sender, DayPilot.Web.Ui.Events.EventClickEventArgs e)
    {
        cSchemeReservation scheme = new cSchemeReservation();
        dataACC dacc = new dataACC();

        scheme = dacc.getDataOnScheme(Convert.ToInt16(e.Id));
        tb.Text = scheme.InformationBox.ToString();
        tb1.Text = scheme.SchemeStartDate.ToString();
        tb2.Text = scheme.SchemeEndDate.ToString();
        tb3.Text = scheme.ArtistName.ToString();
        tbSchemaId.Text = scheme.SchemeID.ToString();
        

        if (scheme.ReservationID != 0)
        {
            btnSubmit.Enabled = false;
        }
        else if(scheme.TimeType == 2)
        {
            btnSubmit.Enabled = false;
        }
        else
        {
            btnSubmit.Enabled = true;
        }

    }

    protected void DayPilotCalendar1_BeforeEventRender(object sender, BeforeEventRenderEventArgs e)
    {
        cSchemeReservation scheme = new cSchemeReservation();
        dataACC dacc = new dataACC();

            e.DurationBarColor = "green";
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        cDAL6 myDAL = new cDAL6();
        Int16 iReservationId = 0;

        iReservationId = myDAL.makeReservation(Convert.ToInt16(Session["UserId"]), Convert.ToInt16(tbSchemaId.Text));

        if (iReservationId > 0)
        {
            Response.Redirect("MyPage.aspx");
        }
        else
        {
            // det gick åt fanders
        }
    }
}