using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config

public partial class Admin_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bt1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection

            string qry = "select * from  Admin where Username=@12 and password=@21";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution

            cmd.Parameters.AddWithValue("@12", TextBox1.Text);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@21", TextBox2.Text);
            SqlDataReader dr = cmd.ExecuteReader();//Execute SQL Query
            if (dr.Read())//If Record Matched
            {
                Session["usr1"] = TextBox1.Text;//Globle variable Session for calling any where in project
                Response.Redirect("Adminhome.aspx");//Open Admin Home Page
            }
            else//If Unmatched
            {
                Label1.Visible = true;
                Label1.Text = "Invalid username/Password";
            }
            dr.Close();
            con.Close();
        }
        catch (SqlException ex)//Exception  for catching error By using SqlException class
        {
            Response.Write(ex);
        }
    }
}