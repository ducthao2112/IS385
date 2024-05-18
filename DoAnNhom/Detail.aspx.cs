using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnNhom
{
    public partial class Detail : System.Web.UI.Page
    {
        KetNoi ketNoi = new KetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string masp = Request.QueryString["masp"] + "";
            string sql = "select * from sanPham where id_san_pham ='" + masp + "'";
            dl_chi_tiet.DataSource = ketNoi.docDuLieu(sql);
            dl_chi_tiet.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = Session["email"] + "";
            string masp = ((Button)sender).CommandArgument;
            
            Button bt = (Button)sender;
            DataListItem item = (DataListItem)bt.Parent;
            TextBox txt_num = (TextBox)item.FindControl("txt_num");
            string num = txt_num.Text;


            if(email == "")
            {
                lb_thong_bao.Text = "Bạn phải đăng nhập!!!!!!";
                Response.Redirect("Login.aspx");
            } else
            {
                string sqlSelect = "select * from chiTietDonHang where email = '" + email + "' and id_san_pham = '" + masp + "'";
                string sql = "";
                DataTable dt = ketNoi.docDuLieu(sqlSelect);

                if(dt.Rows.Count > 0)
                {
                    sql = "update chiTietDonHang set so_luong = so_luong + " + num + " where email = '" + email + "' and id_san_pham = '" + masp + "'";
                } else
                {
                    sql = "Insert into chiTietDonHang values('" + num + "', '" + email + "', '" + masp + "')";
                }

                int ketQua = ketNoi.capNhat(sql);

                if (ketQua > 0)
                {
                    lb_thong_bao.Text = "Thêm Vào Giỏ Hàng Thành Công";
                }
                else
                {
                    lb_thong_bao.Text = "Lỗi!!!!!!";
                }
            }
        }
    }
}