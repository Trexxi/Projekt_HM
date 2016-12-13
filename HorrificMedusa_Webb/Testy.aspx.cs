using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Testy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Login1.InstructionText = "adsasd asd";
        Login1.LoginButtonText = "Log.llllga in";
  
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

        cUser myUser = new cUser();
        cUser myResultUser = new cUser();
        DAL myDAL = new DAL();

        myUser.Password = Login1.Password.ToString();
        myUser.UserName = Login1.UserName.ToString();


        myResultUser = myDAL.Login(myUser);



    }
}