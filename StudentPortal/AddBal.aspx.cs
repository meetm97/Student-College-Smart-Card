using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Drawing;

public partial class AddBal : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=MEET-PC;Initial Catalog=StudentData;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select Bal,Name,Email from Stud where Id='" + TextBox1.Text + "'",con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            TextBox3.Text = dr[0].ToString();
            TextBox2.Text = dr[1].ToString();
            Label6.Text = dr[2].ToString();
            con.Close();
            Panel4.Visible = true;
            Button1.Visible = false;
            TextBox1.ReadOnly = true;
        }
        else
        {
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Invalid Student Id');", true);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox4.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter Rs.');", true);
        }
        else
        {
            int bal = Convert.ToInt32(TextBox3.Text);
            int rs = Convert.ToInt32(TextBox4.Text);
            int dif = bal + rs;
            SqlCommand cmd = new SqlCommand("Update Stud Set Bal='" + dif + "' where Id ='" + TextBox1.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Balance Added Successfuly');", true);
            Panel4.Visible = false;
            Button1.Visible = true;
            TextBox1.Text = "";
            TextBox1.ReadOnly = false;


            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress("meetmehta10@gmail.com");
            mail.To.Add(Label6.Text);
            mail.Subject = "Balance Update";
            mail.Body = "Your A/C has been credited by "+rs+". Current balance is "+dif+".";
            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("meetmehta10@gmail.com", "meet mehta");
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);
        }
    }
}