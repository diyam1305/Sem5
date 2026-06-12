using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab_11
{
    public partial class ViewState_QueryString : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            String Email = HttpUtility.UrlEncode(txtEmail.Text);
            String Password = HttpUtility.UrlEncode(txtPass.Text);
            Response.Redirect("Data.aspx?Email-ID=" + Email + "&Password=" + Password);
        }
    }
}