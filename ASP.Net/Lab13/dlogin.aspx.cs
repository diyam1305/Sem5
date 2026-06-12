using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab_13
{
    public partial class dlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string connStr = "Data Source=LAPTOP-67BFED57\\SQLEXPRESS01;Initial Catalog=CRUD_OP;Integrated Security=True;";

            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "SELECT COUNT(*) FROM Users WHERE UserName=@UserName AND Password=@Password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@UserName", username);
                cmd.Parameters.AddWithValue("@Password", password);

                con.Open();
                int count = (int)cmd.ExecuteScalar();

                if (count == 1)
                {
                    Session["UserName"] = username;
                    Response.Redirect("dhome.aspx");
                }
                else
                {
                    lblMsg.Text = "Invalid Username or Password!";
                }
            }
        }
    }
}