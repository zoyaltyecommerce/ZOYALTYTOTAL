using System.Collections.Generic;
using System.Web.Security;
using Microsoft.Win32;
using System.Security.Cryptography;
using System;
using System.Text;
using System.Web.UI;
using System.Web;
using System.Data;
using System.Text.RegularExpressions;
using System.Diagnostics;
using System.Configuration;
using System.Data.SqlClient;
using ZOYALTY.Code;
namespace ZOYALTY.Code
{
    public class BLL
    {
        #region Messages

        public const string msg_Saved = "Information saved successfully";
        public const string msg_Updated = "Information updated successfully";
        public const string msg_UnSaved = "Information not saved";
        public const string msg_NotUpdated = "Information not Updated";
        public const string msg_ImageNotUploaded = "Please Upload Image";
        public const string msg_ImageRestrict = "Only .jpeg and .png files are allowed!";

        public string MyProperty { get; set; }

        #endregion

        #region crypto  Methods to Encrypt and Decrypt

        static string myKey = "3d5900ae-111a-45be-96b3-d9e4606ca793";
        static TripleDESCryptoServiceProvider cryptDES3 = new TripleDESCryptoServiceProvider();
        static MD5CryptoServiceProvider cryptMD5Hash = new MD5CryptoServiceProvider();

        internal static string Decrypt(string myString)
        {
            cryptDES3.Key = cryptMD5Hash.ComputeHash(ASCIIEncoding.ASCII.GetBytes(myKey));
            cryptDES3.Mode = CipherMode.ECB;
            ICryptoTransform desdencrypt = cryptDES3.CreateDecryptor();
            byte[] buff = Convert.FromBase64String(myString);
            return ASCIIEncoding.ASCII.GetString(desdencrypt.TransformFinalBlock(buff, 0, buff.Length));
        }

        internal static string Encrypt(string myString)
        {
            cryptDES3.Key = cryptMD5Hash.ComputeHash(ASCIIEncoding.ASCII.GetBytes(myKey));
            cryptDES3.Mode = CipherMode.ECB;
            ICryptoTransform desdencrypt = cryptDES3.CreateEncryptor();
            object MyASCIIEncoding = new ASCIIEncoding();
            byte[] buff = ASCIIEncoding.ASCII.GetBytes(myString);
            return Convert.ToBase64String(desdencrypt.TransformFinalBlock(buff, 0, buff.Length));
        }

        #endregion

        internal static DataTable ExecuteQuery(string Query)
        {
            return Dal.ExecuteQuery(Query);
        }


        internal static bool ExecuteNonQuery(string Query)
        {
            return Dal.ExecuteNonQuery(Query);
        }
        internal static void ShowMessage(Control ctrl, string Msg)
        {
            ScriptManager.RegisterStartupScript(ctrl, ctrl.GetType(), Guid.NewGuid().ToString(), "alert('" + Msg + "');", true);
        }

        internal static string ReplaceQuote(string str)
        {
            return str.Replace("'", "''");
        }

        internal static bool INSERTCONTACT(CONTACTUS obj)
        {
            bool status = false;
            status = BLL.ExecuteNonQuery("EXEC USP_CONTACTUS @CONTACT_NAME='" + obj.CONTACT_NAME + "',@CONTACT_EMAIL='" + obj.CONTACT_EMAIL + "',@CONTACT_SUBJECT='" + obj.CONTACT_SUBJECT + "',@CONTACT_PHONENUMBER='" + obj.CONTACT_PHONENUMBER + "',@CONTACT_MESSAGE='" + obj.CONTACT_MESSAGE + "',@CONTACT_CREATEDBY=1,@CONTACT_MODIFIEDBY=1,@OPERATION='INSERTCONTACT'");
            return status;
        }
        internal static DataTable CONTACT_EMAIL(CONTACTUS obj)
        {
            DataTable dt = BLL.ExecuteQuery("EXEC USP_CONTACTUS @CONTACT_EMAIL='" + obj.CONTACT_EMAIL + "',@OPERATION='CONTACT_EMAIL''");
            return dt;
        }

        internal static bool INSERTPARTNER(PARTNERS obj)
        {
            bool status = false;
            status = BLL.ExecuteNonQuery("EXEC USP_PARTNERS @PARTNER_NAME='" + obj.PARTNER_NAME + "',@PARTNER_EMAIL='" + obj.PARTNER_EMAIL + "',@PARTNER_PHONENUMBER='" + obj.PARTNER_PHONENUMBER + "',@PARTNER_SUBJECT='" + obj.PARTNER_SUBJECT + "',@PARTNER_MESSAGE='" + obj.PARTNER_MESSAGE + "',@PARTNER_CREATEDBY=1,@OPERATION='INSERTPARTNER'");
            return status;
        }
        internal static DataTable PARTNERE_MAIL(PARTNERS obj)
        {
            DataTable dt = BLL.ExecuteQuery("EXEC USP_PARTNERS @PARTNER_EMAIL='" + obj.PARTNER_EMAIL + "',@OPERATION='PARTNERE_MAIL''");
                return dt;
        }
        internal static DataTable INSERTUSER(USERS obj)
        {
           
          DataTable  dt = BLL.ExecuteQuery("EXEC USP_USERLOGIN @USER_FIRSTNAME='" + obj.USER_FIRSTNAME + "',@USER_PHONE='"+obj.USER_PHONE+ "',@USER_EMAILID='" + obj.USER_EMAILID + "',@USER_USERNAME='" + obj.USER_USERNAME + "',@USER_PASSWORD='" + obj.USER_PASSWORD + "',@USER_MODIFIEDBY='" + obj.USER_MODIFIEDBY + "',@USER_STATUS ='" + obj.USER_STATUS + "',@USER_LOGINTYPE='" + obj.USER_LOGINTYPE + "',@USER_CREATEDBY=1,@OPERATION='INSERTUSER'");
            return dt;
        }

        //FUNCTION TO CHECK USER EXISIST ALREADY OR NOT
        internal static DataTable checkusers(USERS obj)
        {
            DataTable dt = new DataTable();
            try
            {
                dt = BLL.ExecuteQuery("EXEC USP_USERLOGIN @OPERATION='CHECKEMAIL',@USER_EMAILID='"+ obj.USER_EMAILID +"'");
            }
            catch(Exception ex)
            {

            }
            return dt;
        }

        internal static DataTable LOGIN(USERS obj)
        {
            
           DataTable   dt = BLL.ExecuteQuery("EXEC USP_USERLOGIN @OPERATION='LOGIN',@USER_EMAILID='"+ obj.USER_EMAILID + "',@USER_PASSWORD='"+ BLL.Encrypt( obj.USER_PASSWORD) +"'");
            return dt;
        }

        internal static DataTable FORGETPWD(USERS obj)
        {

            DataTable dt = BLL.ExecuteQuery("EXEC USP_USERLOGIN @OPERATION='FORGETPWD',@USER_EMAILID='" + obj.USER_EMAILID + "'");
                return dt;
        }
        //internal static bool InsertShopcart(shop_cart_full obj)
        //{
        //    bool status = false;
        //    status = BLL.ExecuteNonQuery("EXEC USP_CONTACTUS @CONTACT_NAME='" + obj.CONTACT_NAME + "',@CONTACT_EMAIL='" + obj.CONTACT_EMAIL + "',@CONTACT_SUBJECT='" + obj.CONTACT_SUBJECT + "',@CONTACT_PHONENUMBER='" + obj.CONTACT_PHONENUMBER + "',@CONTACT_MESSAGE='" + obj.CONTACT_MESSAGE + "',@CONTACT_CREATEDBY=1,@CONTACT_MODIFIEDBY=1,@OPERATION='INSERTCONTACT'");
        //    return status;
        //}


        internal static bool winderinsert(ADMINLOGINS obj)
        {
            bool status = false;
            status = BLL.ExecuteNonQuery("EXEC WINDER_INSERT @USER_NAME='" + obj.USER_NAME + "',@USER_EMAIL='" + obj.USER_EMAIL + "',@USER_PASSWORD='" + obj.USER_PASSWORD + "',@USER_CREATEDBY='" + obj.USER_CREATEDBY + "',@USER_MODIFIEDBY='" + obj.USER_MODIFIEDBY + "',@USER_ADMIN='" + obj.USER_ADMIN + "',@USER_LOCATIONID='" + obj.USER_LOCATIONID + "',@USER_STATUSID='" + obj.USER_STATUSID + "',@USER_ORGANIZATIONNAME='"+obj.USER_ORGANIZATIONNAME+"'");
            return status;
        }
        internal static DataTable ADMINLOGIN(ADMINLOGINS obj)
        {
            DataTable dt = BLL.ExecuteQuery("EXEC USP_ADMINLOGINS @OPERATION='ADMINLOGIN',@USER_EMAIL='"+obj.USER_EMAIL+"',@USER_PASSWORD='"+obj.USER_PASSWORD+"'");
            return dt;
                
        }

        internal static DataTable ADMINFORGETPWD(ADMINLOGINS obj)
        {
            DataTable dt = BLL.ExecuteQuery("EXEC USP_ADMINLOGINS @OPERATION='ADMINFORGETPWD',@USER_EMAIL='" + obj.USER_EMAIL + "'");
            return dt;
        }
        //internal static DataTable Getlocations()
        //{
        //    DataTable DT = BLL.ExecuteQuery("EXEC USP_GETTINGLOCATIONS @OPERATION='GETLOCATIONS'");
        //    return DT;
        //}
        internal static DataTable GETCITIES(cities obj)
        {
            DataTable DT = BLL.ExecuteQuery("EXEC USP_CITIES @OPERATION='GETCITIES'");
            return DT;
        }

        internal static DataTable GetSelectedCity(cities obj)
        {
            DataTable DT = BLL.ExecuteQuery("EXEC USP_CITIES @OPERATION='CITYCHANGE',@city_id="+ obj.city_id +"");
            return DT;
        }
        internal static DataTable GetSelectedCity(int obj)
        {
            DataTable DT = BLL.ExecuteQuery("EXEC USP_CITIES @OPERATION='CITYCHANGE',@city_id=" + obj+ "");
            return DT;
        }
        internal static DataTable GETLOCATION(LOCATIONS obj)
        {
  
            DataTable DT = BLL.ExecuteQuery("EXEC USP_GETTINGLOCATIONS @OPERATION='GETLOCATION',@LOCATION_CITYID='"+obj.LOCATION_CITYID+"'");
            return DT;
        }
      
        internal static DataTable GETALLPRODUCTS()
        {
          
            DataTable dt = BLL.ExecuteQuery("EXEC USP_PRODUCTS @OPERATION='GETALLPRODUCTS' ");
            return dt;
        }
        internal static DataTable GETSELECTPRODUCTS(int cityid)
        {
            PRODUCT obj = new PRODUCT();
            DataTable dt = BLL.ExecuteQuery("EXEC USP_PRODUCTS @OPERATION='GETSELECTPRODUCTS',@PRODUCT_CITYID='" + cityid + "' ");
            return dt;
        }
        
        internal static DataTable GETPRODUCTBYID(string PRODUCTID)
        {
            DataTable dt = BLL.ExecuteQuery("EXEC USP_PRODUCTS @OPERATION='GETPRODUCTBYID',@PRODUCT_ID='"+ PRODUCTID +"'");
            return dt;
        }
        //internal static DataTable DELETE_CARTITEM(string PRODUCTID)
        //{
        //    DataTable dt = BLL.ExecuteQuery("EXEC USP_PRODUCT @OPERATION='DELETE_CARTITEM',@PRODUCT_ID='" + PRODUCTID + "'");
        //    return dt;
        //}

        //internal static DataTable GETPRODUCT_CART(string PRODUCTID)
        //{
        //    DataTable dt = BLL.ExecuteQuery("EXEC USP_PRODUCTS @OPERATION='GETPRODUCT_CART',@PRODUCT_ID='" + PRODUCTID + "'");
        //    return dt;
        //}
        internal static bool INSERTADDRESS(SHIPPINGADDRESS obj)
        {
            bool status = false;
            status = BLL.ExecuteNonQuery("EXEC USP_SHIPPINGADDRESS @OPERATION='INSERTCART',@ADD_FIRSTNAME='" + obj.ADD_FIRSTNAME + "',@ADD_EMAILID='" + obj.ADD_EMAILID + "',@ADD_PRIMARYPHONE='" + obj.ADD_PRIMARYPHONE + "',@ADD_ALTERNATEPHONE='" + obj.ADD_ALTERNATEPHONE + "',@ADD_COUNTRY='" + obj.ADD_COUNTRY + "',@ADD_CITY='" + obj.ADD_CITY + "',@ADD_STATE='" + obj.ADD_STATE + "',@ADD_ADDRESS2='" + obj.ADD_ADDRESS + "',@ADD_ADDRESS1='" + obj.ADD_ADDRESS2 + "',@ADD_CREATEDBY =1");
            return status;
        }
        internal static DataTable GETCOUPON(COUPONS obj)
        {
            DataTable dt = BLL.ExecuteQuery("EXEC USP_COUPON @OPERATION ='COUPON_PRICE',@COUPON_NAME='" + obj.COUPON_NAME + "'");
            return dt;
        }

        internal static DataTable GETVENDORS()
        {
            DataTable dt_vendors = BLL.ExecuteQuery("EXEC USP_VENDORS @OPERATION ='GETVENDORS'");
            return dt_vendors;
        }

        internal static DataTable GETVENDORBYID(int id)
        {
            DataTable dt_vendors = BLL.ExecuteQuery("EXEC USP_VENDORS @OPERATION ='SELECTVENDORBYID',@USER_ID="+ id +"");
            return dt_vendors;
        }

        internal static bool UPDATEVENDOR(USERS obj_user)
        {
            bool status = false;
            status = BLL.ExecuteNonQuery("EXEC USP_VENDORS @OPERATION ='UPDATINGVENDOR',@USER_ID=" + obj_user.USER_ID + ",@USER_FIRSTNAME='"+ obj_user.USER_FIRSTNAME + "',@USER_EMAILID='"+ obj_user.USER_EMAILID + "',@USER_PASSWORD='"+ obj_user.USER_PASSWORD + "',@USER_PHONE='"+ obj_user.USER_PHONE +"'");
            return status;
        }

        internal static bool SAVEVENDOR(USERS obj_user)
        {
            bool status = false;
            status = BLL.ExecuteNonQuery("EXEC USP_VENDORS @OPERATION ='SAVEVENDOR' ,@USER_FIRSTNAME='" + obj_user.USER_FIRSTNAME + "',@USER_EMAILID='" + obj_user.USER_EMAILID + "',@USER_PASSWORD='" + obj_user.USER_PASSWORD + "',@USER_PHONE='" + obj_user.USER_PHONE + "'");
            return status;
        }

        internal static bool DELETEVENDOR(int id)
        {
            bool status = false;
            status = BLL.ExecuteNonQuery("EXEC USP_VENDORS @OPERATION ='DELETEVENDOR',@USER_ID=" + id + "");
            return status;
        }



    }
}