using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Label25.Text == "")
        {
            SqlConnection con = new SqlConnection(@"Data Source=MEET-PC;Initial Catalog=StudentData;Integrated Security=True");
            string s = "Select Id from Stud";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int rows = ds.Tables[0].Rows.Count;
            if (rows != 0)
            {
                for (int i = 0; i < rows; i++)
                {
                    DropDownList1.Items.Add(ds.Tables[0].Rows[i][0].ToString());
                }
                Label25.Text = "Done";
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text != "--Select--")
        {
            SqlConnection con = new SqlConnection(@"Data Source=MEET-PC;Initial Catalog=StudentData;Integrated Security=True");
            string s = "Select * from Stud Where Id='" + DropDownList1.Text + "'";
            SqlCommand cmd = new SqlCommand(s, con);
            con.Open();
            SqlDataReader r = cmd.ExecuteReader();
            r.Read();
            Label12.Text = r[1].ToString();
            Label20.Text = r[2].ToString();
            Label14.Text = r[3].ToString();
            Label16.Text = r[4].ToString();
            string qua = r[5].ToString();
            check("Photo", LinkButton1);
            check("Birth", LinkButton2);
            check("Cast", LinkButton3);
            check("SSCPass", LinkButton4);
            check("SSCLeav", LinkButton5);
            check("HSCPass", LinkButton6);
            check("HSCLeav", LinkButton7);
            check("GradPass", LinkButton8);
            check("GradLeav", LinkButton9);
            check("PostPass", LinkButton10);
            check("PostLeav", LinkButton11);
            Panel4.Visible = true;
        }
        else
        {
            Panel4.Visible = false;
        }
    }

    public void check(string name,Control c)
    {
        SqlConnection con = new SqlConnection(@"Data Source=MEET-PC;Initial Catalog=StudentData;Integrated Security=True");
        string s = "SELECT "+name+" FROM Doc where Id='" + DropDownList1.Text + "' And "+name+" IS NULL";
        SqlCommand cmd = new SqlCommand(s, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            c.Visible = false;
        }
        else
        {
            c.Visible = true;
        }
        con.Close();
    }

    public void databaseFileRead(string name,string varPathToNewLocation)
    {
        SqlConnection varConnection = new SqlConnection(@"Data Source=MEET-PC;Initial Catalog=StudentData;Integrated Security=True");
        varConnection.Open();
        using (var sqlQuery = new SqlCommand("SELECT " + name + " FROM Doc where Id='" + DropDownList1.Text + "'", varConnection))
        {
            using (var sqlQueryResult = sqlQuery.ExecuteReader())
                if (sqlQueryResult != null)
                {
                    sqlQueryResult.Read();
                    var blob = new Byte[(sqlQueryResult.GetBytes(0, 0, null, 0, int.MaxValue))];
                    sqlQueryResult.GetBytes(0, 0, blob, 0, blob.Length);
                    using (var fs = new FileStream(varPathToNewLocation, FileMode.Create, FileAccess.Write))
                        fs.Write(blob, 0, blob.Length);
                }
        }
        varConnection.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        databaseFileRead("Photo", @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\Photo.pdf");
        Session["path"] = @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\Photo.pdf";
        ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('WebForm3.aspx','Graph','height=500,width=840');", true);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        databaseFileRead("Birth", @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\Birth.pdf");
        Session["path"] = @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\Birth.pdf";
        ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('WebForm3.aspx','Graph','height=500,width=840');", true);
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        databaseFileRead("Cast", @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\Cast.pdf");
        Session["path"] = @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\Cast.pdf";
        ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('WebForm3.aspx','Graph','height=500,width=840');", true);
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        databaseFileRead("SSCPass", @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\SSCPass.pdf");
        Session["path"] = @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\SSCPass.pdf";
        ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('WebForm3.aspx','Graph','height=500,width=840');", true);
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        databaseFileRead("SSCLeav", @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\SSCLeav.pdf");
        Session["path"] = @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\SSCLeav.pdf";
        ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('WebForm3.aspx','Graph','height=500,width=840');", true);
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        databaseFileRead("HSCPass", @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\HSCPass.pdf");
        Session["path"] = @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\HSCPass.pdf";
        ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('WebForm3.aspx','Graph','height=500,width=840');", true);
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        databaseFileRead("HSCLeav", @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\HSCLeav.pdf");
        Session["path"] = @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\HSCLeav.pdf";
        ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('WebForm3.aspx','Graph','height=500,width=840');", true);
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        databaseFileRead("GradPass", @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\GradPass.pdf");
        Session["path"] = @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\GradPass.pdf";
        ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('WebForm3.aspx','Graph','height=500,width=840');", true);
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        databaseFileRead("GradLeav", @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\GradLeav.pdf");
        Session["path"] = @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\GradLeav.pdf";
        ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('WebForm3.aspx','Graph','height=500,width=840');", true);
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        databaseFileRead("PostPass", @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\PostPass.pdf");
        Session["path"] = @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\PostPass.pdf";
        ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('WebForm3.aspx','Graph','height=500,width=840');", true);
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        databaseFileRead("PostLeav", @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\PostLeav.pdf");
        Session["path"] = @"C:\Users\meet\Desktop\Student Data Card Barcode\Book\PostLeav.pdf";
        ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('WebForm3.aspx','Graph','height=500,width=840');", true);
    }
}