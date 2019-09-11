using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;



public partial class admin_usercontrol_AddStaff : System.Web.UI.UserControl
{
    SqlConnection con;
    SqlCommand cmd;
    public admin_usercontrol_AddStaff()
    {
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
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
            cmd.CommandText = "insert into [Staff_Table](Staff_Name,Staff_Email,Password)values(@sname,@semail,@password)";
            cmd.Parameters.AddWithValue("@sname", sntxt.Text);
            cmd.Parameters.AddWithValue("@semail", snemail.Text);
            cmd.Parameters.AddWithValue("@password", snpass.Text);
            cmd.Connection = con;
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                resultlbl.Text = "Add Staff Successfully";

            }

            else
            {
                resultlbl.Text = "There is an errer on adding Staff";
            }
        }

        catch (Exception ex)
        {
            resultlbl.Text = "Error" + ex.Message;
        }

        finally
        {
            con.Close();
        }
    }
}