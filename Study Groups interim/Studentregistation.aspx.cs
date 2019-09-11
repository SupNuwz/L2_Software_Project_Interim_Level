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
    public partial class Studentregistation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //pwd encrypt method

        private String Encryptpassword(String pass) //pwd wncrypt method
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(pass);
            string Encryptpassword = Convert.ToBase64String(bytes);
            return Encryptpassword;
        }




        protected void ButtonRegister_Click(object sender, EventArgs e)

       

        {
            try
            {
                String encpwd = Encryptpassword(TextBoxPassword.Text); //pwd encrypt

                //algorithum for globle user identifier
                //M

                Guid newGUID = Guid.NewGuid();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Study GroupsConnectionString"].ConnectionString);
                
                
                
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
                con.Open();
                com.ExecuteNonQuery();


                
                
                // For students
                SqlCommand com2 = new SqlCommand();
                com.CommandType = CommandType.StoredProcedure;
                com.CommandText = "spInsertStudent";


                com2.Parameters.AddWithValue("@UserID", newGUID.ToString());
                com2.Parameters.AddWithValue("@Field", TextBoxField.Text);
                com2.Parameters.AddWithValue("@SchoolName", TextBoxSchoolName.Text);
                com2.Parameters.AddWithValue(" @Age ", TextBoxAge.Text);

                com2.ExecuteNonQuery();
                Response.Write("Successfully registerd");

                con.Close();

                //Response.Redirect("lgin.aspx");




            }



            catch (Exception ex)
            {
                Response.Write("Error ekak insert karaddi poddak balanna" + ex.ToString());
            }
           
           
      

        }
    }
}