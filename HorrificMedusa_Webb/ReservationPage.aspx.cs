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

    private DataTable calendarEvents(DateTime start, int week)
    {
        dataACC dac = new dataACC();
        DataTable dt = new DataTable();

        dt = dac.getScheme(week, 2);

        return dt;
    }

    private void FillScheme ()
    {
        DayPilotCalendar1.StartDate = DateTimeExtensions.FirstDateOfWeekISO8601(2016, 46);
        DayPilotCalendar1.DataSource = calendarEvents(DayPilotCalendar1.StartDate, 46 + 1);
        DayPilotCalendar1.DataBind();
    }
}