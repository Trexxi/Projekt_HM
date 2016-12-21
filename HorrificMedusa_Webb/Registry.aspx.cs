using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
        cUser myUser = new cUser();
        cUser myResultUser = new cUser();
        cDAL3 myDAL = new cDAL3();

        myUser.Password = Registry1.Password.ToString();
        myUser.UserName = Login1.UserName.ToString();

        myResultUser = myDAL.Login(myUser);
        if (myResultUser.UserId > 0)
        {
            Login1.UserName = myResultUser.UserId.ToString();
            Session.Add("UserId", myResultUser.UserId.ToString());
            Response.Redirect("MyPage.aspx");
        }
    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}