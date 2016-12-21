using DayPilot.Web.Ui;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ReservationPage : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillScheme();
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

    protected void SubmitBtn_Click(object sender, EventArgs e)
    {

    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {

    }

    protected void DayPilotCalendar1_EventClick(object sender, DayPilot.Web.Ui.Events.EventClickEventArgs e)
    {
       cSchemeReservation scheme = new cSchemeReservation();
        dataACC dacc = new dataACC();

        scheme = dacc.getDataOnScheme(Convert.ToInt16(e.Id));
        tb.Text = scheme.InformationBox.ToString();
        tb1.Text = scheme.SchemeID.ToString();

    }
}