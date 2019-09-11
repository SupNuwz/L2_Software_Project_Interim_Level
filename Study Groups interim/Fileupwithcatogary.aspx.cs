using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Study_Groups_interim
{
    public partial class Fileupwithcatogary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Study GroupsConnectionString"].ConnectionString);
            con.Open();

            String userinsertquary = "insert into Files (Fname,Fcontent,Fcatogary,Fdiscription,Ftype,Fauthor,Fauthoremail) values (@Name,@Content,@Catagary,@Description,@type,@AuName,@Email)";

            SqlCommand com = new SqlCommand(userinsertquary, con);

            com.Parameters.AddWithValue("@Name", TextBoxFileName.Text);
            com.Parameters.AddWithValue("@Content", FileUpload1.FileBytes);
            com.Parameters.AddWithValue("@Catagary", DropDownList1.SelectedItem.ToString());
            com.Parameters.AddWithValue("@Description", TextBoxDescription.Text);
            com.Parameters.AddWithValue("@type", DropDownList2.SelectedItem.ToString());
            com.Parameters.AddWithValue("@AuName", TextBoxAuthorName.Text);
            com.Parameters.AddWithValue("@Email", TextBoxemail.Text);

            com.ExecuteNonQuery();
            con.Close();
            Response.Write("Successfully registerd");
        }
    }
}