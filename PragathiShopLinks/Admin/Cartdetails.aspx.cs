using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZOYALTY.Code;
using System.Data;
using Telerik.Web.UI;

namespace PragathiShopLinks.Admin
{
    public partial class Cartdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                load_cart_view();
               tele_cat.DataBind();
                cart_details.Visible = true;
            }

        }

        internal void load_cart_view()
        {
            DataTable dt_cart_view = new DataTable();
            try
            {
                dt_cart_view = BLL.GETCART_DETAILS();
                tele_cat.DataSource = dt_cart_view;


            }
            catch(Exception ex)
            {

            }
            
        }
        protected void tele_cat_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            load_cart_view();
        }
    }
}