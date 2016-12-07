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
            DayPilotCalendar1.StartDate = DayPilot.Utils.Week.FirstDayOfWeek(new DateTime(2016, 9, 20));
            DayPilotCalendar1.DataSource = getScheme(DayPilotCalendar1.StartDate, DayPilotCalendar1.Days);
            DataBind();
        }
        }
    
    private DataTable getScheme(DateTime start, int days)
    {
        DataTable dt = new DataTable();

        // Creates a connection to SQL SERVER
        SqlConnection connStr = new SqlConnection(myCS);

        //Procedures from SQL
        SqlCommand cmd = new SqlCommand("uspReservation", connStr);

        // What type of SQL command
        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            connStr.Open();

        }
    }
    }