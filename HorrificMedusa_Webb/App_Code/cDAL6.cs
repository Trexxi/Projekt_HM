﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cDAL6
/// </summary>
public class cDAL6
{
    public cDAL6()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    string connStr = ConfigurationManager.ConnectionStrings["MedusaConnectionString"].ToString();

   public Int16 makeReservation(Int16 iUserId, Int16 iSchemaId)
    {
        // New object
        Int16 iResultat = 0;
        // Create a connection
        SqlConnection conn = new SqlConnection(connStr);
        // Name of the Procedure I want to call
        SqlCommand cmd = new SqlCommand("uspReservation", conn);
        // Type of commad I want to execute
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            // Open the connection to the database
            conn.Open();
            // Insert the Parameter to the procedure
            cmd.Parameters.AddWithValue("@UserID", iUserId);
            cmd.Parameters.AddWithValue("@SchemeID", iSchemaId);

            // Execute my procedure and load the result to dr
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)

            {
                while (dr.Read())
                {
                    iResultat = Convert.ToInt16(dr["ReservationID"]);
                }
            }
            return iResultat;
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