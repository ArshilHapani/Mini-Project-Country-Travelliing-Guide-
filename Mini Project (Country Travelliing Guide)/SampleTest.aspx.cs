using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Mini_Project__Country_Travelliing_Guide_
{
    public partial class SampleTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (MailMessage mail = new MailMessage())
                {
                    mail.From = new MailAddress("arshilhapani998@gmail.com");
                    mail.To.Add("arshilhapani2004@gmail.com");
                    mail.Subject = "Mail";
                    mail.Body = "<h1><i>It's Arshil Here knock knock</i><h1><br>" +
                        "<mark>Marked!</mark>";
                    mail.IsBodyHtml = true;

                    using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                    {
                        smtp.Credentials = new System.Net.NetworkCredential("arshilhapani18@gmail.com", "mbstooqhplzvsrom");
                        smtp.EnableSsl = true;
                        smtp.Send(mail);
                        lblmsg.Text = "Mail Sended.";
                    }

                }

            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                              
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MailMessage mm = new MailMessage("arshilhapani18@gmail.com","arshilhapani2004@gmail.com");
            mm.Subject = "Arshil is legend";
            mm.Body = "<h1>Arshil is greaate</h1>";
            mm.IsBodyHtml = true;


            SmtpClient sc = new SmtpClient();
            sc.Send(mm);


        }
    }
}