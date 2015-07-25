using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

    public partial class Views_admin_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            modeloPost post = new modeloPost();
            if (Request.QueryString["id"] != null && Request.QueryString["action"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                if(Request.QueryString["action"] == "1"){
                        post.AtualizarStatus(id);
                        Response.Redirect("index.aspx");
                    } 
                else if(Request.QueryString["action"] == "2") 
                    {
                    
                    }
                else if (Request.QueryString["action"] == "3")
                    {
                        post.DeletePost(id);
                        Response.Redirect("index.aspx");
                    }
            }
        }

        protected void lbtnNext_Click(object sender, EventArgs e)
        {
            int count = 7;
            if (Request.QueryString["count"] != null)
            {
                count += Convert.ToInt32(Request.QueryString["count"]);
            }
            Response.Redirect("index.aspx?count=" + count);
        }
    }