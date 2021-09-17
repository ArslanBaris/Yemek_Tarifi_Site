<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="MesajDetay.aspx.cs" Inherits="MesajDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Mesaj Gönderen : </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" BackColor="White" CssClass="tb5" Enabled="False" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Başlık : </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" BackColor="White" CssClass="tb5" Enabled="False" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mail Adresi :</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" BackColor="White" CssClass="tb5" Enabled="False" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mesaj :</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" BackColor="White" CssClass="tb5" Enabled="False" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

