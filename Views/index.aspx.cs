using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_posts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lbtnNext_Click(object sender, EventArgs e)
    {
        int count = 7;
        if (Request.QueryString["count"] != null)
        {
            count += Convert.ToInt32(Request.QueryString["count"]);
        }
        Response.Redirect("posts.aspx?count=" + count);
    }
}