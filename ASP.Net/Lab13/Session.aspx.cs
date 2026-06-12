using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab_13
{
    public partial class Session : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStore_Click(object sender, EventArgs e)
        {
            Session["Name"] = txtName.Text;
            Session["Age"] = txtAge.Text;
            Session.Timeout = 1;
            lblMessage.Text = "Data stored!";
        }

        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            if (Session["Name"] != null && Session["Age"] != null) 
            {
                lblMessage.Text = $"Name: {Session["Name"]}, Age: {Session["Age"]}";
            }
            else
            {
                lblMessage.Text = "Session data not found or expired!";
            }
        }

        protected void btnabandon_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            lblMessage.Text = "Session abandoned!";
        }
    }
}