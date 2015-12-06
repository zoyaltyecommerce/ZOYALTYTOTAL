using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ZOYALTY.Code;

namespace PragathiShopLinks.Admin
{
    public partial class Maincart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadcart();
                tele_maincart.DataBind();
                div_main.Visible = true;
            }
        }

        internal void loadcart()
        {
            DataTable dt_maincart = new DataTable();
            try
            {
                dt_maincart = BLL.GETMAINCART();
                tele_maincart.DataSource = dt_maincart;
            }
            catch (Exception ex)
            {
 
            }
        }



        protected void tele_maincart_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            loadcart();
        }
    }
}