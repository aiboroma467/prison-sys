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

public partial class inmates : System.Web.UI.Page
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
            loadgrid();
            btnDelete.Attributes.Add("onclick", "javascript:return DeleteConfirm()");
        }
    }

    public void loadgrid()
    {
        string query = "select * from prisoner ORDER BY names ASC";
        dt = dbconnect.databaseReturnDt(query);
        GridView2.DataSource = dt;
        GridView2.DataBind();
    }
    protected void search_Click(object sender, EventArgs e)
    {
        bool ValidRecord = true;
        if (txtSearch.Text == "")
        {
            ValidRecord = false;
            Panel1.Visible = true;
            msg.Text = "Please enter name or file number";
            return;
        }
        if (ValidRecord == true)
        {

            string str = "select * from prisoner where names like '%" + txtSearch.Text.Replace("'", "\''") + "%' or file_no like '%" + txtSearch.Text.Replace("'", "\''") + "%'";
            dt = dbconnect.databaseReturnDt(str);
            GridView2.DataSource = dt;
            GridView2.DataBind();

        }
        else
        {
            Panel1.Visible = true;
            msg.Text = "No records found for the search criteria";

        }
        msg.Text = "";
        //txtSearch.Text = "";
       
    }

    //Method for Deleting Record  
    protected void DeleteRecord(int empid)
    {
        string str = "SELECT * FROM prisoner" + " where id = '" + ID + "'";
        dt = dbconnect.databaseReturnDt(str);

        
        dataTime.Text = dt.Rows[0]["Ditem_time"].ToString();

        if (dataTime.Text == dt.Rows[0]["Ditem_time"].ToString())
        {
            con.Open();
            SqlCommand com = new SqlCommand("delete from prisoner where Id=@ID", con);
            com.Parameters.AddWithValue("@ID", empid);

            com.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            msg2.Text = "The record you attempted to delete has been modified by another user. " +
                        "Your delete is cancelled to allow you review the other user's changes.";
            Panel3.Visible = true;
            Panel2.Visible = false;
        }
    }
    protected void delete_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow grow in GridView2.Rows)
        {
            //Searching CheckBox("chkDel") in an individual row of Grid  
            CheckBox chkdel = (CheckBox)grow.FindControl("chkDel");
            //If CheckBox is checked than delete the record with particular empid  
            if (chkdel.Checked)
            {
                int id = Convert.ToInt32(grow.Cells[1].Text);
                DeleteRecord(id);
            }
            else
            {
               // Response.Write("<script>alert('Please check a box to delete')</script>");

            }
        }
        //Displaying the Data in GridView  
        loadgrid();
    }
    protected void register_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    protected void RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Attributes.Add("onmouseover", "MouseEvents(this, event)");
        e.Row.Attributes.Add("onmouseout", "MouseEvents(this, event)");
    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        loadgrid();
    }

    public object id { get; set; }
    protected void msgback_Click(object sender, EventArgs e)
    {
        Response.Redirect("inmates.aspx");
    }
}