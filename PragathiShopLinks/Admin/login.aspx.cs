using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZOYALTY.Code;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

namespace Zoyal.Admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                  if(Session["ADMINLOGINS"]!=null)
                  {
                        Response.Redirect("index.aspx");
                   }
                    clearcontrols();


                }
                catch (Exception ex)
                {

                }
            }
        }
        public void clearcontrols()
        {
            txt_username.Text = "";
            txt_password.Text = "";
        }

        protected void btn_submit_Click1(object sender, EventArgs e)
        {
            try
            {
               Session["ADMINLOGIN"] = null;
                ADMINLOGINS obj = new ADMINLOGINS();
                obj.USER_EMAIL = txt_username.Text.Trim();
                obj.USER_PASSWORD = txt_password.Text.Trim();
                DataTable dt_admin = new DataTable();
                dt_admin = BLL.ADMINLOGIN(obj);
                if (dt_admin.Rows.Count > 0)
                {
                   Session["ADMINLOGIN"] = dt_admin;
                    //BLL.ShowMessage(this, "YOUR ACCOUNT SUCCESSFULLY LOGIN");
                    Response.Redirect("index.aspx");
                    clearcontrols();


                }
                else
                {
                    BLL.ShowMessage(this, "incorrecrt emailid or password");
                    clearcontrols();
                }


            }
            catch (Exception ex)
            {

            }

        }

        protected void btn_forget_Click(object sender, EventArgs e)
        {
            try
            {
                ADMINLOGINS obj = new ADMINLOGINS();
                obj.USER_EMAIL= txt_fogetpassword.Text;
                MailMessage mailmessage = new MailMessage();
                DataTable dt_user = BLL.ADMINFORGETPWD(obj);
                mailmessage.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("linkskart.com");
                client.Credentials = new System.Net.NetworkCredential("info@linkskart.com", ".santhu143");
                mailmessage.From = new System.Net.Mail.MailAddress("info@linkskart.com");
                // mailmessage.From = new MailAddress("santhosh@pragatipadh.com");
                mailmessage.To.Add(dt_user.Rows[0]["USER_EMAIL"].ToString());
                // mailmessage.CC.Add(emailid);
                mailmessage.Subject = "Password request";
                mailmessage.Body = "<p> Dear " + dt_user.Rows[0]["USER_EMAIL"].ToString() + ",<br /> <br />You password is " + dt_user.Rows[0]["USER_PASSWORD"].ToString() + " please <a href=\"http://www.linkskart.com\">Click Here</a> to visit LINKSKART.</p></div>";
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
            catch(Exception ex)
            {

            }

        }
    }

}
