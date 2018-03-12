using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class inmate : System.Web.UI.Page
{
    dbcon dbconnect = new dbcon();
    DataTable dt = new DataTable();
    string sImageFileExtension;
    protected void Page_Load(object sender, EventArgs e)
    {
       /* if (Session["username"] == null || Session["username"].ToString() == "")
        {
            Response.Redirect("Default.aspx");
        }*/
    }

    public void Insert_Form()
    {

    }




    protected void save_Click(object sender, EventArgs e)
    {
        bool Validrecord = true;
        string Selectstring = "SELECT * FROM prisoner " + "WHERE name='" + fName.Text.Replace("'", "\''") + "' and age='" + age.Text.Replace("'", "\''") + "'";
        dt = dbconnect.databaseReturnDt(Selectstring);



        if (dt.Rows.Count > 0)
        {
            Validrecord = false;

            msg2.Text = fName.Text + " " + age.Text + " already exsist";
            fName.Focus();
            age.Focus();
            Panel3.Visible = true;
            Panel2.Visible = false;
            return;
        }

        if (Validrecord == true)
        {
            if (pic.HasFile == false)
            {
                string PicName = "NoImage";
                string query = "insert into prisoner(name,gender,age,education,state_origin,nationality,marital,offence,date_convicted,date_judgement,prison_name,sentence,Ditem_time,file_no) values ("
                    + "'" + fName.Text.Replace("'", "\''") + "',"
                    + "'" + gender.Text.Replace("'", "\''") + "',"
                    + "'" + age.Text.Replace("'", "\''") + "',"
                    + "'" + education.Text.Replace("'", "\''") + "',"
                    + "'" + state.Text.Replace("'", "\''") + "',"
                    + "'" + nation.Text.Replace("'", "\''") + "',"
                    + "'" + marital.Text.Replace("'", "\''") + "',"
                    + "'" + offence.Text.Replace("'", "\''") + "',"
                    + "'" + judge.Text.Replace("'", "\''") + "',"
                    + "'" + convict.Text.Replace("'", "\''") + "',"
                    + "'" + prisonN.Text.Replace("'", "\''") + "',"
                    + "'" + sentence.Text.Replace("'", "\''") + "',"
                    + "'" + DateTime.Now.ToString() + "',"
                    + "'" + file.Text.Replace("'", "\''") + "')";
                dbconnect.databaseInsert(query);

                msg1.Text = "Successful Registration ";

                Panel1.Visible = true;
                Panel2.Visible = false;

            }
            else if (pic.HasFile == true)
            {
                string myMap = MapPath("~/").ToLower();
                Random r = new Random();
                int next = r.Next();
                string ImageName = pic.PostedFile.FileName;
               
                sImageFileExtension = ImageName.Substring(ImageName.LastIndexOf(".")).ToLower();
                if (sImageFileExtension == ".gif" || sImageFileExtension == ".png" || sImageFileExtension == ".jpg" || sImageFileExtension == ".jpeg" || sImageFileExtension == ".bmp")
                {
                    string ImageSaveURL = myMap + "UserImage/" + next + sImageFileExtension;

                    pic.PostedFile.SaveAs(ImageSaveURL);
                    string query = "insert into prisoner(name,gender,age,education,state_origin,nationality,marital,offence,date_convicted,date_judgement,prison_name,sentence,Ditem_time,imagename,file_no) values ("
                    + "'" + fName.Text.Replace("'", "\''") + "',"
                    + "'" + gender.Text.Replace("'", "\''") + "',"
                    + "'" + age.Text.Replace("'", "\''") + "',"
                    + "'" + education.Text.Replace("'", "\''") + "',"
                    + "'" + state.Text.Replace("'", "\''") + "',"
                    + "'" + nation.Text.Replace("'", "\''") + "',"
                    + "'" + marital.Text.Replace("'", "\''") + "',"
                    + "'" + offence.Text.Replace("'", "\''") + "',"
                    + "'" + judge.Text.Replace("'", "\''") + "',"
                    + "'" + convict.Text.Replace("'", "\''") + "',"
                    + "'" + prisonN.Text.Replace("'", "\''") + "',"
                    + "'" + sentence.Text.Replace("'", "\''") + "',"
                    + "'" + DateTime.Now.ToString() + "',"
                    + "'" + next + sImageFileExtension + "',"
                    + "'" + file.Text.Replace("'", "\''") + "')";

                    dbconnect.databaseInsert(query);


                    msg1.Text = "Successful Registration ";
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                }
                else
                {
                }
            }
        }

    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("inmates.aspx");
    }
    protected void msgback_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    protected void msgReg_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}