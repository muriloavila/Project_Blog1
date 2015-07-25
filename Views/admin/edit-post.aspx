<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="edit-post.aspx.cs" Inherits="Views_admin_edit_post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="conteudo" Runat="Server">
    <form id="form1" runat="server">
        <% if (Request.QueryString["id"] == null)
           {

           }
           else
           {
               int id = Convert.ToInt32(Request.QueryString["id"]);
               modeloPost post = new modeloPost();
               post = post.SelecionarPostPorId(id);
               if (post == null)
               {

               }
               else
               {
                   txtTitulo.Text = post.Titulo;
                   txtAutor.Text = post.Autor;
                   txtConteudo.Text = post.Conteudo;
                   if (post.Status == 1)
                   {
                       dplStatus.Items.FindByValue("1").Selected = true;
                       dplStatus.Items.FindByValue("0").Selected = false;
                   }
                   else if (post.Status == 0)
                   {
                       dplStatus.Items.FindByValue("1").Selected = false;
                       dplStatus.Items.FindByValue("0").Selected = true;
                   }
               }
           }
             %>
    <asp:Label ID="Label1" runat="server" Text="Adicionar Post |"></asp:Label>
    <asp:HyperLink ID="hiperVoltar" runat="server">Voltar</asp:HyperLink>
    <br />
    <br />
    <asp:Label ID="lblTestes" runat="server"></asp:Label>
    <br />
        Titulo:
        <asp:TextBox ID="txtTitulo" runat="server" Height="16px"></asp:TextBox>
        <br />
        Autor:
        <asp:TextBox ID="txtAutor" runat="server"></asp:TextBox>
        <br />
        Status:
        <asp:DropDownList ID="dplStatus" runat="server" Width="119px">
            <asp:ListItem Selected="True" Value="1">Ativado</asp:ListItem>
            <asp:ListItem Value="0">Inativado</asp:ListItem>
        </asp:DropDownList>
        <br />
        Conteudo:<br />
        <asp:TextBox ID="txtConteudo" runat="server" Height="290px" Rows="30" TextMode="MultiLine" Width="478px"></asp:TextBox>
        <br />
        <asp:Button ID="btnEditar" runat="server" OnClick="btnEditar_Click" Text="Editar" />
        <br />
</form>
</asp:Content>

