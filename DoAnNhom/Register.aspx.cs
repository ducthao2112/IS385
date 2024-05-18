using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnNhom
{
    public partial class Register : System.Web.UI.Page
    {
        KetNoi ketNoi = new KetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ho_va_ten = txt_name.Text;
            string email = txt_email.Text;
            string so_dien_thoai = txt_phone.Text;
            string mat_khau = txt_password.Text;

            string sql = "Insert Into khachHang Values('" + email + "', '" + so_dien_thoai + "', N'" + ho_va_ten + "', '" + mat_khau +"');";

            int ketQua = ketNoi.capNhat(sql);
                
            if(ketQua > 0)
            {
                lb_thong_bao.Text = "Đăng Ký Tài Khoản Thành Công";
            } else
            {
                lb_thong_bao.Text = "Đăng Ký Thất Bại!!!!!!!";
            }
        }
    }
}