<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style6 {
        height: 23px;
            width: 228px;
        }
    .auto-style7 {
        height: 23px;
        text-align: right;
    }
        .auto-style8 {
            height: 23px;
            text-align: right;
            width: 103px;
        }
        .auto-style9 {
            background-color: #66CCFF;
        }
        .auto-style11 {
            width: 32px;
            background-color: #66CCFF;
        }
        .auto-style12 {
            width: 33px;
            background-color: #66CCFF;
        }
        .auto-style13 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            height: 35px;
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #66FFFF">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style9">YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="YemekDuzenle.aspx?YemekId=<%#Eval("YemekId") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/update.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style7"> 
                            <a href="Yemekler.aspx?YemekId=<%#Eval("YemekId") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/delete .png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel4" runat="server" style="margin-top:15px;">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button6" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button6_Click" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button7" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button7_Click" />
                </td>
                <td class="auto-style9">YEMEK EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Yemek Adı :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Malzemeler :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="120px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Tarif :</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">
                    <asp:Button ID="btnEkle" runat="server" CssClass="fb8" OnClick="btnEkle_Click" style="font-weight: 700; font-size: medium; margin-left: 19px" Text="Ekle" Width="150px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>



