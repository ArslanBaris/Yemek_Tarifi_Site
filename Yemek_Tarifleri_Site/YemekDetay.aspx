<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-weight: bold;
            text-align: left;
        }
        .auto-style7 {
            height: 30px;
        }
        .auto-style8 {
            width: 106px;
        }
        .auto-style9 {
            font-weight: bold;
            text-align: left;
            width: 106px;
        }
        .auto-style10 {
            height: 30px;
            width: 106px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: 35px; color: #CCCCCC" Text="Label"></asp:Label>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" style="font-size: large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #000000">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" style="font-size: xx-small" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

    <div style="background-color: #FFFFCC" class="auto-style4"> <strong>Yorum Yapma Paneli</strong></div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Ad Soyad : </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="180px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Mail : </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="180px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Yorumunuz : </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="180px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" style="margin-left: 46px" Text="Gönder" Width="101px" CssClass="fb8" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

