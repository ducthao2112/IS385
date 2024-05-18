using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnNhom
{
    public partial class Cart : System.Web.UI.Page
    {
        KetNoi ketNoi = new KetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack) { return; }

            string email = Session["email"] + "";

            if(email == "")
            {
                lb_thong_bao.Text = "Bạn phải đăng nhập!!!!!!!!";
                Response.Redirect("Login.aspx");
            }
            else
            {
                string sql = "Select sanPham.ten_san_pham, sanPham.anh_san_pham, sanPham.gia_ban, chiTietDonHang.so_luong, sanPham.gia_ban * chiTietDonHang.so_luong as thanh_tien from khachHang, sanPham, chiTietDonHang where khachHang.email = chiTietDonHang.email and chiTietDonHang.id_san_pham = sanPham.id_san_pham and chiTietDonHang.email = '" + email +"'";
                DataTable dt = ketNoi.docDuLieu(sql);

                grid_cart.DataSource = dt;
                grid_cart.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }
    }
}