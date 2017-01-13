<%@ Page Title="Poob Info – Soluções" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PoobInfo.Solucoes.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="geral">
        <div class="conteudo">
            <h1>
                <asp:Image ID="Image1" ImageUrl="~/Images/icon.png" ImageAlign="Baseline" runat="server" />
                Soluções
            </h1>
            <hr />
            <div class="margin"></div>
            <div class="solCol">
                <div class="solColIntA">
                    <h2>Criação de Sites</h2>
                    <p>
                        <asp:HyperLink ID="lnkCriacaoDeSites" NavigateUrl="~/Solucoes/Criacao-de-Sites" ImageUrl="~/Images/criacao-de-sites.png" ToolTip="Criação de Sites" runat="server"></asp:HyperLink>
                    </p>
                </div>
                <div class="solColIntB">
                    <h2>E-mail Marketing</h2>
                    <p>
                        <asp:HyperLink ID="lnkEmailMarketing" NavigateUrl="~/Solucoes/E-mail-Marketing" ImageUrl="~/Images/e-mail-marketing.png" ToolTip="E-mail Marketing" runat="server"></asp:HyperLink>
                    </p>
                </div>
                <div class="solColIntC">
                    <h2>Otimização de Sites / SEO</h2>
                    <p>
                        <asp:HyperLink ID="lnkOtimizacaoSEO" NavigateUrl="~/Solucoes/Otimizacao-de-Sites-SEO" ImageUrl="~/Images/otimizacao-de-sites-seo.png" ToolTip="Otimização de Sites / SEO" runat="server"></asp:HyperLink>
                    </p>
                </div>
                <div class="limpa"></div>
            </div>
        </div>
    </div>
</asp:Content>