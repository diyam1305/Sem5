using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab_6
{
    public partial class p2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    double num1 = Convert.ToDouble(txtNo1.Text);
                    double num2 = Convert.ToDouble(txtNo2.Text);
                    string result = "";

                    Button btn = (Button)sender;
                    switch (btn.ID)
                    {
                        case "btnAdd":
                            result = (num1 + num2).ToString();
                            break;

                        case "btnSub":
                            result = (num1 - num2).ToString();
                            break;

                        case "btnMul":
                            result = (num1 * num2).ToString();
                            break;

                        case "btnDiv":
                            result = (num1 / num2).ToString();
                            break;
                    }
                    answerbox.Text = result;
                }
                catch
                {
                    answerbox.Text = "Error in input";
                }
            }
        }
    }
}
