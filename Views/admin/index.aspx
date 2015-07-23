<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Views_admin_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="conteudo" Runat="Server">
    <form id="form1" runat="server">
       <%modeloPost post = new modeloPost();
      List<modeloPost> postagens = post.SelecionarPosts();
      foreach(modeloPost posts in postagens){
          %><%hplStatus.NavigateUrl = "index.aspx?action=1&&id="+posts.Id;
              hplEditar.NavigateUrl = "index.aspx?action=2&&id=" + posts.Id;
              hplDeletar.NavigateUrl = "index.aspx?action=3&&id=" + posts.Id;
              
               hplTitulo.Text = posts.Titulo; 
               lblAutor.Text = posts.Autor;
               lblData.Text = posts.Data.ToShortDateString().ToString(); 
               lblVisitas.Text = posts.Visitas.ToString();
               lblConteudo.Text = posts.Conteudo.Substring(0, 500) + "..."; 
               if (posts.Status == 1) { hplStatus.Text = "Desativar"; }
               else if (posts.Status == 0) { hplStatus.Text = "Ativar"; } %>


       <h1><asp:HyperLink ID="hplTitulo" runat="server">Titulo</asp:HyperLink></h1>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Autor: "></asp:Label>
        <asp:Label ID="lblAutor" runat="server" Text="autor"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" Text="Data: "></asp:Label>
        <asp:Label ID="lblData" runat="server" Text="data"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server" Text="Visitas: "></asp:Label>
        <asp:Label ID="lblVisitas" runat="server" Text="visitas"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblConteudo" runat="server" Text="Resumão"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="hplStatus" runat="server">HyperLink</asp:HyperLink>
&nbsp;<asp:HyperLink ID="hplEditar" runat="server">Editar</asp:HyperLink>
&nbsp;<asp:HyperLink ID="hplDeletar" runat="server">Deletar</asp:HyperLink>
       <br /> <hr /><br />
       <%} %>
       <br />
       </form>
</asp:Content>

