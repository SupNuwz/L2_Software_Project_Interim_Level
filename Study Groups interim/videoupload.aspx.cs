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
    public partial class videoupload : System.Web.UI.Page
    {
        // con string 
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Study GroupsConnectionString"].ConnectionString);
        //
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // fill data

        private void FillData()
        {
            DataTable dt = new DataTable();
            using (con)
            {
                SqlCommand cmd = new SqlCommand("GetDocuments", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                dt.Load(reader);
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileInfo fi = new FileInfo(FileUpload1.FileName);
            byte[] documentContent = FileUpload1.FileBytes;
            String name = fi.Name;
            String description = Description.Text;
            String type = DropDownListType.Text;
            String extn = fi.Extension;
            String title = Title.Text;
            String catogary = DropDownList1.SelectedItem.ToString();
            String email = Email.Text;
            String author = AuthorName.Text;

            // sql enter
           // using (con)
            //{
                con.Open();

                String fileInsertQuary = "insert into File (Fname,Fcontent,Fcatogary,Fdiscription,Ftype,Fauthor,Fauthoremail) values (@Name,@Content@ni,@Catagary,@type,@AuName,@Email)";
                SqlCommand cmd = new SqlCommand("fileInsertQuary", con);

                //cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Name", SqlDbType.NVarChar).Value = name;
                cmd.Parameters.Add("@Content", SqlDbType.VarBinary).Value = documentContent;
                cmd.Parameters.Add("@Catagary", SqlDbType.NVarChar).Value = catogary;
                cmd.Parameters.Add("@description", SqlDbType.NVarChar).Value = description;
                cmd.Parameters.Add("@type", SqlDbType.NVarChar).Value = type;
                cmd.Parameters.Add("@AuName", SqlDbType.NVarChar).Value = author;
                cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = email;
               // cmd.Parameters.Add("@Extn", SqlDbType.NVarChar).Value = extn;
               // cmd.Parameters.Add("@Title", SqlDbType.NVarChar).Value = title;
                
                               
                
                cmd.ExecuteNonQuery();
                Label1.Text = "File Uploaded Successfully";
            //}
            //

        }

        // String userinsertquary = "insert into Users (UserId,FirstName,LastName,email,Location,NIC,Password) values (@UID,@FName,@LName,@eml,@loca,@ni,@pwd)";

        //
    }
}