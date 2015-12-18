using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZOYALTY.Code;

namespace PragathiShopLinks.Admin
{
    public partial class priceinsert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {



                PRODUCT obj = new PRODUCT();
                obj.PRODUCT_NAME = txt_name.Text;
                obj.PRODUCT_DESC = txt_desc.Text;
                // obj.PRODUCT_IMAGEURL=product_img
                obj.PRODUCT_IMAGETITLE = txt_imgtitle.Text;
                obj.PRODUCT_PRICE = Convert.ToDecimal(txt_product_price.Text);
                obj.PRODUCT_TITLE = txt_producttitle.Text;

                bool status = BLL.INSERT_PRODUCT(obj);
                {
                    clear_controls();
                }

            }
            catch (Exception ee)
            {

            }
       
        
        }
        public void clear_controls()
        {
            txt_name.Text = "";
            txt_producttitle.Text = "";
            txt_desc.Text = "";
            txt_imgtitle.Text = "";
            txt_product_price.Text = "";

        }

    }
   
}