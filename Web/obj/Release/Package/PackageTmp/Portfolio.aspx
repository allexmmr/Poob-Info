﻿<%@ Page Title="Poob Info – Portfólio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Portfolio.aspx.cs" Inherits="PoobInfo.Portfolio" %>

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
            <asp:GridView ID="gvPortfolio" AllowPaging="true" AutoGenerateColumns="false" GridLines="None" HorizontalAlign="Left" PageSize="5" DataSourceID="ObjectDataSource1" runat="server">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="portColEsq">
                                <asp:HyperLink ID="lnkImagem" NavigateUrl='<%# Bind("Url") %>' Target="_blank" ImageUrl='<%# Bind("Imagem") %>' ToolTip='<%# Bind("Site") %>' runat="server"></asp:HyperLink>
                            </div>
                            <div class="portColDir entrelinhamento lnkPreto">
                                <h1>
                                    <asp:Label ID="lblSite" Text='<%# Bind("Site") %>' runat="server"></asp:Label>
                                </h1>
                                <span class="portTitulo">Job: </span><asp:Label ID="lblJob" Text='<%# Bind("Job") %>' runat="server"></asp:Label>
                                <br />
                                <span class="portTitulo">Tecnologias: </span><asp:Label ID="lblTecnologias" Text='<%# Bind("Tecnologias") %>' runat="server"></asp:Label>
                                <br />
                                <span class="portTitulo">Site: </span><asp:HyperLink ID="lnkSite" NavigateUrl='<%# Bind("Url") %>' Target="_blank" Text='<%# Bind("Url") %>' runat="server"></asp:HyperLink>
                            </div>
                            <div class="limpa"></div>
                            <hr />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <PagerStyle HorizontalAlign="Center" CssClass="lnkPortfolio" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" SelectMethod="Listar" TypeName="Library.Common.Portfolio" runat="server"></asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>