using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class sign_up : System.Web.UI.Page
{
    dbcon dbconnect = new dbcon();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool Validrecord = true;
        string query1 = "SELECT * FROM users WHERE name='" + name.Text.Replace("'", "\''") + "' and phone='" + phone.Text.Replace("'", "\''") + "'";
        dt = dbconnect.databaseReturnDt(query1);
        if (dt.Rows.Count > 0)
        {
            Validrecord = false;

           msgfal.Text = name.Text + "already exsist";
            name.Focus();
            Panel1.Visible = true;
            Panel2.Visible = false;
            return;
        }

        if (Validrecord == true)
        {
            string query = "insert into users(name,address,gender,state,phone,email,username,password) values ("
                + "'" + name.Text.Replace("'", "\''") + "',"
                + "'" + address.Text.Replace("'", "\''") + "',"
                + "'" + gender.Text.Replace("'", "\''") + "',"
                + "'" + state.Text.Replace("'", "\''") + "',"
                + "'" + phone.Text.Replace("'", "\''") + "',"
                + "'" + email.Text.Replace("'", "\''") + "',"
                + "'" + username.Text.Replace("'", "\''") + "',"
                + "'" + pwd.Text.Replace("'", "\''") + "')";
            dbconnect.databaseInsert(query);

            msgsucc.Text = "Successful Registration ";

            Panel1.Visible = false;
            Panel2.Visible = true;

        }
    }
}