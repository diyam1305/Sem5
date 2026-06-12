using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab_6
{
    public partial class p4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string name = txtCountryName.Text.Trim();
                string code = txtCountryCode.Text.Trim();
                string item = $"{name} ({code})";

                chkCountries.Items.Add(item);

                txtCountryName.Text = "";
                txtCountryCode.Text = "";
                lblResult.Text = "";
            }
        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            lblResult.Text = "";

            foreach (ListItem item in chkCountries.Items)
            {
                if (item.Selected)
                {
                    lblResult.Text += item.Text + "<br/>";
                }
            }

            if (string.IsNullOrEmpty(lblResult.Text))
            {
                lblResult.Text = "No countries selected.";
                lblResult.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                lblResult.ForeColor = System.Drawing.Color.DarkGreen;
            }
        }
    }
}
