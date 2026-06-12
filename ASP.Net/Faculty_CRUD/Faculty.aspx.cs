using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Faculty_CRUD
{
    public partial class Faculty : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        void GetFacultyDetail()
        {
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("Faculty_CRUD_OP", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Event", "Select");
            con.Open();
            lstFac.DataSource = cmd.ExecuteReader();
            lstFac.DataBind();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetFacultyDetail();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connection))
            {
                using (SqlCommand cmd = new SqlCommand("Faculty_CRUD_OP", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    cmd.Parameters.AddWithValue("@Event", "Add");
                    cmd.Parameters.AddWithValue("@Fac_FirstName", SqlDbType.VarChar).Value = txtFirstname.Text.Trim();
                    cmd.Parameters.AddWithValue("@Fac_LastName", SqlDbType.VarChar).Value = txtLastname.Text.Trim();
                    cmd.Parameters.AddWithValue("@Fac_ContactNo", SqlDbType.Int).Value = txtContactNo.Text.Trim();
                    cmd.Parameters.AddWithValue("@Fac_EmailID", SqlDbType.VarChar).Value = txtEmailID.Text.Trim();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    cleardata();
                }
            }
            GetFacultyDetail();
        }
        void cleardata()
        {
            txtFirstname.Text = String.Empty;
            txtLastname.Text = String.Empty;
            txtContactNo.Text = String.Empty;
            txtEmailID.Text = String.Empty;
        }
        protected void ListFaculty_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case ("FacDelete"):
                    int FacID = Convert.ToInt32(e.CommandArgument);
                    deleteFaculty(FacID);
                    break;
                case ("FacEdit"):
                    FacID = Convert.ToInt32(e.CommandArgument);
                    UpdateFacultyDetail(FacID);
                    break;
            }
        }
        void deleteFaculty(int FacID)
        {
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("Faculty_CRUD_OP", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Event", "Delete");
            cmd.Parameters.AddWithValue("@Fac_ID", FacID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GetFacultyDetail();
        }
        void UpdateFacultyDetail(int FacID)
        {
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("Faculty_CRUD_OP", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Event", "SelectbyID");
            cmd.Parameters.AddWithValue("@Fac_ID", FacID);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                hfRecord.Value = FacID.ToString();
                txtFirstname.Text = dr["Fac_FirstName"].ToString();
                txtLastname.Text = dr["Fac_LastName"].ToString();
                txtContactNo.Text = dr["Fac_ContactNo"].ToString();
                txtEmailID.Text = dr["Fac_EmailID"].ToString();
            }
            dr.Dispose();
            con.Close();
            btnAdd.Visible = false;
            btnUpdate.Visible = true;
            GetFacultyDetail();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            SqlCommand cmd = new SqlCommand("Faculty_CRUD_OP", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Fac_ID", Convert.ToInt32(hfRecord.Value));
            cmd.Parameters.AddWithValue("@Event", "Update");
            cmd.Parameters.AddWithValue("@Fac_FirstName", SqlDbType.VarChar).Value =
            txtFirstname.Text.Trim();
            cmd.Parameters.AddWithValue("@Fac_LastName", SqlDbType.VarChar).Value =
            txtLastname.Text.Trim();
            cmd.Parameters.AddWithValue("@Fac_ContactNo", SqlDbType.Int).Value = 
                txtContactNo.Text.Trim();
            cmd.Parameters.AddWithValue("@Fac_EmailID", SqlDbType.VarChar).Value = 
                txtEmailID.Text.Trim();
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GetFacultyDetail();
            btnAdd.Visible = true;
            btnUpdate.Visible = false;
            hfRecord.Value = string.Empty;
            cleardata();  
        }
    }
}