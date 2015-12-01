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
    public partial class users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadgrid();
                tele_grid.DataBind();
                div_grid.Visible = true;
                
            }
        }
         internal void loadgrid()
        {
            DataTable dt_grid = new DataTable();
            try
            {
                dt_grid = BLL.GETUSERS();
                tele_grid.DataSource = dt_grid;

            }
            catch(Exception e) 
            {

            }
          }

        protected void tele_grid_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            loadgrid();
        }

        //protected void lnk_EDIT_Command(object sender, CommandEventArgs e)
        //{
        //    try
        //    {
        //        hid_operation.Value = "UPDATE";
        //        hid_userid.Value = e.CommandArgument.ToString();
        //        btn_save.Text = "update";
        //        int id = Convert.ToInt32(e.CommandArgument.ToString());
        //        DataTable dt_users = BLL.GETUSERBYID(id);
        //        txt_email.Value = dt_users.Rows[0]["USER_EMAILID"].ToString();
        //        txt_name.Value = dt_users.Rows[0]["USER_FIRSTNAME"].ToString();
        //        txt_password.Value = dt_users.Rows[0]["USER_PASSWORD"].ToString();
        //        txt_phone.Value = dt_users.Rows[0]["USER_PHONE"].ToString();
        //        div_add.Visible = true;
        //        div_grid.Visible = false;
        //    }
        //    catch (Exception ex)
        //    {
 
        //    }

        //}

        //protected void lnk_delete_Command(object sender, CommandEventArgs e)
        //{
        //    try
        //    {
        //        int id = Convert.ToInt32(e.CommandArgument.ToString());
        //           bool status=BLL.DELETEUSER(id);
        //        if(status==true)
        //        {
        //             BLL.ShowMessage(this,"USER DELETED SUCCESSFULLY");
        //            loadgrid();
        //            tele_grid.DataBind();
        //            clearcontrols();
        //        }
        //        else
        //        {
        //            BLL.ShowMessage(this,"CONTACT ADMINISTRATOR");
        //        }
        //    }
        //    catch(Exception ex)
        //    {

        //    }
        //}
        //private void clearcontrols()
        //{
        //    txt_email.Value = "";
        //    txt_name.Value = "";
        //    txt_password.Value = "";
        //    txt_phone.Value = "";
        //    div_grid.Visible = true;
        //    div_add.Visible = false;
        //}

        //protected void btn_cancel_Click(object sender, EventArgs e)
        //{
        //    clearcontrols();
        //}

        //protected void btn_save_Click(object sender, EventArgs e)
        //{
        //    bool status = false;
        //    try
        //    {
        //        USERS obj = new USERS();
        //        obj.USER_EMAILID = BLL.ReplaceQuote(txt_email.Value.ToString());
        //        obj.USER_FIRSTNAME = BLL.ReplaceQuote(txt_name.Value);
        //        obj.USER_PASSWORD = BLL.Encrypt(txt_password.Value);
        //        obj.USER_PHONE = BLL.ReplaceQuote(txt_phone.Value.ToString());
        //        DataTable dt_count = BLL.checkusers(obj);
        //        if (dt_count.Rows.Count == 0)
        //        {

        //            if (hid_operation.Value == "UPDATE")
        //            {
        //                obj.USER_ID = Convert.ToInt32(hid_userid.Value);
        //                status = BLL.UPDATEUSER(obj);
        //            }
        //            else if (hid_operation.Value == "SAVE")
        //            {
        //               status= BLL.SAVEUSER(obj);
        //            }

        //            if (status == true)
        //            {
        //                BLL.ShowMessage(this, "USER CREATED SUCCESSFULLY");
        //                loadgrid();
        //                tele_grid.DataBind();
        //                clearcontrols();
        //            }

        //            else
        //            {
        //                BLL.ShowMessage(this, "CONTACT ADMINISTRATOR");
        //            }
        //        }
        //        else
        //        {
        //            BLL.ShowMessage(this, "Email already exists create new ID");
        //        }
        //    }
        //    catch(Exception ex)
        //    {

        //    }
        //}
        //protected void lnk_add_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        txt_email.Value = "";
        //        txt_name.Value = "";
        //        txt_password.Value = "";
        //        txt_phone.Value = "";
        //        btn_save.Text = "ADD";
        //        div_add.Visible = true;
        //        div_grid.Visible = false;
        //        hid_operation.Value = "SAVE";
        //        hid_userid.Value = "";
        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //}

    }
}