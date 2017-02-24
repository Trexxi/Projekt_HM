using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cChangeInformation
/// </summary>
public class cChangeInformation
{
    public cChangeInformation()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    string connStr = ConfigurationManager.ConnectionStrings["MedusaConnectionString"].ToString();

    public cUser changeInformation(Int16 iUserId, String sFirstName, String sLastName, String sPhoneNumber, String sCounty, String sStreet, String sZIP)
    {
        // New object
        cUser myUser = new cUser();
        // Create a connection
        SqlConnection conn = new SqlConnection(connStr);
        // Name of the Procedure I want to call
        SqlCommand cmd = new SqlCommand("uspChangePersonalInformation", conn);
        // Type of commad I want to execute
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            // Open the connection to the database
            conn.Open();
            // Insert the Parameter to the procedure
            cmd.Parameters.AddWithValue("@UserID", iUserId);
            cmd.Parameters.AddWithValue("@FirstName", sFirstName);
            cmd.Parameters.AddWithValue("@LastName", sLastName);
            cmd.Parameters.AddWithValue("@PhoneNumber", sPhoneNumber);
            cmd.Parameters.AddWithValue("@County", sCounty);
            cmd.Parameters.AddWithValue("@Street", sStreet);
            cmd.Parameters.AddWithValue("@ZIP", sZIP);

            // Execute my procedure and load the result to dr
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)

            {
                while (dr.Read())
                {
                    myUser.UserId = Convert.ToInt16(dr["Resultat"].ToString());
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