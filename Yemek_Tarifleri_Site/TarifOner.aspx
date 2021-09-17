<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        height: 23px;
    }
    .auto-style7 {
        height: 23px;
        font-weight: bold;
        text-align: right;
    }
    .auto-style9 {
        font-weight: bold;
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Tarif Ad :</strong></td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px"  CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Malzemeler : </td>
        <td style="margin-left: 80px">
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Yapılış : </td>
        <td style="margin-left: 80px">
            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Resim : </td>
        <td style="margin-left: 80px">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Tarif Öneren : </td>
        <td style="margin-left: 80px">
            <asp:TextBox ID="TxtOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Mail Adresi : </td>
        <td style="margin-left: 80px">
            <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6" style="margin-left: 80px">
            <asp:Button ID="BtnTarifOner" runat="server" Height="37px" style="margin-left: 49px" Text="Tarif Öner" Width="159px" OnClick="BtnTarifOner_Click" CssClass="fb8" />
        </td>
    </tr>
</table>
</asp:Content>

