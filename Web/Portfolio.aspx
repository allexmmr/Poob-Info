<%@ Page Title="Poob Info – Portfólio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Portfolio.aspx.cs" Inherits="PoobInfo.Portfolio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="conteudo">
        <h1>
            <asp:Image ID="Image1" ImageUrl="~/Images/icon.png" ImageAlign="Baseline" runat="server" />
            Portfólio
        </h1>
        <hr />
        <div class="portCol">
            <asp:GridView ID="gvPortfolio" HorizontalAlign="Left" AllowPaging="true" PageSize="5" GridLines="None" DataSourceID="ObjectDataSource1" AutoGenerateColumns="false" runat="server">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="portColEsq">
                                <asp:HyperLink ID="lnkImagem" NavigateUrl='<%# Bind("UrlNavigation") %>' Target="_blank" ImageUrl='<%# Bind("Image") %>' ToolTip='<%# Bind("Title") %>' runat="server"></asp:HyperLink>
                            </div>
                            <div class="portColDir entrelinhamento lnkPreto">
                                <h2>
                                    <asp:Label ID="lblSite" Text='<%# Bind("Title") %>' runat="server"></asp:Label>
                                </h2>
                                <span class="portTitulo">Job: </span><asp:Label ID="lblJob" Text='<%# Bind("Description") %>' runat="server"></asp:Label>
                                <br />
                                <span class="portTitulo">Tecnologias: </span><asp:Label ID="lblTecnologias" Text='<%# Bind("Technologies") %>' runat="server"></asp:Label>
                                <br />
                                <span class="portTitulo">Site: </span><asp:HyperLink ID="lnkSite" NavigateUrl='<%# Bind("UrlNavigation") %>' Target="_blank" Text='<%# Bind("UrlDisplay") %>' runat="server"></asp:HyperLink>
                            </div>
                            <div class="limpa"></div>
                            <div class="margin"></div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <PagerStyle HorizontalAlign="Center" CssClass="lnkPortfolio" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" SelectMethod="ListAll" TypeName="Library.Common.Portfolio" runat="server"></asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>