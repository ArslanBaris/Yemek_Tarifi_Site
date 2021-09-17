using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriDetay : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    String kategoriId = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        kategoriId = Request.QueryString["KategoriId"];
        SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where KategoriId=@p1",bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", kategoriId);
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
            

    }
}