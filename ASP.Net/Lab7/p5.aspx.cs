using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab_7
{
    public partial class p5 : System.Web.UI.Page
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
    }
}