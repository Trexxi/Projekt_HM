using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for dataACC
/// </summary>
public class dataACC
{
    string connstr = ConfigurationManager.ConnectionStrings["MedusaConnectionString"].ToString();
    public dataACC()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public DataTable getScheme(int WeekNumber, int ArtistID)
    {
        DataTable dt = new DataTable();

        SqlConnection sqlcon = new SqlConnection(connstr);

        SqlCommand cmd = new SqlCommand("uspScheme", sqlcon);

        cmd.CommandType = CommandType.StoredProcedure;

        try
        {
            sqlcon.Open();
            cmd.Parameters.AddWithValue("@WeekNumber", WeekNumber);
            cmd.Parameters.AddWithValue("@Artist", ArtistID);
            dt.Load(cmd.ExecuteReader());
            return dt;

        }
        catch
        {
            throw;
        }
        finally
        {
            cmd.Dispose();
            sqlcon.Close();
            sqlcon.Dispose();
        }
    }
}