<%@ Page Title="Poob Info – Soluções: E-mail Marketing" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="E-mail-Marketing.aspx.cs" Inherits="PoobInfo.Solucoes.E_mail_Marketing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="geral">
        <div class="conteudo entrelinhamento">
            <h1>
                <asp:Image ID="Image1" ImageUrl="~/Images/icon.png" ImageAlign="Baseline" runat="server" />
                E-mail Marketing
            </h1>
            <hr />
            <div class="margin"></div>
            <h3>
                A Poob Info oferece o serviço de e-mail marketing para sua Empresa desenvolver relações com clientes potenciais e/ou com clientes atuais. O e-mail marketing é constituído em quatro etapas, a segmentação do público-alvo, a elaboração da arte (design), o disparo e o relatório estatístico do e-mail marketing.
            </h3>
            <h3>
                Faça o acompanhamento das suas estatísticas de e-mail marketing:
            </h3>
            <h4>
                • Disparo de e-mails marketing;
                <br />
                • Confirmação de envio;
                <br />
                • Quem visualizou o e-mail;
                <br />
                • Quem clicou no e-mail;
                <br />
                • Possíveis erros de destinatários.
            </h4>
            <br />
            <h3>
                Disponibilizamos outros tipos de serviços para que a sua Empresa fique ainda mais completa, como:
            </h3>
            <h4 class="lnkPreto">
                • <asp:HyperLink ID="lnkCriacaoDeSites" NavigateUrl="~/Solucoes/Criacao-de-Sites" runat="server">Criação de Sites</asp:HyperLink>;
                <br />
                • <asp:HyperLink ID="lnkOtimizacaoSEO" NavigateUrl="~/Solucoes/Otimizacao-de-Sites-SEO" runat="server">Otimização de Sites / SEO</asp:HyperLink>;
                <br />
                • Criação de banners estáticos ou animados ideal para divulgação de produtos, serviços, ofertas e promoção.
            </h4>
        </div>
    </div>
</asp:Content>