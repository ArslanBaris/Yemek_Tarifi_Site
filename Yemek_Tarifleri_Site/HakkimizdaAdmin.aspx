<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkimizdaAdmin.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
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
    .auto-style14 {
        height: 23px;
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
                <td class="auto-style9">&nbsp;HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td style="margin-left: 80px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="200px" style="font-size: medium; font-style: italic" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="margin-left: 80px">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center; margin-left: 80px">
                    <asp:Button ID="Button3" runat="server" CssClass="fb8" Text="Güncelle" Width="200px" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

