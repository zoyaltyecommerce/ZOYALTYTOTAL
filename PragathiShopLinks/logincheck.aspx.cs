using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZOYALTY.Code;

namespace Zoyal
{
    public partial class logincheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ZOYALUSER"] != null)
                {
                    
                    MAINCART_INSERT();
                    
                }
                else
                {

                }

            }

        }
        public void MAINCART_INSERT()
        {
            try
            {
                if (Session["ZOYALUSER"] != null)
                {
                    DataTable dt_insert_details = (DataTable)Session["DETAILS"];
                    DataTable dt_total = (DataTable)Session["CART"];
                    SHIPPINGADDRESS obj_add = new SHIPPINGADDRESS();
                    SHOPPINGTRANSACTION obj = new SHOPPINGTRANSACTION();
                    obj.TRANS_NAME = "";
                    obj.TRANS_TOTALAMOUNT = Convert.ToDecimal(dt_total.Rows[0]["GRAND_TOTAL"]);
                    obj.TRANS_COMMENTS = "";
                    obj.TRANS_PAYMENTTYPE = Convert.ToInt32(dt_insert_details.Rows[0]["PAYMENT_TYPE"].ToString());
                    obj.TRANS_NUMBER = "";
                    obj.TRANS_CREATEDBY = 1;
                    obj_add.ADD_FIRSTNAME = dt_insert_details.Rows[0]["FRIST_NAME"].ToString();
                    obj_add.ADD_EMAILID = dt_insert_details.Rows[0]["EMAIL_ID"].ToString();
                    obj_add.ADD_PRIMARYPHONE = dt_insert_details.Rows[0]["PRIMARYPHONE"].ToString();
                    obj_add.ADD_ALTERNATEPHONE = dt_insert_details.Rows[0]["ALTPHONE"].ToString();
                    obj_add.ADD_CITY = dt_insert_details.Rows[0]["CITY_id"].ToString();
                    obj_add.ADD_LOCATION = dt_insert_details.Rows[0]["LOCATION_id"].ToString();
                    obj_add.ADD_ADDRESS = dt_insert_details.Rows[0]["ADDRESS1"].ToString();
                    obj_add.ADD_ADDRESS2 = dt_insert_details.Rows[0]["ADDRESS2"].ToString();
                    obj_add.ADD_CREATEDBY = 1;
                    MAINCART obj_maincart = new MAINCART();
                    USERS obj_user = new USERS();
                    DataTable dt_main = (DataTable)Session["DETAILS"];

                    obj_maincart.MAINCART_USERID = Convert.ToInt32(hid_user_id.Value);
                    obj_maincart.MAINCART_COUPONID = Convert.ToInt32(dt_main.Rows[0]["COUPON_ID"].ToString());
                    obj_maincart.MAINCART_NOOFAUDIENCE = Convert.ToInt32(dt_main.Rows[0]["AUDIENCE"].ToString());
                    obj_maincart.MAINCART_STARTDATE = Convert.ToDateTime(dt_main.Rows[0]["STARTDATE"].ToString());
                    obj_maincart.MAINCART_ENDDATE = Convert.ToDateTime(dt_main.Rows[0]["ENDDATE"].ToString());
                    obj_maincart.MAINCART_NOOFDAYS = Convert.ToInt32(dt_main.Rows[0]["NOOFDAYS"].ToString());
                    obj_maincart.MAINCART_SUBTOTAL = Convert.ToDecimal(dt_main.Rows[0]["TOTAL_AMOUNT"].ToString());
                    obj_maincart.MAINCART_LOCATION_NAME = dt_main.Rows[0]["LOCATION_name"].ToString();
                    obj_maincart.MAINCART_CITY_NAME = dt_main.Rows[0]["CITY"].ToString();
                    // obj.MAINCART_SHIPPINGCOST=
                    obj_maincart.MAINCART_TOTALPRICE = Convert.ToDecimal(dt_total.Rows[0]["GRAND_TOTAL"]);
                    obj_maincart.MAINCART_DISCOUNTEDPRICE = Convert.ToDecimal(dt_main.Rows[0]["COUPON_DISCOUNT"].ToString());
                    obj_maincart.MAINCART_CREATEDBY = 1;
                    SHOPPINGCART obj_sp_cart = new SHOPPINGCART();
                
                   // obj_sp_cart.CART_MAINCARTID=
                    DataTable dt_trans = BLL.ExecuteQuery("EXEC Usp_shoppingtransaction @OPERATION='SHOPPING',@TRANS_NAME='" + obj.TRANS_NAME + "',@TRANS_TOTALAMOUNT='" + obj.TRANS_TOTALAMOUNT + "',@TRANS_COMMENTS='" + obj.TRANS_COMMENTS + "',@TRANS_STATUS=1,@trans_paymenttype=" + obj.TRANS_PAYMENTTYPE + ",@trans_number='" + obj.TRANS_NUMBER + "',@MAINCART_USERID='" + obj_maincart.MAINCART_USERID + "',@ADD_FIRSTNAME='" + obj_add.ADD_FIRSTNAME + "',@ADD_EMAILID='" + obj_add.ADD_EMAILID + "',@ADD_ADDRESS='" + obj_add.ADD_ADDRESS + "',@ADD_PRIMARYPHONE='" + obj_add.ADD_PRIMARYPHONE + "',@ADD_ALTERNATEPHONE='" + obj_add.ADD_ALTERNATEPHONE + "',@ADD_ADDRESS2='" + obj_add.ADD_ADDRESS2 + "',@ADD_STATUS=1,@ADD_CITY='" + obj_add.ADD_CITY + "',@ADD_LOCATION='" + obj_add.ADD_LOCATION + "',@MAINCART_COUPONID=" + obj_maincart.MAINCART_COUPONID + ",@MAINCART_NOOFAUDIENCE='" + obj_maincart.MAINCART_NOOFAUDIENCE + "',@MAINCART_STARTDATE='" + obj_maincart.MAINCART_STARTDATE + "',@MAINCART_ENDDATE='" + obj_maincart.MAINCART_ENDDATE + "',@MAINCART_NOOFDAYS='"+ obj_maincart.MAINCART_NOOFDAYS+ "',@MAINCART_SUBTOTAL='" + obj_maincart.MAINCART_SUBTOTAL + "',@MAINCART_LOCATION_NAME='"+obj_maincart.MAINCART_LOCATION_NAME + "',@MAINCART_CITY_NAME='"+obj_maincart.MAINCART_CITY_NAME + "',@MAINCART_SHIPPINGCOST='0.00',@MAINCART_DISCOUNTEDPRICE='" + obj_maincart.MAINCART_DISCOUNTEDPRICE + "',@MAINCART_TOTALPRICE='" + obj_maincart.MAINCART_TOTALPRICE + "',@MAINCART_STATUS=1");
                    {
                     
                        if (dt_trans.Rows.Count > 0)
                        {

                            //BLL.ShowMessage(this, "your successfully inserted");
                           
                            SHIPPING_CAT(dt_trans.Rows[0]["MAINCARTID"].ToString());
                        }
                        else
                        {
                            BLL.ShowMessage(this, "Error occured, contact administrator");
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }

        }
        public string SHIPPING_CAT(string CARTID)
        {
          
               MAINCART obj = new MAINCART();
            
                 DataTable dt_spcart = (DataTable)Session["CART"];
         
                string cart_items = "";
                for (int i = 0; i < dt_spcart.Rows.Count; i++)
                {
               
                DataTable dt_spcart1 = BLL.ExecuteQuery("EXEC USP_SHOPPINGCART @OPERATION='SHOPPINGCART',@CART_MAINCARTID='"+ CARTID + "',@CART_PRODUCTID='" + dt_spcart.Rows[i]["PRODUCT_ID"] + "',@CART_UNITPRICE='" + dt_spcart.Rows[i]["PRODUCT_PRICE"] + "',@CART_QUANTITY='" + dt_spcart.Rows[i]["PRODUCT_QTY"] + "',@CART_TOTALPRICE='" + dt_spcart.Rows[i]["PRODUCT_SUB_TOTAL"] + "',@CART_CREATEDBY=1,@CART_STATUS=1");
                 
                }
            Response.Redirect("index2.aspx");
            return cart_items;
           
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
                    hid_user_id.Value = dt_user.Rows[0]["USER_ID"].ToString();
                    //  BLL.ShowMessage(this, "YOUR ACCOUNT SUCCESSFULLY LOGIN");
                    MAINCART_INSERT();
                   
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
             USERS obj = new USERS();
                obj.USER_EMAILID = txt_fogetpassword.Text;
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
            catch (Exception ex)
            {

            }
        }
    }
}