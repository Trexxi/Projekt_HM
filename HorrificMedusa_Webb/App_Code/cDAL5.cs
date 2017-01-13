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
public class cDAL5
{
    public cDAL5()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    string connStr = ConfigurationManager.ConnectionStrings["MedusaConnectionString"].ToString();


    public cUser getContactInfo()
    {
        // New object
        cUser myUser = new cUser();
        // Create a connection
        SqlConnection conn = new SqlConnection(connStr);
        // Name of the Procedure I want to call
        SqlCommand cmd = new SqlCommand("uspContactInformation", conn);
        // Type of commad I want to execute
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            // Open the connection to the database
            conn.Open();
            // Execute my procedure and load the result to dr
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)

            {
                while (dr.Read())
                {
                    myUser.PhoneNumber = dr["PhoneNumber"].ToString();
                    myUser.Street = dr["Street"].ToString();
                    myUser.ZIP = Convert.ToInt32(dr["ZIP"]);
                    myUser.County = dr["County"].ToString();
                    myUser.Email = dr["Email"].ToString();

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