using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Contato : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        txtEmail.Text = "";
        txtMensagem.Text = "";
        txtNome.Text = "";
        lblMensagem.Text = "Sua Mensagem foi Enviado";
    }
}