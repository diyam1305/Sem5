using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace lab_11
{
    public partial class ViewState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            ViewState["Name"] = txtName.Text;
            ViewState["EnrollmentNo"] = txtEnrollmentNo.Text;
            txtName.Text = "";
            txtEnrollmentNo.Text = "";
        }
        protected void btnretrive_Click(object sender, EventArgs e)
        {
            txtName.Text = ViewState["Name"].ToString();
            txtEnrollmentNo.Text = ViewState["EnrollmentNo"].ToString();
        }
    }
}