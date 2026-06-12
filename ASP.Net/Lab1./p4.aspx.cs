using System;
using System.Web.UI.WebControls;

namespace lab_4
{
    public partial class p4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string countryName = txtCountryName.Text.Trim();
            string countryCode = txtCountryCode.Text.Trim();

            if (!string.IsNullOrEmpty(countryName) && !string.IsNullOrEmpty(countryCode))
            {
                string displayText = $"{countryName} ({countryCode})";
                ListItem item = new ListItem(displayText);
                chkCountries.Items.Add(item);
                txtCountryName.Text = "";
                txtCountryCode.Text = "";
                lblResult.Text = "";
            }
        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            lblResult.Text = "Selected Countries:<br/>";
            foreach (ListItem item in chkCountries.Items)
            {
                if (item.Selected)
                {
                    lblResult.Text += "- " + item.Text + "<br/>";
                }
            }
        }
    }
}
