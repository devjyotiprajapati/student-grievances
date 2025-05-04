using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config


public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {            
            cascading();

        }

    }
    protected void cascading()
    {
        //code for selecting Query type from Fist drop down list

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection
        string qry = "select * from Query ";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        cmd.CommandType = CommandType.Text;
        DropDownList1.DataSource = cmd.ExecuteReader();
        DropDownList1.DataTextField = "Queryname";
        DropDownList1.DataValueField = "Queryid";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0,new ListItem("--Select--","0"));       
    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {     
           
        Response.Redirect("comprocess.aspx");   
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // code for select subject from the data base according to Query type  

        int subid = Convert.ToInt32(DropDownList1.SelectedValue);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection
        string qry = "select * from Subjectlist where Queryid= @t1";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@t1", subid);
        DropDownList2.DataSource = cmd.ExecuteReader();
        DropDownList2.DataTextField = "Subjectname";
        DropDownList2.DataValueField = "Subjectlistid";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0,new ListItem("--Select--","0"));
        Session["query"] = DropDownList1.SelectedItem;        

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["subject"] = DropDownList2.SelectedItem;         
       
    }
}