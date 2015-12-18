using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZOYALTY.Code;

namespace PragathiShopLinks.Admin
{
    public partial class location : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cities obj = new cities();
                drpdown1.DataSource = BLL.GETCITIES(obj);
                drpdown1.DataValueField = "CITY_ID";
                drpdown1.DataTextField = "CITY_NAME";

                drpdown1.DataBind();

            }


        }

        protected void btnlocation_Click(object sender, EventArgs e)
        {

            LOCATIONS obj = new LOCATIONS();
            obj.LOCATION_NAME = BLL.ReplaceQuote(txtlocation.Text);
            obj.LOCATION_CITYID = Convert.ToInt32(drpdown1.SelectedItem.Value);
            bool status = BLL.INSERT_LOCATION(obj);
          

        }
    }
}