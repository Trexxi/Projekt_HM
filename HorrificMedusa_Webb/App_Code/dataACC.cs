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
        cSchemeReservation csr = new cSchemeReservation();

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

    public cSchemeReservation getDataOnScheme(Int16 SchemeID) 
    {
        // New object
        cSchemeReservation csr = new cSchemeReservation();
        // Create a connection
        SqlConnection conn = new SqlConnection(connstr);
        // Name of the Procedure I want to call
        SqlCommand cmd = new SqlCommand("uspSchemeInfo", conn);
        // Type of commad I want to execute
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            // Open the connection to the database
            conn.Open();
            // Insert the Parameter to the procedure
            cmd.Parameters.AddWithValue("@SchemeID", SchemeID);
            // Execute my procedure and load the result to dr
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)

            {
                while (dr.Read())
                {
                    csr.SchemeID = Convert.ToInt16(dr["SchemeID"]);
                    csr.ArtistName = dr["ArtistName"].ToString();
                    csr.SchemeStartDate = Convert.ToDateTime(dr["SchemeStartDate"].ToString());
                    csr.SchemeEndDate = Convert.ToDateTime(dr["SchemeEndDate"].ToString());
                    csr.InformationBox = dr["InformationBox"].ToString();
                    csr.ReservationID = Convert.ToInt16(dr["ReservationID"]);
                    
                   

                }
            }
            return csr;
        }
        catch
        {
            // If error
            throw;
        }
        finally
        {
            // Close and dispose all connections to the databse
            cmd.Dispose();
            conn.Close();
            conn.Dispose();
        }
    }
}
   
