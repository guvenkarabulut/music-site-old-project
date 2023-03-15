<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="galeriYonetim.aspx.cs" Inherits="MuzikSitesi.galeriYonetim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="form-field-1">
            Galeri Resim
            </label>
            <div class="col-sm-9">
                <input id="txt_ResimAciklama" runat="server" class="col-xs-10 col-sm-5" placeholder="Resim Açıklama" type="text" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9">
                <asp:FileUpload ID="fl_Galeri" runat="server" />
            </div>
        </div>
        <div class="space-4">
        </div>
        <div class="clearfix form-actions">
            <div class="col-md-offset-3 col-md-9">
                <asp:Button ID="btn_Ekle_Boyutlandir" runat="server" cssclass="btn btn-info"  Text="Kaydet" OnClick="btn_Ekle_Boyutlandir_Click" />
                <asp:Label ID="lbl_Mesaj" runat="server"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Width="764px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="GaleriID" HeaderText="GaleriID" SortExpression="GaleriID" />
                        <asp:BoundField DataField="GaleriResim" HeaderText="GaleriResim" SortExpression="GaleriResim" />
            <asp:TemplateField HeaderText="Galeri Resim">
                <ItemTemplate>
                    <asp:Image ID="Image1" ImageUrl='<%#Eval("GaleriResim","/upload/Duzenlenen/{0}") %>' runat="server" Width="100px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sil">
                <ItemTemplate>
                    <asp:Button ID="btn_Sil"  CssClass="btn-danger" CommandArgument='<%#Eval("GaleriID") %>'  runat="server" Text="Sil" OnClick="btn_Sil_Click" />
                </ItemTemplate>
            </asp:TemplateField>
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
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="TumGaleriListele" TypeName="MuzikSitesi.metotlar"></asp:ObjectDataSource>
            </div>
        </div>
    </div>
</asp:Content>
