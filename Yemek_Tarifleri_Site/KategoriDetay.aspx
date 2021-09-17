<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            height: 23px;
            font-weight: 700;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style5">
            <tr>
                <td style="background-color: #CC0066"><a href ="YemekDetay.aspx?YemekId=<%#Eval("YemekId") %>">
                    <asp:Label ID="Label3" runat="server" 
                                style="font-weight: 700; font-size: x-large; color: #FFFFFF;" 
                                Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Malzemeler</strong><br />
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Yemek Tarifi</strong><br />
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Tarih:</strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>' style="color: #FFFFFF"></asp:Label>
                            &nbsp;-<em> </em><strong><em>Puan:</em>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>' style="color: #FFFFFF"></asp:Label>
                    </strong>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("KategoriId") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

