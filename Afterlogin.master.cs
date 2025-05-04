using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Afterlogin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usr"] == null)
            Response.Redirect("studentlogin.aspx");
        else
        {
            Label1.Text = Session["usr"].ToString();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //code for LogOut
        Session.RemoveAll();
        Session.Clear();
        Response.Redirect("studentlogin.aspx");
    }
}
