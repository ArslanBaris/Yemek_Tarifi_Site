using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class iletisim : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar(MesajSahip,MesajMail,MesajBaslik,MesajIcerik) values(@m1,@m2,@m3,@m4)",bgl.baglanti());
        komut.Parameters.AddWithValue("@m1", txt_MesajSahip.Text);
        komut.Parameters.AddWithValue("@m2", txt_MesajMail.Text);
        komut.Parameters.AddWithValue("@m3", Txt_MesajKonu.Text);
        komut.Parameters.AddWithValue("@m4",Txt_Mesaj.Text);

        komut.ExecuteNonQuery();
        bgl.baglanti().Close();




    }
}