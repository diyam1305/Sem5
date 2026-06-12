using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab_12
{
    public partial class p1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnpersistant_Click(object sender, EventArgs e)
        {
            Response.Cookies["User"]["Name"] = txtName.Text;
            Response.Cookies["User"]["Age"] = txtAge.Text;
            lblData.Text = "Cookie Created Successfully !! ";
            txtName.Text = "";
            txtAge.Text = "";
        }

        protected void btnnonpersistant_Click(object sender, EventArgs e)
        {
            Response.Cookies["User"]["Name"] = txtName.Text;
            Response.Cookies["User"]["Age"] = txtAge.Text;
            lblData.Text = "Cookie Created Successfully !! ";
            Response.Cookies["User"].Expires = DateTime.Now.AddSeconds(10);
            txtName.Text = "";
            txtAge.Text = "";
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["User"] != null)
            {
                lblData.ForeColor = System.Drawing.Color.Blue;
                lblData.Text = "Name is : " + Request.Cookies["User"]["Name"].ToString() + "<br/>" + "Age is : " + Request.Cookies["User"]["Age"].ToString() + "<br/>" + " - CookieRetrived";
            }
            else
            {
                lblData.ForeColor = System.Drawing.Color.Red;
                lblData.Text = "Cookie Not Available!!";
            }
        }
    }
}