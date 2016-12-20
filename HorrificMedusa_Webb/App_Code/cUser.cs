using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cUser
/// </summary>
public class cUser
{
    public cUser()
    {
        //
        // TODO: Add constructor logic here
        //
    }


    public Int16 UserId { get; set; }

    public string UserName { get; set; }
    public string Password { get; set; }

    public string FirstName{ get; set; }
    public string LastName { get; set; }
    public string PhoneNumber{ get; set; }
    public string County{ get; set; }
    public string Street { get; set; }
    public int ZIP { get; set; }

    public string Meeting { get; set; }
    public string TattoArtist { get; set; }
    public DateTime Starting { get; set; }
    public DateTime Ending { get; set; }
    public DateTime Month { get; set; }
    public DateTime Day { get; set; }
    public DateTime Date { get; set; }
}