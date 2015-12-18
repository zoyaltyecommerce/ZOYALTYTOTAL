using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZOYALTY.Code;

namespace PragathiShopLinks.Admin
{
    public partial class city : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            cities obj = new cities();
            obj.city_name = BLL.ReplaceQuote(txt_city.Text);
            bool STATUS = BLL.INSERT_CITIES(obj);
        }
    }
}