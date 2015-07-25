<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="single.aspx.cs" Inherits="Views_single" %>

<asp:Content ID="Content1" ContentPlaceHolderID="conteudo" Runat="Server">
    <form id="form1" runat="server">
        <% modeloPost post = new modeloPost();
            if (Request.QueryString["id"] == null)
           {

           }
           else
           {
               int id = Convert.ToInt32(Request.QueryString["id"]);
               post = post.SelecionarPostPorId(id);
               if (post == null)
               {

               }
               else
               {
                   lblTitulo.Text = post.Titulo;
                   lblAutor.Text = post.Autor;
                   lblData.Text = post.Data.ToShortDateString();
                   lblConteudo.Text = post.Conteudo;
                   lblVisitas.Text = post.Visitas.ToString();
               }
           } %>
        <h1><asp:Label ID="lblTitulo" runat="server" Text="Titulo"></asp:Label></h1>
        <br />
        <h3>Por:
        <asp:Label ID="lblAutor" runat="server" Text="autor"></asp:Label>
&nbsp;Em:
        <asp:Label ID="lblData" runat="server" Text="data"></asp:Label>
        &nbsp;Visitas:
            <asp:Label ID="lblVisitas" runat="server" Text="visitas"></asp:Label>
        <br /></h3>
        <asp:Label ID="lblConteudo" runat="server" Text="Conteudo"></asp:Label>
    </form>
</asp:Content>

