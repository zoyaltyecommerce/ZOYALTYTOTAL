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
    public partial class users_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load_grid();
                tele_grid.DataBind();
                div_1.Visible = true;
            }
        }
        internal void load_grid()
        {
            DataTable dt_users = new DataTable();
            try
            {
                dt_users = BLL.GETUSERS();
                tele_grid.DataSource = dt_users;
            }
            catch(Exception ex)
            {

            }
        }


        protected void tele_grid_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            load_grid();
        }
    }
}