<%@ Page Title="Poob Info – Soluções em Tecnologias" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <!-- Início do banner rotativo -->
            <div class="bannerGeral">
                <div class="banner">
                    <div id="slideshow">
                        <ul class="slides">
                            <li>
                                <asp:HyperLink ID="lnkBanner1" NavigateUrl="~/Contato?Assunto=Otimizacao-de-Sites-SEO" ImageUrl="~/Images/Banners/001.jpg" runat="server" />
                            </li>
                        </ul>
                        <span class="arrow previous"></span>
                        <span class="arrow next"></span>
                    </div>
                    <div class="limpa"></div>
                </div>
            </div>
            <!-- Fim do banner rotativo -->
            <!-- Início do portfólio -->
            <div class="portfolioGeral">
                <div class="portfolio">
                    <div class="portfolioMonitor">
                        <div class="portfolioSite">
                            <asp:HyperLink ID="lnkSite" ImageUrl="~/Images/Portfolio/Thumb/pistache-futsal.jpg" NavigateUrl="#" Target="_blank" runat="server" />
                        </div>
                        <div class="limpa"></div>
                        <div class="portfolioNavEsq lnkBranco">
                            <asp:LinkButton ID="btnAnterior" ToolTip="Confira o job anterior" runat="server" OnClick="btnAnterior_Click">« <small>Anterior</small></asp:LinkButton>
                        </div>
                        <div class="portfolioNavDir lnkBranco">
                            <asp:LinkButton ID="btnProximo" ToolTip="Confira o próximo job" runat="server" OnClick="btnProximo_Click"><small>Próximo</small> »</asp:LinkButton>
                        </div>
                        <div class="limpa"></div>
                    </div>
                    <div class="portfolioInformacoes">
                        <h2><asp:Label ID="lblSite" runat="server" /></h2>
                        <p><strong>Job:</strong>
                            <asp:Label ID="lblJob" runat="server" /></p>
                        <p><strong>Tecnologias:</strong>
                            <asp:Label ID="lblTecnologias" runat="server" /></p>
                        <p>
                            <asp:Image ID="imgPlus" ImageUrl="~/Images/plus.png" ImageAlign="AbsMiddle" runat="server" />
                            <asp:HyperLink ID="lnkVisite" NavigateUrl="#" Target="_blank" runat="server">VISITE O SITE</asp:HyperLink>
                        </p>
                    </div>
                </div>
            </div>
            <!-- Fim do portfólio -->
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
    <!-- Início das soluções -->
    <div class="solucoesGeral">
        <div class="solucoes">
            <div class="solucoesEsq">
                <h3 class="lnkBranco">
                    <asp:HyperLink ID="lnkCriacaoDeSites" NavigateUrl="~/Solucoes/Criacao-de-Sites" runat="server">Criação de Sites</asp:HyperLink>
                </h3>
                <div class="solucoesTxt entrelinhamento">
                    <br />
                    A Poob Info é uma empresa especializada na criação e no desenvolvimento de sites, hotsites, blogs e e-commerces, elaborando uma interface de fácil acessibilidade e navegação. Oferecemos todas as etapas necessárias para o processo...
                </div>
                <asp:Image ID="imgCriacaoDeSites" ImageUrl="~/Images/criacao-de-sites.png" ImageAlign="AbsMiddle" AlternateText="Criação de Sites" runat="server" />
            </div>
            <div class="solucoesDir">
                <h3 class="lnkBranco">
                    <asp:HyperLink ID="lnkOtimizacaoSEO" NavigateUrl="~/Solucoes/Otimizacao-de-Sites-SEO" runat="server">Otimização de Sites / SEO</asp:HyperLink>
                </h3>
                <div class="solucoesTxt entrelinhamento">
                    <br />
                    A Poob Info oferece soluções de otimização de sites para ser melhor compreendido pelos motores de busca, com o intuito de aumentar a relevância e o posicionamento do seu site nos principais mecanismos de busca, como o Google, Yahoo, Bing...
                </div>
                <asp:Image ID="imgOtimizacaoSEO" ImageUrl="~/Images/otimizacao-de-sites-seo.png" AlternateText="Otimização de Sites / SEO" runat="server" />
            </div>
            <div class="limpa"></div>
        </div>
    </div>
    <!-- Fim das soluções -->
</asp:Content>