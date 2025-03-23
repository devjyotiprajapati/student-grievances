using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config

public partial class Admin_ManageFaculty : System.Web.UI.Page
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

            string qry = "select *from Faculty ";//SQL Query
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
            string qry = "delete from faculty where facultyid=@12";//SQL Query
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
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            // code for Update
            int cid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection

            string qry = "update Faculty set Name=@t2, Username=@t3,Id=@t4,Emailid=@t5,Gender=@t6,Mobile=@t7,Address=@t8,Status=@t9,Addon=@t10 Where facultyid=@t11";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution

            string nm = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string un = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string id = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string eid = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string gn = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string mb = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            string ad = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
            string st = ((TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
            string add = ((TextBox)GridView1.Rows[e.RowIndex].Cells[10].Controls[0]).Text;
                      

            cmd.Parameters.AddWithValue("@t2", nm);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t3", un);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t4", id);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t5", eid);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t6", gn);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t7", mb);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t8", ad);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t9", st);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t10",add );//Passing Paramiters to the Query
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
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        connect();

    }
}