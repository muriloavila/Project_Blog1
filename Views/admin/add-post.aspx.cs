using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_admin_add_post : System.Web.UI.Page
{
    int status;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPublicar_Click(object sender, EventArgs e)
    {
        if (txtAutor.Text == "")
        {
            lblTestes.Text = "Preencha o campo Autor";
        }
        else if (txtTitulo.Text == "")
        {
            lblTestes.Text = "Preencha o campo Titulo";
        }
        else if (txtConteudo.Text == "")
        {
            lblTestes.Text = "Preencha o campo Conteudo";
        }
        else if (dplStatus.Text == "")
        {
            lblTestes.Text = "Preencha o campo Status";
        }
        else
        {
            if (dplStatus.SelectedValue == "1")
            {
                status = 1;
            }
            else if (dplStatus.SelectedValue == "0")
            {
                status = 0;
            }

            modeloPost post = new modeloPost(txtTitulo.Text, txtAutor.Text, txtConteudo.Text, status);
            post.InserirPost(post);
            txtAutor.Text = "";
            txtConteudo.Text = "";
            txtTitulo.Text = "";
        }
    }
}