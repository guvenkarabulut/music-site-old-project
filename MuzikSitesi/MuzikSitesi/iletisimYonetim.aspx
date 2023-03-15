<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="iletisimYonetim.aspx.cs" Inherits="MuzikSitesi.iletisimYonetim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Width="740px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="iletisimID" HeaderText="iletisimID" SortExpression="iletisimID" />
        <asp:BoundField DataField="Adi" HeaderText="Adi" SortExpression="Adi" />
        <asp:BoundField DataField="Soyadi" HeaderText="Soyadi" SortExpression="Soyadi" />
        <asp:BoundField DataField="Eposta" HeaderText="Eposta" SortExpression="Eposta" />
        <asp:BoundField DataField="Mesaj" HeaderText="Mesaj" SortExpression="Mesaj" />
        <asp:BoundField DataField="ipAdresi" HeaderText="ipAdresi" SortExpression="ipAdresi" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="TumiletisimListele" TypeName="MuzikSitesi.metotlar"></asp:ObjectDataSource>
</asp:Content>
