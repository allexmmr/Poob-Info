<%@ Page Title="Poob Info – Contato" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="Web.Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="conteudo">
        <div class="conColEsq">
            <h1>
                <asp:Image ID="Image1" ImageUrl="~/Images/icon.png" ImageAlign="Baseline" runat="server" />
                Contato
            </h1>
            <hr />
            <div class="margin"></div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="panelFormulario" runat="server">
                        <h3 class="entrelinhamento">Preencha todos os campos abaixo para entrar em contato com a <strong>Poob Info</strong> com suas críticas, dúvidas, informações sobre orçamentos, sugestões ou outros assuntos.</h3>
                        <asp:TextBox ID="txtNomeCompleto" placeholder="Nome completo" CssClass="txt" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqNome" ErrorMessage="Por favor, preencha o seu nome completo." ControlToValidate="txtNomeCompleto" ValidationGroup="Formulario" SetFocusOnError="true" runat="server"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txtEmail" placeholder="E-mail" CssClass="txt" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqEmail" ErrorMessage="Por favor, preencha o seu e-mail." ControlToValidate="txtEmail" ValidationGroup="Formulario" SetFocusOnError="true" Display="Dynamic" runat="server"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regularExpression" ErrorMessage="Por favor, preencha um e-mail válido." ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Formulario" SetFocusOnError="true" Display="Dynamic" runat="server"></asp:RegularExpressionValidator>
                        <br />
                        <asp:DropDownList ID="ddlAssunto" CssClass="ddl" runat="server">
                            <asp:ListItem Selected="True">Assunto</asp:ListItem>
                            <asp:ListItem>Críticas</asp:ListItem>
                            <asp:ListItem>Dúvidas</asp:ListItem>
                            <asp:ListItem>Orçamentos</asp:ListItem>
                            <asp:ListItem>Sugestões</asp:ListItem>
                            <asp:ListItem>Outros</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="reqAssunto" ErrorMessage="Por favor, selecione o assunto." ControlToValidate="ddlAssunto" ValidationGroup="Formulario" SetFocusOnError="true" runat="server"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txtMensagem" placeholder="Mensagem" TextMode="MultiLine" CssClass="txt" Height="100px" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqMensagem" ErrorMessage="Por favor, preencha a mensagem." ControlToValidate="txtMensagem" ValidationGroup="Formulario" SetFocusOnError="true" runat="server"></asp:RequiredFieldValidator>
                        <br />
                        <div class="g-recaptcha" data-sitekey="6LdRWdcUAAAAAMau428OU6tjcAvjRJlfLvMfaTrG"></div>
                        <br/>
                        <asp:Button ID="btnEnviar" Text="Enviar" ToolTip="Enviar" CssClass="btn" ValidationGroup="Formulario" runat="server" OnClick="btnEnviar_Click" />
                        <asp:Button ID="btnLimpar" Text="Limpar" ToolTip="Limpar" CssClass="btn" runat="server" OnClick="btnLimpar_Click" />
                    </asp:Panel>
                    <asp:panel ID="panelMensagem" Visible="false" CssClass="mensagem" runat="server">
                        <h3 class="entrelinhamento"><asp:Label ID="lblMensagem" runat="server"></asp:Label></h3>
                    </asp:panel>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <div style="height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 99999; background-color: #FFFFFF; opacity: 0.7; text-align: center; position: fixed;">
                        <span style="top: 50%; left: 50%; margin-top: -16px; margin-left: -15px; position: fixed;"><img src="Images/loading.gif" alt="Loading" /></span>
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </div>
        <div class="conColDir">
            <h1>
                <asp:Image ID="Image2" ImageUrl="~/Images/icon.png" ImageAlign="Baseline" runat="server" />
                Mais Informações
            </h1>
            <hr />
            <div class="margin"></div>
            <p class="lnkPreto entrelinhamento">
                <strong>Suporte no Brasil</strong>
                <br />
                Email: <a href="mailto: contato@poob.com.br?subject=Contato" title="Envie-nos um email">contato@poob.com.br</a>
                <br />
                <br />
                <strong>Australian Support</strong>
                <br />
                Email: <a href="mailto: info@poob.com.au?subject=Contact" title="Send us an email">info@poob.com.au</a>
            </p>
        </div>
        <div class="limpa"></div>
    </div>
</asp:Content>