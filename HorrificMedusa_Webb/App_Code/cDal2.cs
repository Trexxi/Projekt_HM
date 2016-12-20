using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cDAL
/// </summary>
public class cDal2
{
    public cDal2()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    string connStr = ConfigurationManager.ConnectionStrings["MedusaConnectionString"].ToString();


    public cUser getUserReservation(Int16 UserId)
    {
        // New object
        cUser myUser = new cUser();
        // Create a connection
        SqlConnection conn = new SqlConnection(connStr);
        // Name of the Procedure I want to call
        SqlCommand cmd = new SqlCommand("uspUserReservation", conn);
        // Type of commad I want to execute
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            // Open the connection to the database
            conn.Open();
            // Insert the Parameter to the procedure
            cmd.Parameters.AddWithValue("@UserID", UserId);
            // Execute my procedure and load the result to dr
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)

            {
                while (dr.Read())
                {
                    myUser.Meeting = dr["Meeting"].ToString();
                    myUser.Date = Convert.ToDateTime(dr["Date"].ToString());
                    myUser.Day = Convert.ToDateTime(dr["Day"].ToString());
                    myUser.Month = Convert.ToDateTime(dr["Month"].ToString());
                    myUser.Starting = Convert.ToDateTime(dr["Starting"].ToString());
                    myUser.Ending = Convert.ToDateTime(dr["Ending"].ToString());
                    myUser.TattoArtist = dr["TattoArtist"].ToString();

                }
            }
            return myUser;
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