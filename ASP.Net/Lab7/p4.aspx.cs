using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab_7
{
    public partial class p4 : System.Web.UI.Page
    {
        private Dictionary<string, List<string>> _options = new Dictionary<string, List<string>>()
        {
            {"Gujarat", new List<string>{"Rajkot", "Jamnagar", "Morbi"} },
            { "Rajasthan", new List<string> { "Jaipur", "Udaipur", "Nathdwara" } },
            { "Maharashtra", new List<string> { "Mumbai", "Nasik", "Pune" } }
        };
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rad_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            ddlOptions.Items.Clear();
            string state = rbstate.SelectedValue;

            foreach (var opt in _options[state])
            {
                ddlOptions.Items.Add(opt);
            }
        }
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            lblResult.Text = $"{ddlOptions.SelectedValue} and {rbstate.SelectedValue}";
        }
    }
}