using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;


namespace Study_Groups_interim
{
    public partial class pwdReset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Buttonlogin_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Study GroupsConnectionString"].ConnectionString);
            con.Open();

            String checkuser = "SELECT count(*) FROM Users where email ='" + TextBoxemail.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, con);

            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            

           

            


            if (temp != 0)
            {
                String getuseremail = "SELECT email from Users where email ='" + TextBoxemail.Text + "'";
                SqlCommand useremail = new SqlCommand(getuseremail, con);

                String usereml = useremail.ExecuteScalar().ToString().Replace(" ", "");

                //Response.Write(usereml);

                try
                {
                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                    client.EnableSsl = true;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("indunilstudygroups@gmail.com", "Indunil56964");
                    MailMessage msgobj = new MailMessage();
                    msgobj.To.Add(TextBoxemail.Text);
                    msgobj.From = new MailAddress("indunilstudygroups@gmail.com");
                    msgobj.Subject = " Password Reset link ";
                    msgobj.Body = " Use this email as user Name \n" + usereml+"\n http://localhost:52968/lecregistation.aspx";
                    client.Send(msgobj);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('message has been sent successfully');", true);

                    //Response.Write("message has been sent successfully");
                }
                catch (Exception ex)
                {
                    Response.Write("Could not send the email" + ex.Message);
                }

            }

           
        }
    }
}