using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cDAL3
/// </summary>
public class cDAL3
{
    public cDAL3()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    string connStr = ConfigurationManager.ConnectionStrings["MedusaConnectionString"].ToString();

    public cUser makeRegistry(String UserName, String Email, String FirstName, String LastName, String SSN, String PhoneNumber, String Street, String ZIP, String County, String Password)
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
            cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
            cmd.Parameters.AddWithValue("@Street", Street);
            cmd.Parameters.AddWithValue("@ZIP", ZIP);
            cmd.Parameters.AddWithValue("@County", County);
            cmd.Parameters.AddWithValue("@Password", Password);
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