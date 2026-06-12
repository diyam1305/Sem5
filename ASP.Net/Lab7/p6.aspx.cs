using System;
using System.Web.UI;

namespace lab_7
{
    public partial class p6 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lstSummary.Items.Clear();
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            string title = txtTitle.Text;
            string priceText = txtPrice.Text;
            string quantityText = txtQuantity.Text;
            string discountText = ddlDiscount.SelectedValue;

            double price;
            int quantity;
            int discount;

            bool priceOk = double.TryParse(priceText, out price);
            bool quantityOk = int.TryParse(quantityText, out quantity);
            discount = int.Parse(discountText);

            if (!priceOk || !quantityOk || price < 0 || quantity <= 0)
            {
                lblExtendedPrice.Text = "Enter correct price and quantity.";
                lblDiscountAmount.Text = "";
                lblFinalPrice.Text = "";
                return;
            }

            double totalPrice = price * quantity;
            double discountAmount = totalPrice * discount / 100;
            double finalPrice = totalPrice - discountAmount;

            lblExtendedPrice.Text = "Extended Price: ₹" + totalPrice.ToString("F2");
            lblDiscountAmount.Text = "Discount: ₹" + discountAmount.ToString("F2");
            lblFinalPrice.Text = "Final Price: ₹" + finalPrice.ToString("F2");

            lstSummary.Items.Clear();
            lstSummary.Items.Add("Title: " + title);
            lstSummary.Items.Add("Books: " + quantity);
            lstSummary.Items.Add("Discount: ₹" + discountAmount.ToString("F2"));
            lstSummary.Items.Add("Final Price: ₹" + finalPrice.ToString("F2"));
        }
    }
}
