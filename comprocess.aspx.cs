using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config
using System.Net.Mail;// for sending mail


public partial class comprocess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      TextBox1.Text =Session["query"].ToString();
        TextBox2.Text = Session["subject"].ToString();

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection
        string qry = "select max(Complaintid) from Registercomplaint";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        int cid = Convert.ToInt32(dr[0]);
        cid++;
        TextBox9.Text = cid.ToString();

               
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
          SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection


            string qry = "insert into Registercomplaint(Complaintid,Selectedquery,Subject,Regional,Enrollment,StudentName,Program,Email,Mobile,Query,FillUpload,Status) values(@t1,@t2,@t3,@t4,@t5,@t6,@t7,@t8,@t9,@t10,@t11,@t12)";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
            cmd.Parameters.AddWithValue("@t1", TextBox9.Text);
            cmd.Parameters.AddWithValue("@t2", TextBox1.Text);
            cmd.Parameters.AddWithValue("@t3", TextBox2.Text);
            cmd.Parameters.AddWithValue("@t4", TextBox3.Text);
            cmd.Parameters.AddWithValue("@t5", TextBox4.Text);
            cmd.Parameters.AddWithValue("@t6", TextBox5.Text);
            cmd.Parameters.AddWithValue("@t7", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@t8", TextBox6.Text);
            cmd.Parameters.AddWithValue("@t9", TextBox7.Text);
            cmd.Parameters.AddWithValue("@t10", TextBox8.Text);
  
            string path = "";
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/Upload/" + FileUpload1.FileName));
                path = "~/Upload/" + FileUpload1.FileName;
            }
            cmd.Parameters.AddWithValue("@t11", path);
            cmd.Parameters.AddWithValue("@t12", "Under-Processing");
               
          
           
           

            //code to send Email message
            MailMessage msg = new MailMessage();
            msg.To.Add(TextBox6.Text);
            msg.From = new MailAddress("jprajapati0702@gamil.com");
            msg.Body = TextBox8.Text;
            SmtpClient sm = new SmtpClient("smtp.gmail.com");
            sm.Port = 587;
            sm.Credentials = new System.Net.NetworkCredential("jprajapati0702@gmail.com", "JyOTi@786");
            sm.EnableSsl = true;
            sm.Send(msg);


            int i = cmd.ExecuteNonQuery();//
            if (i == 1)
            {
                
                    Label12.Visible = true;
                    Label13.Visible = true;
                    Label12.Text = "Record Saved SuccesFully";
                
                Label13.Text = "Your Complaint id is:"+TextBox9.Text+"Complaint id send you by mail";
            }
            con.Close();//close DB Connection;
        }
        catch (SqlException ex)//Exception  for catching error By using SqlException class
        {
           Response.Write(ex);
        }
 

        
    }
}