using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Study_Groups_interim
{
    public partial class Resetpassword : System.Web.UI.Page
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



        protected void Buttonlogin_Click1(object sender, EventArgs e)
        {
            try
            {
                string encpwd = Encryptpassword(TextBoxPassword.Text);

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Study GroupsConnectionString"].ConnectionString);

                con.Open();

                // me quary eka balanna kiyanna supunita

                String userinsertquary = "insert into Users (Password) values (@pwd) where email == TextBoxPassword.Text ";
                SqlCommand com = new SqlCommand(userinsertquary, con);

                com.Parameters.AddWithValue("@pwd", encpwd);

                com.ExecuteNonQuery();

                Response.Write("Hariyata demma wede hari mcn");

            }

            catch
            {
                Response.Write("Enter karaddi awwlak bn poddak palapan");
            }
        }
    }
}