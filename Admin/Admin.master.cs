using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // Label2.Text = Session["usr1"].ToString();
        if (Session["usr1"] == null)
            Response.Redirect("AdminLogin.aspx");
        else
        {
            Label2.Text = Session["usr1"].ToString();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //code for LogOut
        Session.RemoveAll();
        Session.Clear();
        Response.Redirect("AdminLogin.aspx");

    }
}
