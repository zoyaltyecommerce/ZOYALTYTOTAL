using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Zoyal.Code;

namespace Zoyal
{
    public partial class shop_cart_full : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                 
                    if (Request.QueryString["id"] != null)
                    {
                        string productid = Request.QueryString["id"].ToString();
                        DataTable dt_product = BLL.GETPRODUCTBYID(productid);
                        dt_product.Columns.Add("PRODUCT_QTY", typeof(System.Int32));
                        dt_product.Columns.Add("PRODUCT_SUB_TOTAL", typeof(System.Decimal));
                        dt_product.Columns.Add("GRAND_TOTAL", typeof(System.Decimal));
                        DataRow[] result1 = dt_product.Select("product_id = " + productid + "");
                        foreach (DataRow row in result1)
                        {
                            if (row["PRODUCT_ID"].ToString().Equals("" + productid + ""))
                            {
                                row["PRODUCT_QTY"] = 1;
                                row["PRODUCT_SUB_TOTAL"] = row["PRODUCT_PRICE"];

                            }
                        }



                        if (Session["CART"] == null)
                        {

                            Session["CART"] = dt_product;

                        }
                        else
                        {
                            DataTable dt_temp = (DataTable)Session["CART"];
                            bool sta = false;
                            for (int i = 0; i < dt_temp.Rows.Count; i++)
                            {
                                if (dt_temp.Rows[i]["PRODUCT_ID"].ToString() == Request.QueryString["id"])
                                {
                                    sta = true;
                                }
                            }
                            if (sta == false)
                            {

                                DataTable dt_allpro = (DataTable)Session["CART"];

                                dt_product.Merge(dt_allpro);
                                // dt_allpro.Merge(dt_product);
                                Session["CART"] = dt_product;

                            }
                        }

                    }
                    if (Session["CART"] != null)
                    {
                        DataTable dt_productall = (DataTable)Session["CART"];
                        string html = parsehtmlcart(dt_productall);
                        tb_cart.InnerHtml = html;
                    }
                    else
                    {

                    }
                    //LOAD CITYS

                    int obj =Convert.ToInt32( Session["CITY_ID"]);
                    DataTable dt_loc1 = BLL.GetSelectedCity(obj);
                    string selectcity = "<select id='selectcity'    class=\"formDropdown\" data-style=\"btn-success\">";

                        selectcity = selectcity + "<option value='" +dt_loc1.Rows[0]["CITY_ID"]+ "'  >" + dt_loc1.Rows[0]["CITY_NAME"].ToString() + "</option>";
                        select_city.InnerHtml = selectcity + "</select>";
                    hid_city.Value = dt_loc1.Rows[0]["CITY_NAME"].ToString();
                    hid_city_id.Value = dt_loc1.Rows[0]["CITY_ID"].ToString();
                    //LOAD LOCATION 
                
                        LOCATIONS loc = new LOCATIONS();

                        loc.LOCATION_CITYID =Convert.ToInt32(dt_loc1.Rows[0]["CITY_ID"]);
                        DataTable dt_location = BLL.GETLOCATION(loc);
                        string selectlocation = "<select id='select_loc' onchange='dropcity(); '    class=\"formDropdown\" data-style=\"btn-success\">";

                        selectlocation = selectlocation + "<option value='0' >Select Location</option>";
                        for (int i = 0; i < dt_location.Rows.Count; i++)
                        {

                            selectlocation = selectlocation + "<option value='"+dt_location.Rows[i]["LOCATION_ID"]+"' >" + dt_location.Rows[i]["location_name"].ToString() + "</option>";

                        }

                        select_location.InnerHtml = selectlocation + "</select>";
                        
     


                }
                catch (Exception exe)
                {

                }

                //  clearcontrol();
                // string startdate ="";
                //  string enddate = "";
                DataTable dt_details = (DataTable)Session["DETAILS"];

                if (Session["DETAILS"] != null)
                {


                    txt_name.Text = dt_details.Rows[0]["FRIST_NAME"].ToString();
                    txt_email.Text = dt_details.Rows[0]["EMAIL_ID"].ToString();
                    txt_phonenumber.Text = dt_details.Rows[0]["PRIMARYPHONE"].ToString();
                    txt_altphonenumber.Text = dt_details.Rows[0]["ALTPHONE"].ToString();
                    //  select_location.InnerHtml = dt_details.Rows[0]["LOCATION_name"].ToString();
                    select_location.InnerHtml = dt_details.Rows[0]["LOCATION_name"].ToString();

                    txt_addline1.Text = dt_details.Rows[0]["ADDRESS1"].ToString();
                    txt_addline2.Text = dt_details.Rows[0]["ADDRESS2"].ToString();

                    txt_promocode.Text = dt_details.Rows[0]["PROMOCODE"].ToString();
                    txt_audience.Text = dt_details.Rows[0]["AUDIENCE"].ToString();
                    //  startdate = dt_details.Rows[0]["STARTDATE"].ToString();
                    // enddate = dt_details.Rows[0]["ENDDATE"].ToString();
                    //  startdate = DateTime.Now.ToString("dd/MM/yyyy ");
                    //enddate= DateTime.Now.ToString("dd/MM/yyyy ");
                    txt_startdate.Text = dt_details.Rows[0]["STARTDATE"].ToString();
                    txt_enddate.Text = dt_details.Rows[0]["ENDDATE"].ToString();
                    

                }
            }
        }
        public string parsehtmlcart(DataTable dt_product)
        {
            string content = "";

            DataTable dt_price = (DataTable)Session["CART"];
            for (int i = 0; i < dt_product.Rows.Count; i++)
            {
                content = content + "<tr id='delete_product" + dt_product.Rows[i]["PRODUCT_ID"] + "' class='cart_table_item'><td class='product-thumbnail'><img alt='' width='80' src='" + dt_product.Rows[i]["PRODUCT_IMAGEURL"] + "'/></td><td class='product-name'><a href='shop-product-sidebar.html' >" + dt_product.Rows[i]["PRODUCT_IMAGETITLE"] + "</a></td><td class='product-price'><span id='price_" + dt_product.Rows[i]["PRODUCT_PRICE"] + "' class='amount'>" + dt_product.Rows[i]["PRODUCT_PRICE"] + "</span></td><td class='product-quantity'><div class='quantity'><input type = 'button' class='minus' value='-' onclick='qtyminus(" + dt_product.Rows[i]["product_id"] + "," + dt_product.Rows[i]["PRODUCT_PRICE"] + ");'> <input type='text' ID='txtqty_" + dt_product.Rows[i]["PRODUCT_ID"] + "' class='input-text qty text' title='Qty' name='quantity' ReadOnly='true' value='" + dt_product.Rows[i]["PRODUCT_QTY"] + "'  ><input type='button' ID='increement' class='plus' value='+' onclick='qtyincrees(" + dt_product.Rows[i]["PRODUCT_ID"] + "," + dt_product.Rows[i]["PRODUCT_PRICE"] + ");'></div></td><td class='product-subtotal'><span id='sub_amount_" + dt_product.Rows[i]["PRODUCT_ID"] + "' class='amount'>" + dt_product.Rows[i]["PRODUCT_SUB_TOTAL"] + "</span></td><td class='product-remove'><a title = 'Remove this item'  class='remove' onclick='delete_cartitem(" + dt_product.Rows[i]["PRODUCT_ID"] + ");' href='#'><i class='fa fa-times-circle'></i></a></td></tr>";

            }
            cart_total_footer.InnerHtml = dt_price.Compute("Sum(PRODUCT_SUB_TOTAL)", string.Empty).ToString();
            total_footer.InnerHtml = dt_price.Compute("Sum(PRODUCT_SUB_TOTAL)", string.Empty).ToString();

            int count = dt_price.Rows.Count;
            lbl_count_item.InnerHtml = "Your selection(" + count + "   items)";
            return content;
        }
        public void clearcontrol()
        {
            try
            {
                txt_name.Text = "";
                txt_email.Text = "";
                txt_phonenumber.Text = "";
                txt_altphonenumber.Text = "";
                // ddlcontry.SelectedIndex = 0;

                //txt_state.Text = "";
                //txt_city.Text = "";
                txt_addline1.Text = "";
                txt_addline2.Text = "";
            }
            catch (Exception ex)
            {

            }

        }
        protected void btn_procedchekout_Click(object sender, EventArgs e)
        {
            try
            {

                string startdate = Request.Form["startdate"];
                string enddate = Request.Form["enddate"];

                SHIPPINGADDRESS DA = new SHIPPINGADDRESS();


                DataTable dt_details = new DataTable("DETAILS");
                dt_details.Columns.Add("FRIST_NAME", typeof(string));
                dt_details.Columns.Add("EMAIL_ID", typeof(string));
                dt_details.Columns.Add("PRIMARYPHONE", typeof(string));
                dt_details.Columns.Add("ALTPHONE", typeof(string));
                dt_details.Columns.Add("CITY", typeof(string));
                dt_details.Columns.Add("CITY_id", typeof(string));
                dt_details.Columns.Add("LOCATION_id", typeof(string));
                dt_details.Columns.Add("LOCATION_name", typeof(string));
                dt_details.Columns.Add("ADDRESS1", typeof(string));
                dt_details.Columns.Add("ADDRESS2", typeof(string));
                dt_details.Columns.Add("PROMOCODE", typeof(string));
                dt_details.Columns.Add("AUDIENCE", typeof(string));
                dt_details.Columns.Add("STARTDATE", typeof(string));
                dt_details.Columns.Add("ENDDATE", typeof(string));

                DataRow column = dt_details.NewRow();
                dt_details.Rows.Add(column);
                column["FRIST_NAME"] = txt_name.Text;
                column["EMAIL_ID"] = txt_email.Text;
                column["PRIMARYPHONE"] = txt_phonenumber.Text;
                column["ALTPHONE"] = txt_altphonenumber.Text;
                column["CITY"] = hid_city.Value;
                column["CITY_id"] = hid_city_id.Value;
                column["LOCATION_id"] = hid_location.Value;
                column["LOCATION_name"] = hid_location_name.Value;
                column["ADDRESS1"] = txt_addline1.Text;
                column["ADDRESS2"] = txt_addline2.Text;
                column["PROMOCODE"] = hid_coupon.Value;
                column["AUDIENCE"] = txt_audience.Text;
                column["STARTDATE"] = txt_startdate.Text;
                column["ENDDATE"] = txt_enddate.Text;
                Session["DETAILS"] = dt_details;




                if (Session["ZOYALUSER"] != null)
                {




                    //DA.ADD_FIRSTNAME = txt_name.Text;
                    //DA.ADD_ALTERNATEPHONE = DD_EMAILID = txt_email.Text;
                    //DA.ADD_PRIMARYPHONE = txt_phonenumber.Text;
                    //DA.Atxt_altphonenumber.Text;
                    //DA.ADD_COUNTRY = ddlcontry.SelectedItem.ToString();
                    //// DA.ADD_STATE = txt_state.Text;
                    ////  DA.ADD_CITY = txt_city.Text;
                    //DA.ADD_ADDRESS = txt_addline1.Text;
                    //DA.ADD_ADDRESS2 = txt_addline2.Text;
                    //DA.ADD_CREATEDBY = 1;
                    // string[] sessionData = { txt_name.Text, txt_email.Text, txt_phonenumber.Text, txt_altphonenumber.Text, ddlcontry.Text, select_city.InnerText, select_location.InnerText, txt_altphonenumber.Text, txt_addline2.Text };
                    // Session["CART"] = sessionData;

                    //        bool status = BLL.INSERTADDRESS(DA);
                    //    if (status == true)
                    //    {
                    //        BLL.ShowMessage(this, "your successfully inserted");
                    //    // clearcontrol();

                    //    }
                    //    else
                    //    {
                    //        BLL.ShowMessage(this, "contact to admin");
                    //    }
                }
                else
                {
                    Response.Redirect("logincheck.aspx");

                }

            }
            catch (Exception exe)
            {

            }
        }

        protected void btn_conshaping_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("index.aspx");
            }
            catch (Exception ex)
            {

            }
        }

        [WebMethod]
        public static string delete_cartitemweb(int id)
        {

            DataTable dt_cart = (DataTable)HttpContext.Current.Session["CART"];


            string productid = id.ToString();

            DataRow[] result = dt_cart.Select("PRODUCT_ID = " + id + "");
            foreach (DataRow row in result)
            {
                if (row["PRODUCT_ID"].ToString().Equals("" + productid + ""))
                {
                    dt_cart.Rows.Remove(row);
                }
            }

            HttpContext.Current.Session["CART"] = dt_cart;
            object delamount = dt_cart.Compute("Sum(PRODUCT_SUB_TOTAL)", string.Empty);

            int count = dt_cart.Rows.Count;


            if (dt_cart.Rows.Count > 0)
            {
                HttpContext.Current.Session["CART"] = dt_cart;
            }
            else
            {
                HttpContext.Current.Session["CART"] = null;

            }
            
            // return count.ToString();
            return delamount.ToString() + "," + count.ToString();



        }
        [WebMethod]
        public static string cartprice(decimal result, int id, int QNANTITY)
        {
            DataTable dt_price = (DataTable)HttpContext.Current.Session["CART"];

            string productid = id.ToString();

            DataRow[] result1 = dt_price.Select("product_id = " + id + "");
            foreach (DataRow row in result1)
            {
                if (row["PRODUCT_ID"].ToString().Equals("" + productid + ""))
                {

                    row["PRODUCT_SUB_TOTAL"] = result;
                    row["PRODUCT_QTY"] = QNANTITY;


                }
            }
            object GRAND_TOTAL = dt_price.Compute("Sum(PRODUCT_SUB_TOTAL)", string.Empty);


           

            return GRAND_TOTAL.ToString();


        }

        [WebMethod]
        public static string dropcityselect(string loc)
        {
            HttpContext.Current.Session["location"] = loc;


            return "";


        }
        [WebMethod]

        public static string coupon(string code, string price)

        {
            string garnd_total = price;
            string message = "";
            if (price != "00.00")
            {
                HttpContext.Current.Session["price"] = price;



                COUPONS obj1 = new COUPONS();



                obj1.COUPON_NAME = code;
                decimal price1 = decimal.Parse(price);

                DataTable dt_coupon = BLL.GETCOUPON(obj1);
                if (dt_coupon.Rows.Count != 0)
                {


                    foreach (DataRow row in dt_coupon.Rows)
                    {
                        string coupon_price1 = row["COUPON_PRICE"].ToString();

                        if (coupon_price1 != "")
                        {
                            string coupon_price = row["COUPON_PRICE"].ToString();
                            decimal coup_price = decimal.Parse(coupon_price);
                            decimal total1 = price1 - coup_price;
                            garnd_total = total1.ToString();
                            message = "Coupon Applied";
                        }
                        else
                        {
                            string coupon_discount = row["COUPON_DISCOUNT"].ToString();
                            decimal D = decimal.Parse(coupon_discount);
                            decimal D1 = D / 100;
                            decimal D2 = D1 * price1;

                            decimal totalprice = price1 - D2;

                            garnd_total = totalprice.ToString();
                            message = "Coupon Applied";
                        }

                    }
                }

                else
                {

                    message = "Inavlid Coupon ";

                }
            }

            else
            {
                message = "coupon can't be applied";
            }
            return garnd_total + ',' + message;
        }
        [WebMethod]
        public static string remvoie_coupon(string rmovie)
        {
            rmovie.Remove(0);
            string price = HttpContext.Current.Session["price"].ToString();
            string message = "";
            return price + "," + message;
        }
    }
}

