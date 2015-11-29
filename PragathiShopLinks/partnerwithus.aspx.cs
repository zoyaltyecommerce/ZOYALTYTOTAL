using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Zoyal.Code;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Configuration;
using System.Data.SqlClient;

namespace Zoyal
{
    public partial class partnerwithus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    clearcontrols();

                }
                catch (Exception ex)
                {

                }
            }
        }
        public void clearcontrols()
        {
            try
            {
                txt_yourname.Text = "";
                txt_email.Text = "";
                txt_phonenumber.Text = "";
                txt_subject.Text = "";
                txt_comments.Text = "";
            }
            catch (Exception ex)
            {

            }
        }


        protected void btn_partner_Click(object sender, EventArgs e)
        {
            try
            {
                PARTNERS obj = new PARTNERS();
                obj.PARTNER_NAME = BLL.ReplaceQuote(txt_yourname.Text);
                obj.PARTNER_EMAIL = BLL.ReplaceQuote(txt_email.Text);
                obj.PARTNER_PHONENUMBER = txt_phonenumber.Text;
                obj.PARTNER_SUBJECT = BLL.ReplaceQuote(txt_subject.Text);
                obj.PARTNER_MESSAGE = BLL.ReplaceQuote(txt_comments.Text);
                obj.PARTNER_MODIFIEDBY = 1;
                DataTable dt = BLL.PARTNERE_MAIL(obj);
                DataTable dt_partners = new DataTable();
                bool status = BLL.INSERTPARTNER(obj);
                if (status == true)
                {
                    BLL.ShowMessage(this, "Thank you for contacting us, one of our executive will reach you soon");
                    clearcontrols();
                }
                else
                {
                    BLL.ShowMessage(this, "Please contact administrator");
                    clearcontrols();
                }

                MailMessage mailmessage = new MailMessage();
                mailmessage.IsBodyHtml = true;

                SmtpClient client = new SmtpClient("linkskart.com");
                client.Credentials = new System.Net.NetworkCredential("info@linkskart.com", ".santhu143");
                mailmessage.From = new System.Net.Mail.MailAddress("info@linkskart.com");
                // mailmessage.From = new MailAddress("santhosh@pragatipadh.com");
                mailmessage.To.Add(dt_partners.Rows[0]["PARTNER_EMAIL"].ToString());
                // mailmessage.CC.Add(emailid);
                mailmessage.Subject = "your account is created";
                mailmessage.Body = "<p> Dear " + dt_partners.Rows[0]["PARTNER_EMAIL"].ToString() + " " + ",<br /> <br />Your account is successfully created " + " please <a href=\"http://www.linkskart.com\">Click Here</a> to visit LINKSKART.</p></div>";
                client.EnableSsl = false;
                try
                {
                    client.Send(mailmessage);
                    //SmtpMail.Send(eMail);
                }
                catch (Exception ae)
                {
                    // Label1.Text = ae.Message;
                }


            }
            catch (Exception ex)
            {

            }
        }
    }
}