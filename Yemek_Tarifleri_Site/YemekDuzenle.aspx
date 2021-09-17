<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            height: 23px;
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
            <td><b>Yemek Ad :</b></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><b>Malzemeler :</b></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><b>Tarif :</b></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><b>Kategori :</b></td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5" Width="300px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><b>Görsel : </b></td>
            <td class="auto-style7">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="300px" />
            </td>
        </tr>
        <tr>
            <td><b></b></td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td><b></b></td>
            <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" CssClass="fb8" Height="30px" OnClick="Button1_Click" Text="Güncelle" Width="180px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="Button2" runat="server" CssClass="fb8" Height="30px"  Text="Günün Yemeği" Width="150px" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

