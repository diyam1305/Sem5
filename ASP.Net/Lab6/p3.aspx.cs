using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab_6
{
    public partial class p3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Register(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string name = txtName.Text;
                string email = txtEmail.Text;
                string dob = Calendar.SelectedDate.ToShortDateString();

                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = $"<b>Registration Successful!</b><br/>Name: {name}<br/>Email: {email}<br/>DOB: {dob}";
            }
            else
            {
                lblMessage.Text = "";
            }
        }
        protected void LnkClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtEmail.Text = "";
            Calendar.SelectedDates.Clear();
            lblMessage.Text = "";
        }
        protected void cvDOB(object source, ServerValidateEventArgs args)
        {
            if (Calendar.SelectedDate == DateTime.MinValue)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}
