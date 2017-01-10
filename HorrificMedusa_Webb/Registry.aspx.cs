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
        MembershipUser newUser = Membership.GetUser(Registry1.UserName);

        Guid newUserId = (Guid)newUser.ProviderUserKey;

        String FirstName = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("FirstName")).Text;
        String LastName = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("LastName")).Text;
        String SSN = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("SSN")).Text;
        String PhoneNumber = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("PhoneNumber")).Text;
        String Street = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("Address")).Text;
        String ZIP = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("ZIP")).Text;
        String County = ((TextBox)Registry1.CreateUserStep.ContentTemplateContainer.FindControl("County")).Text;

        string connStr = ConfigurationManager.ConnectionStrings["MedusaConnectionString"].ToString();
        SqlCommand cmd = new SqlCommand("uspRegistry", conn);
    }
}