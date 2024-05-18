 using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DoAnNhom
{
    public class KetNoi
    {
        SqlConnection con;
        private void moKetNoi()
        {
            string sqlCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Downloads\App_Data\App_Data\BanHang.mdf;Integrated Security=True";
            con = new SqlConnection(sqlCon);
            con.Open();
        }

        private void dongKetNoi()
        {
            con.Close();
        }

        public DataTable docDuLieu(string sql)
        {
            DataTable dt = new DataTable();

            try
            {
                moKetNoi();
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                da.Fill(dt);
            }
            catch
            {
                dt = null;
            }
            finally
            {
                dongKetNoi();
            }

            return dt;
        }

        public int capNhat(string sql)
        {
            int ketQua  = 0;

            try
            {
                moKetNoi();
                SqlCommand cmd = new SqlCommand(sql, con);
                ketQua = cmd.ExecuteNonQuery();
            }
            catch
            {
                //Lỗi
            }
            finally
            {
                dongKetNoi();
            }

            return ketQua;
        }
    }
}