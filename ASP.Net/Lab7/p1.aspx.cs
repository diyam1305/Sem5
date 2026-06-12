using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab_7
{
    public partial class p1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { }
        protected void btn_click(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(txtNo1.Text);
            double num2 = Convert.ToDouble(txtNo2.Text);
            double result = 0;
            Button btn = (Button)sender;

            switch (btn.ID)
            {
                case "btnAdd":
                    result = num1 + num2;
                    break;
                case "btnSub":
                    result = num1 - num2;
                    break;
                case "btnMul":
                    result = num1 * num2;
                    break;
                case "btnDiv":
                    result = num1 / num2;
                    break;
                default:
                    Console.WriteLine("Enter valid number");
                    break;
            }
            txtanswerbox.Text = result.ToString();
        }
    }
}