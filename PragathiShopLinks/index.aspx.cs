using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZOYALTY.Code;

namespace Zoyal
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                try
                {



                    PRODUCT daa = new PRODUCT();

                    if (Request.QueryString["city_id"] == null && Session["CITY_ID"]==null)
                    {
                        DataTable dt_img = BLL.GETALLPRODUCTS();
                        if (dt_img.Rows.Count > 0)
                        {
                            string images = "";
                            for (int i = 0; i < dt_img.Rows.Count; i++)
                            {
                                images = images + " <div class='col-md-3 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'><span class='product-thumb-info-act'><a href='shop-cart-full.aspx?id=" + dt_img.Rows[i]["PRODUCT_ID"] + "' class='add-to-cart-product' onclick='checkdate();' > <span><i class='fa fa-shopping-cart'></i></span></a> </span><img alt='' class='imaheight' class='img-responsive' src='" + dt_img.Rows[i]["PRODUCT_IMAGEURL"].ToString() + "'></div><div class='product-thumb-info-content'><span class='price pull-right'>" + dt_img.Rows[i]["PRODUCT_PRICE"] + "/Rs</span><h4><a href='shop-product-detail2.html'>" + dt_img.Rows[i]["PRODUCT_IMAGETITLE"].ToString() + "</a></h4> <span class='item-cat'><small><a href='#'>" + dt_img.Rows[i]["PRODUCT_NAME"].ToString() + " </a></small></span></div></div></div></div>";

                            }
                            product_img.InnerHtml = images;
                        }

                    }
                    else if(Request.QueryString["city_id"] != null)
                    {
                        int cityid = Int32.Parse(Request.QueryString["city_id"].ToString());
                        DataTable dt_img1 = BLL.GETSELECTPRODUCTS(cityid);


                        string images = "";
                        for (int i = 0; i < dt_img1.Rows.Count; i++)
                        {


                            images = images + " <div class='col-md-3 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'><span class='product-thumb-info-act'><a href='shop-cart-full.aspx?id=" + dt_img1.Rows[i]["PRODUCT_ID"] + "' class='add-to-cart-product' onclick='checkdate();' > <span><i class='fa fa-shopping-cart'></i></span></a> </span><img alt='' class='imaheight' class='img-responsive' src='" + dt_img1.Rows[i]["PRODUCT_IMAGEURL"].ToString() + "'></div><div class='product-thumb-info-content'><span class='price pull-right'>" + dt_img1.Rows[i]["PRODUCT_PRICE"] + "/Rs</span><h4><a href='shop-product-detail2.html'>" + dt_img1.Rows[i]["PRODUCT_IMAGETITLE"].ToString() + "</a></h4> <span class='item-cat'><small><a href='#'>" + dt_img1.Rows[i]["PRODUCT_NAME"].ToString() + " </a></small></span></div></div></div></div>";

                        }
                        product_img.InnerHtml = images;
                    }
                    else if(Session["CITY_ID"] != null)
                    {
                        int cityid = Int32.Parse(Session["CITY_ID"].ToString());
                        DataTable dt_img1 = BLL.GETSELECTPRODUCTS(cityid);


                        string images = "";
                        for (int i = 0; i < dt_img1.Rows.Count; i++)
                        {


                            images = images + " <div class='col-md-3 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'><span class='product-thumb-info-act'><a href='shop-cart-full.aspx?id=" + dt_img1.Rows[i]["PRODUCT_ID"] + "' class='add-to-cart-product' onclick='checkdate();' > <span><i class='fa fa-shopping-cart'></i></span></a> </span><img alt='' class='imaheight' class='img-responsive' src='" + dt_img1.Rows[i]["PRODUCT_IMAGEURL"].ToString() + "'></div><div class='product-thumb-info-content'><span class='price pull-right'>" + dt_img1.Rows[i]["PRODUCT_PRICE"] + "/Rs</span><h4><a href='shop-product-detail2.html'>" + dt_img1.Rows[i]["PRODUCT_IMAGETITLE"].ToString() + "</a></h4> <span class='item-cat'><small><a href='#'>" + dt_img1.Rows[i]["PRODUCT_NAME"].ToString() + " </a></small></span></div></div></div></div>";

                        }
                        product_img.InnerHtml = images;
                    }


                    //cities da = new cities();
                    //DataTable dt_loc1 = BLL.GETCITIES(da);
                    //string selectcity = "<select onchange='dropcity(this);'  class=\"selectpicker\" data-style=\"btn-success\">";
                    //for (int i = 0; i < dt_loc1.Rows.Count; i++)
                    //{

                    //    selectcity = selectcity + "<option value='" + dt_loc1.Rows[i]["city_id"] + "'  >" + dt_loc1.Rows[i]["CITY_NAME"].ToString() + "</option>";
                    //    // locations = locations + "<li><a href=''>" + dt_loc.Rows[i]["location_name"].ToString() + "</a></li>";

                    //    //selectcity.calfunction(dt_loc1.Rows[i]["city_id"].ToString());
                    //}

                    //try

                    //{
                    //    //dropselectcity.InnerHtml = selectcity + "</select>";

                    //}
                    //catch (Exception ex)
                    //{

                    //}

                    //LOCATIONS loc = new LOCATIONS();
                    //DataTable dt_location = BLL.GETLOCATION(loc);
                    //string selectlocation = "<select   class=\"selectpicker\" data-style=\"btn-success\">";
                    //for (int i = 0; i < dt_location.Rows.Count; i++)
                    //{

                    //    selectlocation = selectlocation + "<option >" + dt_location.Rows[i]["location_name"].ToString() + "</option>";
                    //    // locations = locations + "<li><a href=''>" + dt_loc.Rows[i]["location_name"].ToString() + "</a></li>";

                    //}


                    //try

                    //{
                    //    //..............dropselectlocation.InnerHtml = selectlocation + "</select>";

                    //}
                    //catch (Exception ex)
                    //{

                    //}



                }
                catch (Exception exe)
                {

                }
            }
        }
        //public void calfunction()
        //    {

        //            LOCATIONS loc = new LOCATIONS();
        //DataTable dt_location = BLL.GETLOCATION(loc);
        //string selectlocation = "<select  class=\"selectpicker\" data-style=\"btn-success\">";
        //            for (int i = 0; i<dt_location.Rows.Count; i++)
        //            {

        //                selectlocation = selectlocation + "<option >" + dt_location.Rows[i]["location_name"].ToString() + "</option>";
        //                // locations = locations + "<li><a href=''>" + dt_loc.Rows[i]["location_name"].ToString() + "</a></li>";

        //            }
        //            try

        //            {
        //                dropselectloction.InnerHtml = selectlocation + "</select>";

        //            }
        //            catch (Exception ex)
        //            {

        //            }
        //    }

        //public void cartitem_delete()
        //{
        //    try
        //    {
        //        string productid = Request.QueryString["id"].ToString();
        //        DataTable dt_productcart = BLL.GETPRODUCTBYID(productid);

        //        DataTable dt_productall = (DataTable)Session["CART"];
        //        var cart = Session["CART"] as List<int>;


        //    }
        //    catch(Exception ex)
        //    {

        //    }
        //}



        [WebMethod]
        public static string GetCurrentTime(string name)
        {
            return "Hello " + name + Environment.NewLine + "The Current Time is: "
                    + DateTime.Now.ToString();
        }
        [WebMethod]
        public static string GETPRODUCTS(string name)
        {
            string images = "";
            DataTable dt_img = BLL.GETALLPRODUCTS();
            if (dt_img.Rows.Count > 0)
            {

                for (int i = 0; i < dt_img.Rows.Count; i++)
                {

                    images = images + "<div class='col-md-12 animation'><div class='item product'><div class='product-thumb-info'><div class='product-thumb-info-image'><span class='product-thumb-info-act'><a href='shop-cart-full.html' class='add-to-cart-product' onclick ='cart_visible();'> <span><i class='fa fa-shopping-cart'></i></span></a> </span><img alt='' class='img-responsive' src='PRODUCT_IMG/AUTOMATIC.png'></div><div class='product-thumb-info-content'><span class='price pull-right'>29.99 USD</span><h4><a href='shop-product-detail2.html'>Denim shirt</a></h4> <span class='item-cat'><small><a href='#'>Jackets</a></small></span></div></div></div></div>";
                }
            }
            return images;

        }
        //[WebMethod]
        //public static string dropcityselect(string x)
        //{
        //    LOCATIONS loc = new LOCATIONS();
        //    loc.LOCATION_CITYID = Int32.Parse(x);
        //    DataTable dt_location = BLL.GETLOCATION(loc);
        //    string selectlocation = "<select   class=\"selectpicker\" data-style=\"btn-success\">";


        //    for (int i = 0; i < dt_location.Rows.Count; i++)
        //    {

        //        selectlocation = selectlocation + "<option >" + dt_location.Rows[i]["location_name"].ToString() + "</option>";

        //    }

        //    selectlocation = selectlocation + "</select>";


        //    return selectlocation;


        //}
    
       

      

    }
}