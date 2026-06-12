using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab_5
{
    public partial class p1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_click(object sender, EventArgs e)
        {
            lblSports.Text = string.Empty;
            foreach(ListItem item in chklst.Items)
            {
                if(item.Selected)
                {
                    lblsub.Text += $"{ item.Text} <br>";
                }
            }
        }
    }
}