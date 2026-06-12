using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab_13
{
    public partial class dhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("dlogin.aspx"); // if session expired or not logged in
            }
            else
            {
                lblUser.Text = Session["UserName"].ToString();
            }
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon(); // clear session
            Response.Redirect("Login.aspx");
        }
    }
}