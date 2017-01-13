<%@ Page Title="Poob Info – Erro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Erro.aspx.cs" Inherits="Web.Erro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="erroGeral">
        <div class="erro">
            <asp:Image ID="imgErro" ImageUrl="~/Images/erro.png" AlternateText="Erro 404" runat="server" />
            <div class="erroCol">
                <h2>Causas mais prováveis:</h2>
                Você digitou o endereço errado;
                <br />
                O conteúdo não está mais no ar;
                <br />
                A página mudou de lugar.
            </div>
            <div class="erroCol">
                <h2>Vá para o site da Poob Info:</h2>
                <asp:HyperLink ID="lnkPoobInfo" NavigateUrl="~/Home" ImageUrl="~/Images/logo-poob-info.png" ToolTip="Poob Info" runat="server" />
            </div>
            <div class="limpa"></div>
        </div>
    </div>
</asp:Content>