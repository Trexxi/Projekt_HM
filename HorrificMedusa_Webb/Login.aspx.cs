using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        cUser myUser = new cUser();
        cUser myResultUser = new cUser();
        DAL myDAL = new DAL();

        myUser.Password = Login1.Password.ToString();
        myUser.UserName = Login1.UserName.ToString();

        myResultUser = myDAL.Login(myUser);
        if (myResultUser.UserId > 0)
        {
            
            Login1.UserName = myResultUser.UserId.ToString();
            Session.Add("UserId", myResultUser.UserId.ToString());
            Response.Redirect("MyPage.aspx");

        }
    }
}