using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace lab_7
{
    public partial class p2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            DateTime dob = Calendar.SelectedDate;

            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) || dob == DateTime.MinValue)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please fill all the fields!";
                return;
            }
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = $"Thank you for registering, {name}!";
        }
        protected void LnkClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtEmail.Text = "";
            Calendar.SelectedDates.Clear();
            lblMessage.Text = "";
        }
    }
}
