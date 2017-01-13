<%@ Page Title="Poob Info – Clientes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="Web.Clientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="conteudo">
        <h1>
            <asp:Image ID="Image1" ImageUrl="~/Images/icon.png" ImageAlign="Baseline" runat="server" />
            Clientes
        </h1>
        <hr />
        <div class="cliCol">
            <asp:GridView ID="gvCliente" AllowPaging="true" AutoGenerateColumns="false" GridLines="None" HorizontalAlign="Left" PageSize="5" DataSourceID="ObjectDataSource1" runat="server">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="cliColEsq">
                                <asp:HyperLink ID="lnkImagem" NavigateUrl='<%# Bind("Url") %>' Target="_blank" ImageUrl='<%# Bind("Imagem") %>' ToolTip='<%# Bind("Nome") %>' runat="server"></asp:HyperLink>
                            </div>
                            <div class="cliColDir entrelinhamento lnkPreto">
                                <h1>
                                    <asp:Label ID="lblNome" Text='<%# Bind("Nome") %>' runat="server"></asp:Label>
                                </h1>
                                <span class="cliTitulo">Site: </span><asp:HyperLink ID="lnkSite" NavigateUrl='<%# Bind("Url") %>' Target="_blank" Text='<%# Bind("Url") %>' runat="server"></asp:HyperLink>
                            </div>
                            <div class="limpa"></div>
                            <hr />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <PagerStyle HorizontalAlign="Center" CssClass="lnkCliente" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" SelectMethod="Listar" TypeName="Library.Common.Cliente" runat="server"></asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>