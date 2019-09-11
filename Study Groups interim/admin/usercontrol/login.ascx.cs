using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_usercontrol_login : System.Web.UI.UserControl
{
    SqlConnection con;
    SqlCommand cmd;
    bool flag = true;

    public admin_usercontrol_login()
    {
        con = new SqlConnection();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Study GroupsConnectionString"].ConnectionString);
        cmd = new SqlCommand();
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            cmd.CommandText = "Select * From [admin]";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                if (rd["username"].ToString() == usertxt.Text && rd["password"].ToString() == passtxt.Text)
                {
                    Session["admin"] = rd["username"];
                    flag = false;
                    break;
                }
            }

            if (flag == true)
            {
                resultlbl.Text = "username and password is invalid";
            }

            else
            {
                Response.Redirect("~/admin/usercontrol/addstaff.aspx");
            }


        }

        catch (Exception ex)
        {
            resultlbl.Text = ex.Message;
        }
    }
}