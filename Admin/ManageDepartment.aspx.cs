﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config

public partial class Admin_ManageDepartment : System.Web.UI.Page
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

            string qry = "select *from Department ";//SQL Query
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
            string qry = "delete from Department where Id=@12";//SQL Query
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

            string qry = "update Department set Departmentname=@t1,Createddate=@t2 Where Id=@t3";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
            string nm = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string cd = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            
            cmd.Parameters.AddWithValue("@t1", nm);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t2", cd);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t3", cid);//Passing Paramiters to the Query

            
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