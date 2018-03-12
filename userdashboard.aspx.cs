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

public partial class userdashboard : System.Web.UI.Page
{

    dbcon dbconnect = new dbcon();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void search_Click(object sender, EventArgs e)
    {
        string names = txtSearch.Text;
        string ages = txtAge.Text;

                string query = "SELECT * FROM prisoner WHERE names='" + names.Replace("'", "\''") + "' and age='" + ages.Replace("'", "\''") + "'";
                  dt = dbconnect.databaseReturnDt(query);
                    if (dt.Rows.Count > 0)
                    {
                      

                        lblname.Text = dt.Rows[0]["names"].ToString();
                        lblgender.Text = dt.Rows[0]["gender"].ToString();
                        lblage.Text = dt.Rows[0]["age"].ToString();
                        lbleducation.Text = dt.Rows[0]["education"].ToString();
                        lblstate.Text = dt.Rows[0]["state_origin"].ToString();
                        lblnation.Text = dt.Rows[0]["nationality"].ToString();
                        lblmarital.Text = dt.Rows[0]["marital"].ToString();
                        lbloffence.Text = dt.Rows[0]["offence"].ToString();
                        lbljudge.Text = dt.Rows[0]["date_judgement"].ToString();
                        lblconvict.Text = dt.Rows[0]["date_convicted"].ToString();
                        lblprison.Text = dt.Rows[0]["prison_name"].ToString();
                        lblsentence.Text = dt.Rows[0]["sentence"].ToString();
                        lblfile.Text = dt.Rows[0]["file_no"].ToString();


                        transTime.Text = DateTime.Now.ToString();
                        //dataTime.Text = dt.Rows[0]["Ditem_time"].ToString();

                        string image = dt.Rows[0]["imagename"].ToString();

                        if (image == "NoImage")
                        {
                            Image9.ImageUrl = "image/nill.jpg";
                        }
                        else
                        {
                            Image9.ImageUrl = "~/UserImage/" + image;
                        }


                        Panel3.Visible = true;
                        Panel10.Visible = false;
                        Panel2.Visible = false;
                       
                    }
                    else if (txtSearch.Text == "")
                    {
                        Panel10.Visible = true;
                        msg22.Text = "Enter inmate names";
                    }
                   else if (txtAge.Text == "")
                    {
                        Panel10.Visible = true;
                        msg22.Text = "Enter inmate Age";
                    }
                    else
                    {
                        Panel10.Visible = true;
                        msg22.Text = "No records found for the search criteria";
                    }
                    
    }
}