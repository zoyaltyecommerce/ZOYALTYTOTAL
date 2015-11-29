using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Zoyal.Code;

namespace Zoyal
{
    public partial class logincheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                Session["ZOYALUSER"] = null;
                // string productid = Request.QueryString["id"].ToString();
                // DataTable dt_product = BLL.GETPRODUCTBYID(productid);
                USERS obj = new USERS();
                obj.USER_EMAILID = txt_username.Text.ToString().Trim();
                obj.USER_PASSWORD = txt_password.Text.ToString().Trim();


                DataTable dt_user = new DataTable();

                dt_user = BLL.LOGIN(obj);
                if (dt_user.Rows.Count > 0)
                {
                    Session["ZOYALUSER"] = dt_user;
                    BLL.ShowMessage(this, "YOUR ACCOUNT SUCCESSFULLY LOGIN");
                    //Session["CART"] = dt_product;
                  
                    





                }
                else
                {
                    BLL.ShowMessage(this, "incorrect email or password");
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
                obj.USER_EMAIL = txt_fogetpassword.Text;
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
            catch (Exception ex)
            {

            }
        }
    }
}