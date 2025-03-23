using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//for DB connectivity: ADO.NET
using System.Data.SqlClient;//for DB connectivity: ADO.NET
using System.Configuration;//for web.config
using System.Text;//for creating random password
using System.Net;//for sending mail
using System.Net.Mail;// for sending mail
public partial class Admin_AddFaculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
        con.Open();//open DB connection

        string qry = "select max(facultyid) from Faculty";//SQL Query
        SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        int cid = Convert.ToInt32(dr[0]);
        cid++;
        TextBox1.Text = cid.ToString();
    }

    private int RandomNumber(int min, int max)
    {
        Random rn = new Random();
        return rn.Next(min,max);
 
    }


    private string RandomString(int length)
    {
        StringBuilder sb = new StringBuilder();
        Random rd = new Random();
        char value;
        for (int i = 0; i < length; i++)
        {
            value = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * rd.NextDouble() + 65)));
            sb.Append(value);
        }
        return sb.ToString();
    }




    protected void btn_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);//create DB Connection
            con.Open();//open DB connection
            StringBuilder sb = new StringBuilder();
            sb.Append(RandomNumber(10, 199));
            sb.Append(RandomString(7));
            Literal1.Text = sb.ToString();


            string qry = "insert into Faculty values(@t1,@t2,@t3,@t4,@t5,@t6,@t7,@t8,@t9,@t10,@t11)";//SQL Query
            SqlCommand cmd = new SqlCommand(qry, con);//Send Query for execution
            cmd.Parameters.AddWithValue("@t1", TextBox1.Text);//Passing Paramiters to the Query
            cmd.Parameters.AddWithValue("@t2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@t3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@t4", Literal1.Text);
            cmd.Parameters.AddWithValue("@t5", TextBox4.Text);
            cmd.Parameters.AddWithValue("@t6", TextBox5.Text);
            String gen = null;
            if (RadioButton1.Checked)
            {
                gen = "Male";
            }
            else
            {
                gen = "Female";
            }
            cmd.Parameters.AddWithValue("@t7", gen);
            cmd.Parameters.AddWithValue("@t8", TextBox6.Text);
            cmd.Parameters.AddWithValue("@t9", TextBox7.Text);
            cmd.Parameters.AddWithValue("@t10", TextBox8.Text);
            cmd.Parameters.AddWithValue("@t11", TextBox9.Text);

            

            int i = cmd.ExecuteNonQuery();//
            if (i == 1)
            {
                Label11.Visible = true;
                Label11.Text = "Record Saved SuccesFully";
            }

            //////code to send Email message
            //MailMessage msg = new MailMessage();
            //msg.To.Add(TextBox5.Text);
            //msg.From = new MailAddress("jprajapati0702@gamil.com");
            ////msg.Body = "Login Details<br/>User Name:" + TextBox3.Text + "Password:" + Literal1.Text + "";
            //msg.Body = "your Password" + Literal1.Text;

            //SmtpClient sm = new SmtpClient("smtp.gmail.com");
            //sm.Port = 587;
            //sm.Credentials = new System.Net.NetworkCredential("jprajapati0702@gmail.com", "JyOTi@786");
            //sm.EnableSsl = true;
            //sm.Send(msg);
            

            con.Close();//close DB Connection;

        }
        catch (SqlException ex)//Exception  for catching error By using SqlException class
        {
            Response.Write(ex);
        }

    }
    
}