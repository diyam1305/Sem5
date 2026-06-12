using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab_11
{
    public partial class Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                String Email, Pass;
                Email = Request.QueryString["Email-ID"];
                Pass = Request.QueryString["Password"];
                lblInfo.Text = "Entered Email-ID is: " + Email + "</br>" + "Entered Password is: " + Pass;
            }
        }
    }
}