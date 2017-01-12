using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cSchemeReservation
/// </summary>
public class cSchemeReservation
{
    public cSchemeReservation()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public Int16 SchemeID { get; set; }
    public Int16 ReservationID { get; set; }

    public string ArtistName { get; set; }
    public string InformationBox { get; set; }
    public DateTime SchemeStartDate { get; set; }
    public DateTime SchemeEndDate { get; set; }
}