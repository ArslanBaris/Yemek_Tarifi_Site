using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Mesajlar : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;

        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["MesajId"];
            islem = Request.QueryString["islem"];
        }
        if (islem == "sil")
        {
            //Silme İşlemi
            SqlCommand komutsil = new SqlCommand("delete from Tbl_Mesajlar where MesajId=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
        SqlCommand komut = new SqlCommand("Select * from Tbl_Mesajlar", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }
   
}