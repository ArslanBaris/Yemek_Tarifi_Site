<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">


        .auto-style11 {
            width: 32px;
            background-color: #66CCFF;
        }
        .auto-style13 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
            font-size: large;
        }
        .auto-style12 {
            width: 33px;
            background-color: #66CCFF;
        }
        .auto-style9 {
            background-color: #66CCFF;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style6 {
            text-align: left;
            width: 276px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table class="auto-style4" __designer:mapid="3e3">
        <tr __designer:mapid="3e4">
            <td class="auto-style11" __designer:mapid="3e5">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"  />
            </td>
            <td class="auto-style12" __designer:mapid="3e7">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
            </td>
            <td class="auto-style9" __designer:mapid="3e9">ONAY BEKLEYEN TARİF LİSTESİ</td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px" >
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                             <a href="TarifOneriDetay.aspx?TarifId=<%#Eval("TarifId") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/offer_food.png" Width="30px" BackColor="White" /></a>
                        </td>
                        <td class="auto-style7"> 
                             <a href="Tarifler .aspx?TarifId=<%#Eval("TarifId") %>&islem=sil"><asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Icons/delete .png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" style="margin-top=15px">
        <table class="auto-style4">
        <tr>
            
            <td class="auto-style11">
                <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"   />
            </td>
            <td class="auto-style12">
                <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"   />
            </td>
            <td class="auto-style9">ONAYLANAN TARİF LİSTESİ</td>
        </tr>
    </table>
        </asp:Panel>

    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="449px" >
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                             <a href="TarifOneriDetay.aspx?TarifId=<%#Eval("TarifId") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/offer_food.png" Width="30px" BackColor="White" /></a>
                        </td>
                        <td class="auto-style7"> 
                             <a href="Tarifler.aspx?TarifId=<%#Eval("TarifId") %>&islem=sil"><asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Icons/delete .png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>

