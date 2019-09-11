using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace Study_Groups_interim
{
    public partial class contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSendMessage_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonSendMessage_Click1(object sender, EventArgs e)
        {
            try
            {
                //algorithum for globle user identifier

                //Guid newGUID = Guid.NewGuid();

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Study GroupsConnectionString3"].ConnectionString);

                con.Open();

                String userinsertquary = "insert into Feedbacks (FeedbackMessage,SenderName,SenderEmail) values (@FMSG,@SNM,@SNEML)";
                SqlCommand com = new SqlCommand(userinsertquary, con);

                com.Parameters.AddWithValue("@FMSG", TextAreaMessage.Text);
                com.Parameters.AddWithValue("@SNM", TextBoxSenderName.Text);
                com.Parameters.AddWithValue("@SNEML", TextBoxSenderEmail.Text);
                


                com.ExecuteNonQuery();


                Response.Write("Hariyata demma wede hari mcn");


                con.Close();



                //Response.Redirect("Manager.aspx");

                // Send an email to me

                try
                {
                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                    client.EnableSsl = true;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("indunilstudygroups@gmail.com", "Indunil56964");
                    MailMessage msgobj = new MailMessage();
                    msgobj.To.Add("indunilm76@gmail.com");
                    msgobj.From = new MailAddress("indunilstudygroups@gmail.com");
                    msgobj.Subject = TextBoxSenderName.Text;
                    msgobj.Body = TextAreaMessage.Text;
                    client.Send(msgobj);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('message has been sent successfully');", true);

                    //Response.Write("message has been sent successfully");
                }
                catch (Exception ex)
                {
                    Response.Write("Could not send the email" + ex.Message);
                }


            }

            catch (Exception ex)
            {
                Response.Write("Error ekak insert karaddi poddak balanna " + ex.ToString());
            }
        }
    }
}