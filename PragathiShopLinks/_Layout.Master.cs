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
using System.Web.UI.HtmlControls;
using System.Web.Services;

namespace Zoyal
{
    public partial class _Layout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    if (Session["ZOYALUSER"] != null)
                    {
                        lbllogin.Visible = false;
                        myaccount.Visible = true;
                    }
                       // clearcontrols();
                        cart_visible();
                    //loading locations
                    cities da = new cities();
                    DataTable dt_price = (DataTable)Session["CART"];
                    DataTable dt_loc = new DataTable();
                    if (Request.QueryString["city_id"]==null && Session["CITY_ID"] == null)
                    {
                       
                            dt_loc = BLL.GETCITIES(da);
                            a_firstcity.InnerHtml = "HYDERABAD<span class=\"caret\"></span>";
                        Session["CITY_ID"] = null;
                        



                    }
                    else
                    {
                        if(Request.QueryString["city_id"] != null)
                        {
                            da.city_id = Convert.ToInt32(Request.QueryString["city_id"].ToString());
                            dt_loc = BLL.GetSelectedCity(da);
                            a_firstcity.InnerHtml = "" + dt_loc.Rows[0]["CITY_NAME"] + "<span class=\"caret\"></span>";
                            Session["CITY_ID"] = dt_loc.Rows[0]["CITY_ID"];
                        }
                        else if(Session["CITY_ID"]!=null)
                        {
                            da.city_id = Convert.ToInt32(Session["CITY_ID"].ToString());
                            dt_loc = BLL.GetSelectedCity(da);
                            a_firstcity.InnerHtml = "" + dt_loc.Rows[0]["CITY_NAME"] + "<span class=\"caret\"></span>";

                        }
                        else
                        {
                            dt_loc = BLL.GETCITIES(da);
                            a_firstcity.InnerHtml = "HYDERABAD<span class=\"caret\"></span>";
                            Session["CITY_ID"] = null;
                        }

                        
                      
                    }
                   

                

                    string locations = "";
                    for (int i = 0; i < dt_loc.Rows.Count; i++)
                    {
                        locations = locations + "<li ><a href='../index.aspx?city_id=" + dt_loc.Rows[i]["CITY_ID"] + "'>" + dt_loc.Rows[i]["CITY_NAME"].ToString() + "</a></li>";
                        
                    }
                    ul_locations.InnerHtml = locations;
                  //  object GRAND_TOTAL = dt_price.Compute("Sum(PRODUCT_SUB_TOTAL)", string.Empty);
                    sub_amount_cart.InnerHtml = dt_price.Compute("Sum(PRODUCT_SUB_TOTAL)", string.Empty).ToString();

                }
                catch (Exception exe)
                {

                }


                // Page.Master.FindControl("abt.ud");
                //abt_us.Style.Add("red",Visible);
                //  abt_us.Attributes.Add("class", "active");

                if (Request.QueryString["id"] != null)
                {
                    string productid = Request.QueryString["id"].ToString();
                    DataTable dt_productcart = BLL.GETPRODUCTBYID(productid);


                    if (Session["CART"] != null)
                    {
                        DataTable dt_productall = (DataTable)Session["CART"];
                        string html = parsehtmlcart(dt_productall);
                        CART_BAG.InnerHtml = html;
                    }
                    else
                    {

                    }
                }
               
            }
          
}
      

        public  void  cart_visible()
        {
            try
            {

              //   bool status=false;
                DataTable dt_productall = (DataTable)Session["CART"];

                if (dt_productall == null)

                {
                 
                    cart_head.Visible = false;
                    cart_hed1.Visible = true;
                    btn_viewcart.Visible = false;
                    btn_checkout.Visible = false;
                    ul_subtotal.Visible = false;
                }
                else
                {
                   
                   
                    cart_head.Visible = true;
                            cart_hed1.Visible = false;
                         btn_viewcart.Visible = true;
                         btn_checkout.Visible = true;
                         string html = parsehtmlcart(dt_productall);
                        CART_BAG.InnerHtml = html;
                        ul_subtotal.Visible = true;
                }

                
            }
            catch (Exception ex)
            {

            }
        }


        public string parsehtmlcart(DataTable dt_productcart)
        {
            DataTable dt =  (DataTable)Session["CART"];
            string content = "";
            for (int i = 0; i < dt_productcart.Rows.Count; i++)
            {
               content = content + "<li id='DELETE_CART" + dt_productcart.Rows[i]["PRODUCT_ID"] + "' class='product'><div class='product-thumb-info'><a href='#' id='delete_cart' class='product-remove' onclick='delete_cartitem(" + dt_productcart.Rows[i]["PRODUCT_ID"] + ");' ><i class='fa fa-trash-o'></i></a><div class='product-thumb-info-image'><a href='shop-product-detail1.html'><img alt='' width='60' src='" + dt_productcart.Rows[i]["PRODUCT_IMAGEURL"] + "'></a></div> <div class='product-thumb-info-content'><h4><a href='shop-product-detail2.html'>" + dt_productcart.Rows[i]["PRODUCT_IMAGETITLE"] + "</a></h4><span class='item-cat'><small><a href='#'>" + dt_productcart.Rows[i]["PRODUCT_NAME"] + "</a></small></span><span id='cart_price" + dt_productcart.Rows[i]["PRODUCT_ID"] + "' class='price'>" + dt_productcart.Rows[i]["PRODUCT_SUB_TOTAL"] + "</span></div></div></li>";
            
            }
            int count= dt.Rows.Count;
            cart_count.InnerHtml = count.ToString();
            return content;
            
        }
        public string cart(DataTable dtcart)
        {

            string cartproduct = "";
            for (int i = 0; i <= dtcart.Rows.Count; i++)
            {

                string productid = Request.QueryString["id"].ToString();
                //DataTable dt_productcart = BLL.GETPRODUCTBYID(productid);
                if (Request.QueryString["id"] == productid)
                {
                    if (dtcart.Rows[i]["PRODUCT_ID"].ToString() == productid)
                    {
                        cartproduct = cartproduct + "<li class='product'><div class='product-thumb-info'><a href='#' id='delete_cart' onclick='cartitem_delete();' class='product-remove'><i class='fa fa-trash-o'></i></a><div class='product-thumb-info-image'><a href='shop-product-detail1.html'><img alt='' width='60' src='" + dtcart.Rows[i]["PRODUCT_IMAGEURL"] + "'></a></div> <div class='product-thumb-info-content'><h4><a href='shop-product-detail2.html'>" + dtcart.Rows[i]["PRODUCT_IMAGETITLE"] + "</a></h4><span class='item-cat'><small><a href='#'>" + dtcart.Rows[i]["PRODUCT_NAME"] + "</a></small></span><span class='price'>" + dtcart.Rows[i]["PRODUCT_PRICE"] + "</span></div></div></li>";
                       
                    }

                }
            }
            return cartproduct;

        }
      
        public void clearcontrols()
        {
            try
            {
                txt_fullname.Text = "";
                txt_email.Text = "";
                txt_pwd.Text = "";
                txt_phonenumber.Text = "";

            }
            catch (Exception exe)
            {


            }
        }
        protected void btn_signup_Click(object sender, EventArgs e)
        {
            try
            {
                USERS obj = new USERS();
                obj.USER_FIRSTNAME = BLL.ReplaceQuote(txt_fullname.Text);
                obj.USER_EMAILID = BLL.ReplaceQuote(txt_email.Text);
                obj.USER_USERNAME = BLL.ReplaceQuote(txt_email.Text);
                obj.USER_PASSWORD = BLL.Encrypt(BLL.ReplaceQuote(txt_pwd.Text));
                obj.USER_PHONE = BLL.ReplaceQuote(txt_phonenumber.Text);
                obj.USER_CREATEDBY = 1;
                DataTable dt = BLL.checkusers(obj);
                DataTable dt_user = new DataTable();
                if (dt.Rows.Count == 0)
                {
                    dt_user = BLL.INSERTUSER(obj);
                    if (dt_user.Rows.Count > 0)
                    {
                        BLL.ShowMessage(this, "YOUR ACCOUNT SUCCESSFULLY CREATED");
                        clearcontrols();
                    }
                    else
                    {
                        BLL.ShowMessage(this, "contact admin");
                    }
                }
                else
                {
                    lbl_emailcheck.Visible = true;
                }


                MailMessage mailmessage = new MailMessage();
                mailmessage.IsBodyHtml = true;

                SmtpClient client = new SmtpClient("linkskart.com");
                client.Credentials = new System.Net.NetworkCredential("info@linkskart.com", ".santhu143");
                mailmessage.From = new System.Net.Mail.MailAddress("info@linkskart.com");
                // mailmessage.From = new MailAddress("santhosh@pragatipadh.com");
                mailmessage.To.Add(dt_user.Rows[0]["USER_EMAILID"].ToString());
                // mailmessage.CC.Add(emailid);
                mailmessage.Subject = "your account is created";
                mailmessage.Body = "<p> Dear " + dt_user.Rows[0]["USER_EMAILID"].ToString() + " " + ",<br /> <br />Your account is successfully created " + " please <a href=\"http://www.linkskart.com\">Click Here</a> to visit LINKSKART.</p></div>";
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

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Session["ZOYALUSER"] = null;

            USERS obj = new USERS();
            obj.USER_EMAILID = txt_username.Text.ToString().Trim();
            obj.USER_PASSWORD = txt_password.Text.ToString().Trim();


            DataTable dt_user = new DataTable();

            dt_user = BLL.LOGIN(obj);
            if (dt_user.Rows.Count > 0)
            {
                Session["ZOYALUSER"] = dt_user;
                //BLL.ShowMessage(this, "YOUR ACCOUNT SUCCESSFULLY LOGIN");
                clearcontrols();
                lbllogin.Visible = false;
                myaccount.Visible = true;


            }
            else
            {
                BLL.ShowMessage(this, "incorrect email or password");
            }

        }

        protected void btn_forget_Click(object sender, EventArgs e)
        {

            USERS obj = new USERS();
            obj.USER_EMAILID = txt_forgetemail.Text;
            MailMessage mailmessage = new MailMessage();
            DataTable dt_user = BLL.FORGETPWD(obj);
            mailmessage.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("linkskart.com");
            client.Credentials = new System.Net.NetworkCredential("info@linkskart.com", ".santhu143");
            mailmessage.From = new System.Net.Mail.MailAddress("info@linkskart.com");
            // mailmessage.From = new MailAddress("santhosh@pragatipadh.com");
            mailmessage.To.Add(dt_user.Rows[0]["USER_EMAILID"].ToString());
            // mailmessage.CC.Add(emailid);
            mailmessage.Subject = "Password request";
            mailmessage.Body = "<p> Dear " + dt_user.Rows[0]["USER_FIRSTNAME"].ToString() + ",<br /> <br />You password is " + BLL.Decrypt(dt_user.Rows[0]["USER_PASSWORD"].ToString()) + " please <a href=\"http://www.linkskart.com\">Click Here</a> to visit LINKSKART.</p></div>";
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

        protected void link_logout_Click(object sender, EventArgs e)
        {
            try
            {
                Session["ZOYALUSER"] = null;
                lbllogin.Visible = true;
                myaccount.Visible = false;

            }
            catch (Exception ex)
            {

            }
        }


        protected void cartitem_delete(string name)
        {

            string productid = Request.QueryString["id"].ToString();
            DataTable dt_productcart = BLL.GETPRODUCTBYID(productid);

            DataTable dt_productall = (DataTable)Session["CART"];
            Session["CART"] = productid;
            Session.Remove("CART");
        }

       [WebMethod]
       
        public static string cartitem_delete()
        {
            string name = "";
            return "Hello " + name + Environment.NewLine + "The Current Time is: "
                   + DateTime.Now.ToString();
            

 
        }

        protected void btn_viewcart_Click(object sender, EventArgs e)
        {
            Response.Redirect("shop-cart-full.aspx");
        }
        [WebMethod]
        protected static string product_change(int x)
        {
            //DataTable dt_img = BLL.GETALLPRODUCTS();
           
            //PRODUCT dt = new PRODUCT();
            //dt.PRODUCT_CITYID =x;
            //if (dt_img.Rows.Count > 0)
            //{
            //    string images = "";
            //    for (int i = 0; i < dt_img.Rows.Count; i++)
            //    {

            //        images = images + " <div class='col-md-3 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'><span class='product-thumb-info-act'><a href='shop-cart-full.aspx?id=" + dt_img.Rows[i]["PRODUCT_ID"] + "' class='add-to-cart-product' > <span><i class='fa fa-shopping-cart'></i></span></a> </span><img alt='' class='imaheight' class='img-responsive' src='" + dt_img.Rows[i]["PRODUCT_IMAGEURL"].ToString() + "'></div><div class='product-thumb-info-content'><span class='price pull-right'>" + dt_img.Rows[i]["PRODUCT_PRICE"] + "/Rs</span><h4><a href='shop-product-detail2.html'>" + dt_img.Rows[i]["PRODUCT_IMAGETITLE"].ToString() + "</a></h4> <span class='item-cat'><small><a href='#'>" + dt_img.Rows[i]["PRODUCT_NAME"].ToString() + " </a></small></span></div></div></div></div>";
            //    }
            //    // ClientScript.RegisterStartupScript(GetType(), "hiya", "document.getElementById('owl-product-slide').innerHTML =\""+ images +"\"", true);
            //    //  product_img.InnerHtml = images;
            //    // }
            //    return images.ToString();
            return "";
            }
        }

}