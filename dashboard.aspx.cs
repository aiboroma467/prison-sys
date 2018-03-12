using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;
using System.Web.UI.DataVisualization.Charting;


public partial class dashboard : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\prisondb.mdf;Integrated Security=True;User Instance=True");


    dbcon dbconnect = new dbcon();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {/*
        if (Session["username"] == null || Session["username"].ToString() == "")
        {
            Response.Redirect("Default.aspx");
        }
        */
        if (!IsPostBack)
        {
            barChart();
            female();
            infant();
            male();
            Totinmate();


        }
    }
    public void female()
    {
        string query1 = "select COUNT(*) AS females from prisoner where gender = 'Female'";
        dt = dbconnect.databaseReturnDt(query1);
        msg1.Text = dt.Rows[0]["females"].ToString();

    }
    public void male()
    {
        string query2 = "select COUNT(*) AS males from prisoner where gender = 'Male'";
        dt = dbconnect.databaseReturnDt(query2);
        msg2.Text = dt.Rows[0]["males"].ToString();
    }
    public void Totinmate()
    {
        string query = "select COUNT(*) AS NumberOfinmate from prisoner";
        dt = dbconnect.databaseReturnDt(query);

        msg.Text = dt.Rows[0]["NumberOfinmate"].ToString();
    }

    public void infant()
    {
        string query1 = "select COUNT(*) AS infants from prisoner where age between 1 and 16";
        dt = dbconnect.databaseReturnDt(query1);
        msg4.Text = dt.Rows[0]["infants"].ToString();


    }

    protected void barChart()
    {
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();

        con.Open();
        string cmdstr = "select top 7 gender, COUNT(names) [Total prisoner] from [prisoner] group by gender";
        SqlDataAdapter adp = new SqlDataAdapter(cmdstr, con);

        adp.Fill(ds);
        dt = ds.Tables[0];
        string[] x = new string[dt.Rows.Count];
        int[] y = new int[dt.Rows.Count];

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            x[i] = dt.Rows[i][0].ToString();
            y[i] = Convert.ToInt32(dt.Rows[i][1]);
        }
        Chart1.Series[0].Points.DataBindXY(x, y);
        Chart1.Series[0].ChartType = SeriesChartType.Column;
        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = false;
        Chart1.Legends[0].Enabled = true;

    }
}