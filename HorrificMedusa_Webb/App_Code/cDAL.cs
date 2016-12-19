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
public class cDAL
{
    public cDAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    string connStr = ConfigurationManager.ConnectionStrings["MedusaConnectionString"].ToString();


    public cUser RenderingMPage(cUser myUser)
    {
        // New object
        cUser my3User = new cUser();
        // Create a connection
        SqlConnection conn = new SqlConnection(connStr);
        // Name of the Procedure I want to call
        SqlCommand cmd = new SqlCommand("uspPersonalInformation", conn);
        // Type of commad I want to execute
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            // Open the connection to the database
            conn.Open();
            // Insert the Parameter to the procedure
            cmd.Parameters.AddWithValue("@UserID", myUser.UserId);
            // Execute my procedure and load the result to dr
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)

            {
                while (dr.Read())
                {
                    my3User.UserName = dr["UserName"].ToString();
                    my3User.FirstName = dr["FirstName"].ToString();
                    my3User.LastName = dr["LastName"].ToString();
                    my3User.PhoneNumber = dr["PhoneNumber"].ToString();
                    my3User.County = dr["County"].ToString();
                    my3User.Street = dr["Street"].ToString();
                    my3User.ZIP = Convert.ToInt16(dr["ZIP"].ToString());

                }
            }
            return my3User;
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