using System;
using System.Web.UI;

namespace lab_6
{
    public partial class p1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) 
            {
                string name = txtName.Text;
                string age = txtAge.Text;
                string email = txtEmail.Text;

                lblResult.Text = $"Registration Successful!<br/>Name: {name}<br/>Age: {age}<br/>Email: {email}";
            }
            else
            {
                lblResult.Text = "Please correct the errors and submit again.";
                lblResult.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
