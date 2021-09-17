using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id="";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["YorumId"];
        islem = Request.QueryString["islem"];

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select YorumAdSoyad, YorumMail, YorumIcerik, YemekAd from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.YemekId=Tbl_Yemekler.YemekId where YorumId=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txt_Ad.Text = dr[0].ToString();
                txt_Mail.Text = dr[1].ToString();
                txt_Yorum.Text = dr[2].ToString();
                txt_Yemek.Text = dr[3].ToString();

            }
            bgl.baglanti().Close();
        }
        
    }
    protected void btn_Onayla_Click(object sender, EventArgs e)
    {

        if (islem == "again")
        {
            SqlCommand komut = new SqlCommand("update Tbl_Yorumlar set YorumIcerik=@p1,YorumOnay=@p2 where YorumId=@p3 ", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txt_Yorum.Text);
            komut.Parameters.AddWithValue("@p2", "False");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
        else
        {
            SqlCommand komut = new SqlCommand("update Tbl_Yorumlar set YorumIcerik=@p1,YorumOnay=@p2 where YorumId=@p3 ", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txt_Yorum.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    
    }
}