<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="add-post.aspx.cs" Inherits="Views_admin_add_post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="conteudo" Runat="Server">
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Adicionar Post |"></asp:Label>
    <asp:HyperLink ID="hiperVoltar" runat="server">Voltar</asp:HyperLink>
    <br />
    <br />
    <asp:Label ID="lblTestes" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Titulo: "></asp:Label>
        <asp:TextBox ID="txtTitulo" runat="server" Height="16px"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Autor: "></asp:Label>
        <asp:TextBox ID="txtAutor" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Status: "></asp:Label>
        <asp:DropDownList ID="dplStatus" runat="server" Width="119px">
            <asp:ListItem Selected="True" Value="1">Ativado</asp:ListItem>
            <asp:ListItem Value="0">Inativado</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Conteudo:"></asp:Label>
        <br />
        <asp:TextBox ID="txtConteudo" runat="server" Height="290px" Rows="30" TextMode="MultiLine" Width="478px"></asp:TextBox>
        <br />
        <asp:Button ID="btnPublicar" runat="server" OnClick="btnPublicar_Click" Text="Publicar" />
        <br />
</form>
</asp:Content>

