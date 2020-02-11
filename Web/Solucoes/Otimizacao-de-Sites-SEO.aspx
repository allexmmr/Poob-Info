<%@ Page Title="Poob Info – Soluções: Otimização de Sites / SEO" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Otimizacao-de-Sites-SEO.aspx.cs" Inherits="Web.Solucoes.Otimizacao_de_Sites_SEO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="geral">
        <div class="conteudo entrelinhamento">
            <h1>
                <asp:Image ID="Image1" ImageUrl="~/Images/icon.png" ImageAlign="Baseline" runat="server" />
                Otimização de Sites / SEO
            </h1>
            <hr />
            <div class="margin"></div>
            <h3>
                A Poob Info oferece soluções de otimização de sites (do inglês, Search Engine Optimization – SEO), para ser melhor compreendido pelos motores de busca, com o intuito de aumentar a relevância e o posicionamento do seu site nos principais mecanismos de busca, como o Google, Yahoo, Bing, entre outros.
            </h3>
            <br />
            <h3>
                Disponibilizamos outros tipos de serviços para que a sua Empresa fique ainda mais completa, como:
            </h3>
            <h4 class="lnkPreto">
                • <asp:HyperLink ID="lnkCriacaoDeSites" NavigateUrl="~/Solucoes/Criacao-de-Sites" runat="server">Criação de Sites</asp:HyperLink>;
                <br />
                • <asp:HyperLink ID="lnkEmailMarketing" NavigateUrl="~/Solucoes/E-mail-Marketing" runat="server">E-mail Marketing</asp:HyperLink>;
                <br />
                • Criação de banners estáticos ou animados ideal para divulgação de produtos, serviços, ofertas e promoção.
            </h4>
        </div>
    </div>
</asp:Content>