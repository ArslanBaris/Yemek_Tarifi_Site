<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><b>Ad Soyadı :</b></td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txt_Ad" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><b>Mail Adresi :</b></td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txt_Mail" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><b>Yorum : </b></td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txt_Yorum" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><b>Yemek :</b></td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txt_Yemek" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin-left: 40px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td style="margin-left: 40px" class="auto-style10">
               <asp:Button ID="btn_Onayla" runat="server" CssClass="fb8" Height="27px" style="margin-left: 72px; margin-right: 0px" Width="144px" OnClick="btn_Onayla_Click" Text="Yayınla / Kaldır" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td style="margin-left: 40px" class="auto-style10">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

