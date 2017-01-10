using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }

    protected void btnRegistryButton_Click(object sender, EventArgs e)
    {
        /* cUser myUser = new cUser();
        cUser myResultUser = new cUser();
        cDAL3 myDAL = new cDAL3();

        myUser.Password = Registry1.Password.ToString();
        myUser.UserName = Registry1.UserName.ToString();

        myResultUser = myDAL.makeRegistry(myUser);
        if (myResultUser.UserId > 0)
        {
            Registry1.UserName = myResultUser.UserId.ToString();
            Session.Add("UserId", myResultUser.UserId.ToString());
            Response.Redirect("MyPage.aspx");
        }
        */
    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    protected void Registry1_CreatedUser(object sender, EventArgs e)
    {
        cUser myUser = new cUser();
        MembershipUser newUser = Membership.GetUser(Registry1.UserName);

        Guid newUserId = (Guid)newUser.ProviderUserKey;

        myUser.UserName = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("UserName")).Text;
        myUser.FirstName = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("FirstName")).Text;
        myUser.LastName = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("LastName")).Text;
        myUser.SSN = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("SSN")).Text;
        myUser.PhoneNumber = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("PhoneNumber")).Text;
        myUser.Street = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("Address")).Text;
        myUser.ZIP = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("ZIP")).Text;
        myUser.County = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("County")).Text;
        myUser.Password = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("Password")).Text;

        string connStr = ConfigurationManager.ConnectionStrings["MedusaConnectionString"].ToString();

        // Create a connection
        SqlConnection conn = new SqlConnection(connStr);
        // Name of the Procedure I want to call
        SqlCommand cmd = new SqlCommand("uspRegistry", conn);
        // Type of commad I want to execute
        cmd.CommandType = CommandType.StoredProcedure;

        try
        { 

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
        cmd.ExecuteReader();

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