<%@ Page Title="Poob Info – Sitemap" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sitemap.aspx.cs" Inherits="PoobInfo.Sitemap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="conteudo">
        <h1>
            <asp:Image ID="Image1" ImageUrl="~/Images/icon.png" ImageAlign="Baseline" runat="server" />
            Sitemap
        </h1>
        <hr />
        <div class="sitemap">
            <asp:TreeView ID="TreeView" CssClass="lnkPreto" runat="server">
                <Nodes>
                    <asp:TreeNode NavigateUrl="#" Text="Poob Info" Value="Poob Info">
                        <asp:TreeNode NavigateUrl="~/Home" Text="Home" Value="Home"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Empresa" Text="Empresa" Value="Empresa"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Solucoes/" Text="Soluções" Value="Soluções">
                            <asp:TreeNode NavigateUrl="~/Solucoes/Criacao-de-Sites" Text="Criação de Sites" Value="Criação de Sites"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Solucoes/E-mail-Marketing" Text="E-mail Marketing" Value="E-mail Marketing"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Solucoes/Otimizacao-de-Sites-SEO" Text="Otimização de Sites / SEO" Value="Otimização de Sites / SEO"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Clientes" Text="Clientes" Value="Clientes"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Portfolio" Text="Portfólio" Value="Portfólio"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Contato" Text="Contato" Value="Contato"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="#" Text="Redes Sociais" Value="Redes Sociais">
                            <asp:TreeNode NavigateUrl="http://www.facebook.com/PoobInfo" Target="_blank" Text="Facebook" Value="Facebook"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="https://twitter.com/PoobInfo" Target="_blank" Text="Twitter" Value="Twitter"></asp:TreeNode>
                        </asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
            </asp:TreeView>
        </div>
    </div>
</asp:Content>