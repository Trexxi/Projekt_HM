using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Partiels_ReservationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FetchScheme();
        }

        }
    private DataTable schemeEvents(DateTime start, int week)
    {
        dataACC cdata = new dataACC();
        DataTable dt = new DataTable();

        dt = cdata.getScheme(week, artistID());

        return dt;
    }
    private void FetchScheme()
    {
        DayPilotCalendar.StartDate = DateTimeExtensions.FirstDateOfWeekISO8601(2016, globalVariabled.week);
        DayPilotCalender.DataSource = schemeEvents(DayPilotCalendar.StartDate, globalVariables.week + 1);
        DayPilotCalendar.DataBind();
    }
    
    }