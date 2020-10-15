using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Check;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=MEET-PC;Initial Catalog=StudentData;Integrated Security=True");
        
    protected void Page_Load(object sender, EventArgs e)
    {
        #region System Generated . . .
        Class1 c = new Class1();
        bool c1 = c.check("O32", con);
        if (!c1)
        {
            Response.Redirect("Login.aspx");
        }
        #endregion
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select Pass from Admin Where Id='"+id.Text+"'",con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        { 
            dr.Read();
            string pas= dr[0].ToString();
            if (pass.Text == pas)
            { 
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Login Sucessful');", true);
                Session["fname"] = "admin";
                Response.Redirect("CReg.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Wrong Password');", true);
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Wrong ID');", true);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}