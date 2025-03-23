using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config

public partial class Admin_Addsubject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "select max(Subjectlistid) from Subjectlist";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        int cid = Convert.ToInt32(dr[0]);
        cid++;
        TextBox1.Text = cid.ToString();
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection

            string qry = "insert into Subjectlist values(@f1,@f2,@f3)";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
            cmd.Parameters.AddWithValue("@f1", TextBox1.Text);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@f2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@f3", TextBox3.Text);
            int i = cmd.ExecuteNonQuery();//
            if (i == 1)
            {
                Label6.Visible = true;
                Label6.Text = "Record Saved SuccesFully";
            }
            else
            {
                Label6.Text = "Record not save";
            }
        }
        catch (SqlException ex)//Exception  for catching error By using SqlException class
        {
            Response.Write(ex);
        }
 
    }
}