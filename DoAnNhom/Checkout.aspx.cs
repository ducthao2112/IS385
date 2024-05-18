using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnNhom
{
    public partial class Checkout : System.Web.UI.Page
    {
        KetNoi ketNoi = new KetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            string email = Session["email"] + "";
            if (email == "")
            {
                Response.Redirect("Login.aspx");
            } else
            {
                string sql = "Select khachHang.ho_va_ten, khachHang.so_dien_thoai, SUM(sanPham.gia_ban * chiTietDonHang.so_luong) as thanh_tien from khachHang, sanPham, chiTietDonHang where khachHang.email = chiTietDonHang.email and chiTietDonHang.id_san_pham = sanPham.id_san_pham and chiTietDonHang.email = '" + email + "'" + "group by  khachHang.ho_va_ten, khachHang.so_dien_thoai";
                dl_chi_tiet_don_hang.DataSource = ketNoi.docDuLieu(sql);
                dl_chi_tiet_don_hang.DataBind();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string id_chi_tiet_don_hang = ((Button)sender).CommandArgument;
            lb_thong_bao.Text = id_chi_tiet_don_hang;

        }
    }
}