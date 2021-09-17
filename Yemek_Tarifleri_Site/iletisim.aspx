<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        height: 26px;
        font-weight: bold;
        text-align: right;
    }
    .auto-style7 {
        font-weight: bold;
        text-align: right;
    }
    .auto-style8 {
        height: 26px;
        text-align: left;
    }
    .auto-style9 {
        font-size: x-large;
        font-weight: bold;
        color: #FFFFCC;
            text-align: center;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
    <tr>
        <td class="auto-style9" colspan="2"><em style="text-align: center">Mesaj Paneli</em></td>
    </tr>
    <tr>
        <td><b></b></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Ad Soyad : </td>
        <td class="auto-style8" style="margin-left: 40px">
            <asp:TextBox ID="txt_MesajSahip" runat="server" style="text-align: left" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Mail Adresi : </td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="txt_MesajMail" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Konu : </td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="Txt_MesajKonu" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Mesaj : </td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="Txt_Mesaj" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><b></b></td>
        <td style="margin-left: 40px">
            <asp:Button ID="Button1" runat="server" Height="32px" style="margin-left: 64px" Text="Gönder" Width="98px" CssClass="fb8" />
        </td>
    </tr>
</table>
</asp:Content>

