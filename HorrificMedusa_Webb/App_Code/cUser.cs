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

}