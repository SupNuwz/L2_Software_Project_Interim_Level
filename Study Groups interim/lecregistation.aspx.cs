using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Study_Groups_interim
{
    public partial class lecregistationaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //pwd encryption
        private String Encryptpassword(String pass)
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(pass);
            string Encryptpassword = Convert.ToBase64String(bytes);
            return Encryptpassword;
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            // Response.Redirect("index.aspx");

            

            try
            {
                string encpwd = Encryptpassword(TextBoxPassword.Text);

                //algorithum for globle user identifier

                Guid newGUID = Guid.NewGuid();

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Study GroupsConnectionString"].ConnectionString);

                con.Open();

                SqlCommand com = new SqlCommand();
                com.CommandType = CommandType.StoredProcedure;
                com.CommandText = "spInsertUser";

                com.Parameters.AddWithValue("@UserID", newGUID.ToString());
                com.Parameters.AddWithValue("@FirstName", TextBoxFirstName.Text);
                com.Parameters.AddWithValue("@Lastname", TextBoxLastName.Text);
                com.Parameters.AddWithValue("@Email", TextBoxemail.Text);
                com.Parameters.AddWithValue("@Location", TextBoxLocation.Text);
                com.Parameters.AddWithValue("@NIC", TextBoxNIC.Text);
                com.Parameters.AddWithValue("@Password", encpwd);

                com.ExecuteNonQuery();


                Response.Write("Hariyata demma wede hari mcn");

                // lecturerslata

                
                SqlCommand com2 = new SqlCommand();
                com.CommandType = CommandType.StoredProcedure;
                com.CommandText = "spInsertUser";


                com2.Parameters.AddWithValue("@UserID", newGUID.ToString());
                com2.Parameters.AddWithValue(" @Subject", TextBoxSubject.Text);
                com2.Parameters.AddWithValue("@UniversityName", TextBoxUniversity.Text);

                com2.ExecuteNonQuery();


                con.Close();

                Response.Redirect("groupselecting.aspx");
            }

            catch (Exception ex)
            {
                Response.Write("check if there is an error" + ex.ToString());
            }

        }
    }
}