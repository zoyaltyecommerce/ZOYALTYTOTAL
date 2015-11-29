using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PragathiShopLinks.Admin
{
    public partial class BannerImage : System.Web.UI.Page
    {
        string strPath = "";
        string strBannerImagePath = "";
        string strImagePath = "";
        string strtempImagePath = "";

        DataTable dt_Banner_Info;
        protected void Page_Load(object sender, EventArgs e)
        {
         if( (Session["BANNERINFO"] != null))
        {
            dt_Banner_Info = (DataTable)Session["BANNERINFO"];


            if (dt_Banner_Info.Rows.Count > 0)
            {
                strImagePath = dt_Banner_Info.Rows[0]["BANNER_URL"].ToString();
                strtempImagePath = strImagePath.Substring(strImagePath.LastIndexOf('/'));
                strtempImagePath = strtempImagePath.TrimStart('/');
                if (Convert.ToBoolean(File.Exists(Server.MapPath("~/BannerImages/") + strtempImagePath)))
                {
                    Response.WriteFile(Server.MapPath("~/BannerImages/") + strtempImagePath); ;
                }
                else
                {
                    Response.WriteFile(Server.MapPath("~/BannerImages/") + "No-Image.jpg");
                }
            }
        }
        }
    }
}