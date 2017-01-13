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
            <asp:DataList ID="dlCliente" HorizontalAlign="Left" RepeatColumns="3" RepeatDirection="Horizontal" DataSourceID="ObjectDataSource1" AutoGenerateColumns="false" runat="server">
                <ItemTemplate>
                    <div class="cliColInt">
                        <h2>
                            <asp:Label ID="lblNome" Text='<%# Bind("Name") %>' runat="server"></asp:Label>
                        </h2>
                        <asp:HyperLink ID="lnkImagem" NavigateUrl='<%# Bind("Url") %>' Target="_blank" ImageUrl='<%# Bind("Image") %>' ToolTip='<%# Bind("Name") %>' runat="server"></asp:HyperLink>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:ObjectDataSource ID="ObjectDataSource1" SelectMethod="ListAll" TypeName="Library.Common.Customer" runat="server"></asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>