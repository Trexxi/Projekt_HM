using System;
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

    public cUser makeReservation()
    {
        // New object
        cUser myUser = new cUser();
        // Create a connection
        SqlConnection conn = new SqlConnection(connStr);
        // Name of the Procedure I want to call
        SqlCommand cmd = new SqlCommand("uspRegistry", conn);
        // Type of commad I want to execute
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            // Open the connection to the database
            conn.Open();
            // Insert the Parameter to the procedure
            cmd.Parameters.AddWithValue("@UserName", myUser.UserName);
            cmd.Parameters.AddWithValue("@Email", myUser.Email);
            cmd.Parameters.AddWithValue("@FirstName", myUser.FirstName);
            cmd.Parameters.AddWithValue("@LastName", myUser.LastName);
            cmd.Parameters.AddWithValue("@SSN", myUser.SSN);
            cmd.Parameters.AddWithValue("@PhoneNumber", myUser.PhoneNumber);
            cmd.Parameters.AddWithValue("@Street", myUser.Street);
            cmd.Parameters.AddWithValue("@ZIP", myUser.ZIP);
            cmd.Parameters.AddWithValue("@County", myUser.County);
            cmd.Parameters.AddWithValue("@Password", myUser.Password);
            // Execute my procedure and load the result to dr
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)

            {
                while (dr.Read())
                {
                    myUser.UserId = Convert.ToInt16(dr["UserID"].ToString());
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