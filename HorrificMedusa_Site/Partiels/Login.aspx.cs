using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Partiels_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        SqlConnection connStr = new SqlConnection(myCS);
        connStr.Open();
        SqlCommand cmd = new SqlCommand("Select * from login where username='" + txtusername.Text + "' and pwd='" + txtpassword.Text + "'", connStr);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            Response.Redirect("Details.aspx");
        }
        else
        {
            Response.Write("<script>alert('Please enter valid Username and Password')</script>");
        }
    }

    protected void txtpassword_TextChanged(object sender, EventArgs e)
    {

    }
}