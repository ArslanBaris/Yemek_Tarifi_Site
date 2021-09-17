using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Tarifler : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;

        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["TarifId"];
            islem = Request.QueryString["islem"];
        }
        if (islem == "sil")
        {
            //Silme İşlemi
            SqlCommand komutsil = new SqlCommand("delete from Tbl_Tarifler where TarifId=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        SqlCommand komut = new SqlCommand("select * from Tbl_Tarifler where TarifDurum=0", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        SqlCommand komut2 = new SqlCommand("select * from Tbl_Tarifler where TarifDurum=1", bgl.baglanti());
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true; ;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
}