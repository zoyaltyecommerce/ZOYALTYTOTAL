using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZOYALTY.Code;
using System.Data;

namespace PragathiShopLinks.Admin
{
    public partial class Vendors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadgrid();
                rgvendors.DataBind();
                div_grid.Visible = true;
                div_add.Visible = false;
            }
        }

        internal void loadgrid()
        {
            DataTable dt_grid = new DataTable();

            try
            {
                dt_grid = BLL.GETVENDORS();
                rgvendors.DataSource = dt_grid;

            }
            catch (Exception ex)
            {

            }
        }

        protected void rgvendors_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            loadgrid();
        }

        protected void lnkEdit_Command(object sender, CommandEventArgs e)
        {
            try
            {
                hid_operation.Value = "UPDATE";
                hid_userid.Value = e.CommandArgument.ToString();
                btn_save.Text = "Update";
                int id = Convert.ToInt32(e.CommandArgument.ToString());
                DataTable dt_vendor = BLL.GETVENDORBYID(id);
                txt_email.Value = dt_vendor.Rows[0]["USER_EMAILID"].ToString();
                txt_name.Value= dt_vendor.Rows[0]["USER_FIRSTNAME"].ToString();
                txt_password.Value= BLL.Decrypt(dt_vendor.Rows[0]["USER_PASSWORD"].ToString());
                txt_phone.Value = dt_vendor.Rows[0]["USER_PHONE"].ToString();
                div_add.Visible = true;
                div_grid.Visible = false;

            }
            catch (Exception ex)
            {

            }
        }

        protected void lnkDelete_Command(object sender, CommandEventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(e.CommandArgument.ToString());
                bool status = BLL.DELETEVENDOR(id);
                if (status == true)
                {
                    BLL.ShowMessage(this, "Vendor Deleted successfully");
                    loadgrid();
                    rgvendors.DataBind();
                    clearcontrols();
                }
                else
                {
                    BLL.ShowMessage(this, "Contact Administrator");
                }
            }
            catch(Exception ex)
            {

            }
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            bool status = false;
            try
            {
                USERS obj_user = new USERS();
                obj_user.USER_EMAILID = BLL.ReplaceQuote(txt_email.Value.ToString());
                obj_user.USER_FIRSTNAME = BLL.ReplaceQuote(txt_name.Value);
                obj_user.USER_PASSWORD = BLL.Encrypt(txt_password.Value);
                obj_user.USER_PHONE = BLL.ReplaceQuote(txt_phone.Value.ToString());
                DataTable dt_count = BLL.checkusers(obj_user);

                if (dt_count.Rows.Count == 0)
                {


                    if (hid_operation.Value == "UPDATE")
                    {
                        obj_user.USER_ID = Convert.ToInt32(hid_userid.Value);
                        status = BLL.UPDATEVENDOR(obj_user);


                    }
                    else if (hid_operation.Value == "SAVE")
                    {
                        status = BLL.SAVEVENDOR(obj_user);
                    }

                    if (status == true)
                    {
                        BLL.ShowMessage(this, "Vendor Created successfully");
                        loadgrid();
                        rgvendors.DataBind();
                        clearcontrols();
                    }
                    else
                    {
                        BLL.ShowMessage(this, "Contact Administrator");
                    }
                }
                else
                {
                    BLL.ShowMessage(this, "Email already exist, please choose another");
                }
                
            }
            catch(Exception ex)
            {

            }

        }

        private void clearcontrols()
        {
            txt_email.Value = "";
            txt_name.Value = "";
            txt_password.Value ="";
            txt_phone.Value = "";
            div_grid.Visible = true;
            div_add.Visible = false;
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            clearcontrols();
        }

        protected void lnk_add_Click(object sender, EventArgs e)
        {
            try
            {
                txt_email.Value = "";
                txt_name.Value = "";
                txt_password.Value = "";
                txt_phone.Value = "";
                div_add.Visible = true;
                div_grid.Visible = false;
                hid_operation.Value = "SAVE";
                hid_userid.Value = "";
            }
            catch(Exception ex)
            {

            }
        }
    }
}