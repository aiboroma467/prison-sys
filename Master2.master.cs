using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Master2 : System.Web.UI.MasterPage
{
    dbcon dbconnect = new dbcon();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_id"].ToString() == "")
        {
            Response.Redirect("Default.aspx");
        }


        bool ValidRecord = true;
        if (ValidRecord == true)
        {
            string query = "select names from admin where ID ='" + Session["user_id"] + "'";
            dt = dbconnect.databaseReturnDt(query);


            if (dt.Rows.Count > 0)
            {
                //LastLogin.Text = dt.Rows[0]["LastLogin"].ToString();
                string names = dt.Rows[0]["names"].ToString();

                welcom_admin.Text = " Court Register <br />" + names;
            }
        }
     if (ValidRecord == true)
        {
            string query = "select names from warder where ID ='" + Session["user_id"] + "'";
            dt = dbconnect.databaseReturnDt(query);


            if (dt.Rows.Count > 0)
            {
                //LastLogin.Text = dt.Rows[0]["LastLogin"].ToString();
                string names = dt.Rows[0]["names"].ToString();
                welcom_admin.Text = " Warden Officer <br />" + names;
            }
        }
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("dashboard.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("inmates.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session["username"] = "";
        Response.Redirect("Default.aspx");

    }
}
