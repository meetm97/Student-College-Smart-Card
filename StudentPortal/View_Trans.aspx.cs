﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class View_Trans : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=MEET-PC;Initial Catalog=StudentData;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("Select Top 5 TId,UserId,Note,Rs from Trans where To_Type='" + Session["fname"].ToString() + "' order By TId desc", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}