<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Views_posts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="conteudo" Runat="Server">
    
    <form id="form1" runat="server">
        <%
        modeloPost post = new modeloPost();
        List<modeloPost> posts = post.SelecionarPosts();
        posts.Reverse();
        int contador = 1;
        int i = 1;
        if (Request.QueryString["count"] != null)
        {
            contador = Convert.ToInt32(Request.QueryString["count"]);
            i = contador;
        }
        while(i <= contador + 5){
            if (i > posts.Count)
            {
                break;
            } else
            {
                post = posts[i - 1];

                hplTitulo.NavigateUrl = "single.aspx?id=" + post.Id;
                hplTitulo.Text = post.Titulo;
                lblAutor.Text = post.Autor;
                lblData.Text = post.Data.ToShortDateString();
                if (post.Conteudo.Length > 500) { lblConteudo.Text = post.Conteudo.Substring(0, 500) + "..."; } else { lblConteudo.Text = post.Conteudo; }
                lblVisitas.Text = post.Visitas.ToString();
            }
            i = 1 + i;
        
            %>
        <h1><asp:HyperLink ID="hplTitulo" runat="server">Titulo</asp:HyperLink></h1>
        <asp:Label ID="lblConteudo" runat="server" Text="Resumao"></asp:Label>
        <br />
        Por:
        <asp:Label ID="lblAutor" runat="server" Text="autor"></asp:Label>
&nbsp;Em:
        <asp:Label ID="lblData" runat="server" Text="data"></asp:Label>
&nbsp;Visitas:
        <asp:Label ID="lblVisitas" runat="server" Text="visitas"></asp:Label>
        <br />
        <hr />
        <br />
        <%
                if (posts.Count >= contador + 5) { 
             %>
        <asp:LinkButton ID="lbtnNext" runat="server" OnClick="lbtnNext_Click">Proxima Pagina</asp:LinkButton>
        
        <%
                }
        }%>
    </form>
</asp:Content>

