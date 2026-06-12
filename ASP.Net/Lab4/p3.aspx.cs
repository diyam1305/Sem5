using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab_4
{
    public partial class p3 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack && ddlCount.SelectedValue != "0")
            {
                CreateDynamicControls(int.Parse(ddlCount.SelectedValue));
            }
        }

        protected void ddlCount_SelectedIndexChanged(object sender, EventArgs e)
        {
            int count = int.Parse(ddlCount.SelectedValue);
            CreateDynamicControls(count);
        }

        private void CreateDynamicControls(int count)
        {
            pnlDynamic.Controls.Clear(); 

            for (int i = 1; i <= count; i++)
            {
                Label lbl = new Label();
                lbl.ID = "lbl" + i;
                lbl.Text = "Label " + i + ": ";
                pnlDynamic.Controls.Add(lbl);

                TextBox txt = new TextBox();
                txt.ID = "txt" + i;
                txt.Width = 200;
                pnlDynamic.Controls.Add(txt);

                pnlDynamic.Controls.Add(new Literal { Text = "<br /><br />" });
            }
        }
    }
}
