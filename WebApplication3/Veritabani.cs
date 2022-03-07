using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace WebApplication3
{
    public static class Veritabani
    {
        public static int UyeKontrol(string ad, string sifre)
        {
            string strConn = ConfigurationManager.ConnectionStrings["CalısmaConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select*from tbl_Uye where UyeAdi=@ad and Sifre=@sifre", conn);

            cmd.Parameters.Clear();

            cmd.Parameters.AddWithValue("@ad", ad);
            cmd.Parameters.AddWithValue("@Sifre", sifre);

            SqlDataReader dr = cmd.ExecuteReader();

            dr.Read();
            if (dr.HasRows)
            {
                return Convert.ToInt32(dr["UyeID"]);
            }

            conn.Close();

            return -1;
        }

        public static string Md5(string strSifre)
        {
            MD5 md5 = MD5.Create();
            byte[] hashData = md5.ComputeHash(Encoding.UTF8.GetBytes(strSifre));

            string strHashedSifre = "";

            for (int i = 0; i < hashData.Length; i++)
            {
                strHashedSifre += hashData[i].ToString("x2");
            }

            return strHashedSifre;
        }



    }
}