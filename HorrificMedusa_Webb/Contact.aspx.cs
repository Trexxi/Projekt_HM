using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
   
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void getAddress()
    {
        string connstr = ConfigurationManager.ConnectionStrings["MedusaConnectionString"].ToString();

        DataTable dt = new DataTable();
        string query = "SELECT Street, ZIP, County FROM dbo.[Address] WHERE AddressID = 5";

        SqlConnection sqlcon = new SqlConnection(connstr);
        SqlCommand cmd = new SqlCommand(query, sqlcon);
        sqlcon.Open();

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        sqlcon.Close();
        sqlcon.Dispose();
  
    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    protected void btnRegistry_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Registry.aspx");
    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {

    }
}