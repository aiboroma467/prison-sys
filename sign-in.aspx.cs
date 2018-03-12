using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class sign_in : System.Web.UI.Page
{
    dbcon dbconnect = new dbcon();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = uname.Text;
        string password = pwd.Text;

        bool ValidRecord = true;
        if (ValidRecord == true)
        {

            string query = "SELECT * FROM users WHERE username='" + username.Replace("'", "\''") + "' and password='" + password.Replace("'", "\''") + "'";
            dt = dbconnect.databaseReturnDt(query);
            if (dt.Rows.Count > 0)
            {
                Session["user_id"] = int.Parse(dt.Rows[0]["ID"].ToString());
                Response.Redirect("userdashboard.aspx");
            }
           
        }
        if (ValidRecord == true)
        {
            string query = "SELECT * FROM admin WHERE username='" + username.Replace("'", "\''") + "' and password='" + password.Replace("'", "\''") + "'";
            dt = dbconnect.databaseReturnDt(query);
            if (dt.Rows.Count > 0)
            {
                Session["user_id"] = int.Parse(dt.Rows[0]["ID"].ToString());
                Response.Redirect("dashboard.aspx");
            }
            
    
        }
        if (ValidRecord == true)
        {
            string query = "SELECT * FROM warder WHERE username='" + username.Replace("'", "\''") + "' and password='" + password.Replace("'", "\''") + "'";
            dt = dbconnect.databaseReturnDt(query);
            if (dt.Rows.Count > 0)
            {
                Session["user_id"] = int.Parse(dt.Rows[0]["ID"].ToString());
                Response.Redirect("dashboard.aspx");
            }
            else if (uname.Text == "")
            {
                Panel1.Visible = true;
                msg.Text = "Enter Username";
            }
            else if (pwd.Text == "")
            {
                Panel1.Visible = true;
                msg.Text = "Enter Password";
            }
            else
            {
                Panel1.Visible = true;
                msg.Text = "Wrong Username or Password";
            }


        }
    
    }
}