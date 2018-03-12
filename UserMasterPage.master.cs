using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UserMasterPage : System.Web.UI.MasterPage
{
    dbcon dbconnect = new dbcon();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
         if(Session["user_id"] == null || Session["user_id"].ToString() == "")
        {
            Response.Redirect("Default.aspx");
        }

        string query = "select names from users where ID ='" + Session["user_id"] + "'";
        dt = dbconnect.databaseReturnDt(query);
        
         
        
        //LastLogin.Text = dt.Rows[0]["LastLogin"].ToString();
        string names = dt.Rows[0]["names"].ToString();
        
        welcom_user.Text = names ;

    }

    protected void Logout_Click(object sender, EventArgs e)
    {

        Session["user_id"] = "";
        Response.Redirect("Default.aspx");
        Session.Abandon();
    }
}
