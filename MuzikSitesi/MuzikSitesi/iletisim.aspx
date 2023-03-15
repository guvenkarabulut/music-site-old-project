<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="MuzikSitesi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-form">
        <h3>İletişim</h3>
        <h5></h5>
        <div class="clear">
        </div>
        <div>
            <span>
            <label>
            Ad.</label></span> <span>
            <input id="txt_Adi" runat="server" style="border-style: none; border-color: inherit; border-width: medium; padding: 8px; display: block; width: 92%; outline: none; color: #464646; font-size: 0.8125em; font-family: Arial, Helvetica, sans-serif; -webkit-appearance: none;" type="text" /></span>
        </div>
        <div>
            <span>
            <label>
            Soyadi</label></span> <span>
            <input id="txt_Soyadi" runat="server" style="border-style: none; border-color: inherit; border-width: medium; padding: 8px; display: block; width: 92%; outline: none; color: #464646; font-size: 0.8125em; font-family: Arial, Helvetica, sans-serif; -webkit-appearance: none;" type="text" /></span>
        </div>
        <div>
            <span>
            <label>
            Eposta</label></span> <span>
            <input id="txt_eposta" runat="server" style="border-style: none; border-color: inherit; border-width: medium; padding: 8px; display: block; width: 92%; outline: none; color: #464646; font-size: 0.8125em; font-family: Arial, Helvetica, sans-serif; -webkit-appearance: none;" type="text" /></span>
        </div>
        <div>
            <span>
            <label>
            Mesaj</label></span> <span>
            <textarea id="txt_mesaj" runat="server" cols="20" name="S1" rows="1"> </textarea></span>
        </div>
        <div>
            <span>
            <asp:Button ID="btn_gonder" runat="server" CssClass="submit" Text="gönder" OnClick="btn_gonder_Click" />
            </span>
        </div>
    </div>
</asp:Content>
