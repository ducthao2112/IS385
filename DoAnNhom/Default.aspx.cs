using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnNhom
{
    public partial class Default : System.Web.UI.Page
    {
        KetNoi ketNoi = new KetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sql = "";
            string danhmuc = Request.QueryString["danhmuc"] + "";

            if(danhmuc == "")
            {
                sql = "select * from sanPham";
            } else
            {
                sql = "select * from sanPham where id_danh_muc = '" + danhmuc + "'";
            }
            dl_sp.DataSource = ketNoi.docDuLieu(sql);
            dl_sp.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string masp = ((ImageButton)sender).CommandArgument;
            Response.Redirect("Detail.aspx?masp=" + masp);
        }
    }
}