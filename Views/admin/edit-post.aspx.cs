using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_admin_edit_post : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEditar_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null) { 
        int status = Convert.ToInt32(dplStatus.SelectedValue);
        int id = Convert.ToInt32(Request.QueryString["id"]);
        modeloPost post = new modeloPost(txtTitulo.Text, txtAutor.Text, txtConteudo.Text, status);
        post.EditarPostPorId(id, post);
        Response.Redirect("index.aspx");
        }
        else
        {

        }
        
    }
}