using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for dataACC
/// </summary>
public class dataACC
{
    public dataACC()
    {
      }
    public DataTable getScheme(DateTime start, int days)
    {
        DataTable dt = new DataTable();

        // Creates a connection to SQL SERVER
        SqlConnection connStr = new SqlConnection(myCS);

        //Procedures from SQL
        SqlCommand cmd = new SqlCommand("uspScheme", connStr);

        // What type of SQL command
        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            connStr.Open();

        }
    }
}