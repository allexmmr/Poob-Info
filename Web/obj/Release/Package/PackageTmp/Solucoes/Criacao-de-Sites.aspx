<%@ Page Title="Poob Info – Soluções: Criação de Sites" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Criacao-de-Sites.aspx.cs" Inherits="PoobInfo.Solucoes.Criacao_de_Sites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="geral">
        <div class="conteudo entrelinhamento">
            <h1>
                <asp:Image ID="Image1" ImageUrl="~/Images/icon.png" ImageAlign="Baseline" runat="server" />
                Criação de Sites
            </h1>
            <hr />
            <h2>
                A Poob Info é uma empresa especializada na criação e no desenvolvimento de sites, hotsites, blogs e e-commerces, elaborando uma interface de fácil acessibilidade e navegação. Oferecemos todas as etapas necessárias no processo de desenvolvimento de um site, desde a arquitetura até a sua aparência, incluindo registo de domínio nacionais e internacionais, hospedagem, desenvolvimento do layout, identidade visual, otimização para mecanismos de pesquisa (SEO), atualização e manutenção do site.
            </h2>
            <br />
            <h2>
                Disponibilizamos outros tipos de serviços para que a sua Empresa fique ainda mais completa, como:
            </h2>
            <h3 class="lnkPreto">
                • <asp:HyperLink ID="lnkEmailMarketing" NavigateUrl="~/Solucoes/E-mail-Marketing" runat="server">E-mail Marketing</asp:HyperLink>;
                <br />
                • <asp:HyperLink ID="lnkOtimizacaoSEO" NavigateUrl="~/Solucoes/Otimizacao-de-Sites-SEO" runat="server">Otimização de Sites / SEO</asp:HyperLink>;
                <br />
                • Criação de banners estáticos ou animados ideal para divulgação de produtos, serviços, ofertas e promoção.
            </h3>
        </div>
    </div>
</asp:Content>