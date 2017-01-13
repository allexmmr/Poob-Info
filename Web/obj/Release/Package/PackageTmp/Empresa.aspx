<%@ Page Title="Poob Info – Empresa" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empresa.aspx.cs" Inherits="Web.Empresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="conteudo entrelinhamento lnkPreto">
        <h1>
            <asp:Image ID="Image1" ImageUrl="~/Images/icon.png" ImageAlign="Baseline" runat="server" />
            Poob Info
        </h1>
        <hr />
        <h3 style="text-align: justify;">
            <strong>Poob Info</strong> é uma empresa de tecnologia, voltada para a criação de sites, hotsites, portais, e-commerces e intranet, otimização de sites / SEO, desenvolvimento de softwares, criação de logos, banners e peças para disparo de e-mail marketing, entre outros serviços.
        </h3>
        <br />
        <div class="empColEsq">
            <h2>História</h2>
            <hr />
            <h3>
                Fundada em 2008, por Allex Rocha, para suprir as necessidades do mercado e atender a crescente demanda na área Tecnologia da Informação (TI), com as atividades de desenvolvimento de sites, softwares, e-mail marketing, entre outras. Sua sede situa-se na região da Avenida Paulista, na cidade de São Paulo, principal centro financeiro, corporativo e mercantil da América do Sul.
            </h3>
            <h2>Missão</h2>
            <hr />
            <h3>
                <asp:Image ID="imgMissao" ImageUrl="~/Images/empresa-missao.png" ImageAlign="Left" runat="server" /> Ser uma Empresa reconhecida como referência em tecnologia em âmbito nacional e internacional, com o objetivo de servir seus clientes, parceiros e colaboradores.
            </h3>
        </div>
        <div class="empColCentro">
            <h2>Valores</h2>
            <hr />
            <p style="text-align: center;">
                <asp:Image ID="imgValores" ImageUrl="~/Images/empresa-valores.png" runat="server" />
            </p>
            <h3>
                O que fazemos, e como fazemos, é fruto de nossos valores. Na Poob Info, diariamente nos inspiramos em valores como inteligência, dinamismo, objetividade e criatividade em busca de alcançar os melhores resultados para o sucesso de nossos <asp:HyperLink ID="lnkClientes" NavigateUrl="~/Clientes" ToolTip="Confira os nossos Clientes" runat="server">Clientes</asp:HyperLink>.
            </h3>
        </div>
        <div class="empColDir">
            <h2>Diferenciais</h2>
            <hr />
            <h3>
                <asp:Image ID="imgDiferenciais" ImageUrl="~/Images/empresa-diferenciais.png" ImageAlign="Left" runat="server" /> Trabalhamos em estreita colaboração com a sua Empresa, para obter uma compreensão clara de seus objetivos, para assim, escolher quais serão as formas de comunicação digital que irão alcançar os melhores resultados para a sua Empresa. Para saber mais sobre nossos recursos digitais, consulte o nosso <asp:HyperLink ID="lnkPortfolio" NavigateUrl="~/Portfolio" ToolTip="Consulte o nosso Portfólio" runat="server">Portfólio</asp:HyperLink>.
            </h3>
        </div>
        <div class="limpa"></div>
    </div>
</asp:Content>