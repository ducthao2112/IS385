using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnNhom
{

    public partial class Login : System.Web.UI.Page
    {
        KetNoi ketNoi = new KetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = txt_email.Text;
            string password = txt_password.Text;

            string sql = "Select * from khachHang where email = '" + email + "' and mat_khau = '" + password +"'" ;
            DataTable dt = ketNoi.docDuLieu(sql);

            if(dt.Rows.Count > 0 )
            {
                Session["email"] = email;
                Response.Redirect("Default.aspx");
            } else
            {
                lb_thong_bao.Text = "Tài Khoản Hoặc Mật Khẩu Không ĐÚng";
            }
        }
    }
}