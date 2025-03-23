using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config

public partial class Admin_Managestudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            connect();
        }
    }
    public void connect()
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection

            string qry = "select *from Student ";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)//If data Meet in dr
            {
                GridView1.DataSource = dr;//GridView Will take data from dr
                GridView1.DataBind();//Binding the Grid fields with DB

            }
        }
        catch (SqlException ex)//Exception  for catching error By using SqlException class
        {
            Response.Write(ex);
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            //coding for delete button

            int cid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection
            string qry = "delete from Student where Studentid=@12";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
            cmd.Parameters.AddWithValue("@12", cid);//Passing Paramiters to the Query
            cmd.ExecuteNonQuery();//Executing SQL Query
            Label1.Visible = true;
            Label1.Text = "Your Data Has been Deleted";

            GridView1.EditIndex = -1;//Nuteral the Index Position
            connect();
        }
        catch (SqlException ex)//Exception  for catching error By using SqlException class
        {
            Response.Write(ex);
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;// Edit hoga Jis row par 'e' event par clik hoga
        connect();

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        connect();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            // code for Update
            int cid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection

            string qry = "update Student set name=@t1,age=@t2 ,address=@t3, username=@t4,mobileno=@t5,emailid=@t6,dob=@t7,gender=@t8,programe=@t9,city=@t10 Where Studentid=@t11";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
            string nm = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string ag = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string ad = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string un = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string mb = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string em = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            string dob = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
            string gn = ((TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
            string pr = ((TextBox)GridView1.Rows[e.RowIndex].Cells[10].Controls[0]).Text;
            string ci = ((TextBox)GridView1.Rows[e.RowIndex].Cells[11].Controls[0]).Text;

            
            cmd.Parameters.AddWithValue("@t1", nm);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t2", ag);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t3", ad);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t4", un);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t5", mb);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t6", em);
            cmd.Parameters.AddWithValue("@t7", dob);
            cmd.Parameters.AddWithValue("@t8", gn);
            cmd.Parameters.AddWithValue("@t9", pr);
            cmd.Parameters.AddWithValue("@t10", ci);
            cmd.Parameters.AddWithValue("@t11", cid);//Passing Paramiters to the Query

            cmd.ExecuteNonQuery();//Execute SQL Query
            Label1.Visible = true;
            Label1.Text = "Your Data Has been UpDated";
            con.Close();
            GridView1.EditIndex = -1;//Nuteral the Index Position
            connect();
        }
        catch (SqlException ex)//Exception  for catching error By using SqlException class
        {
            Response.Write(ex);
        }

    }
}