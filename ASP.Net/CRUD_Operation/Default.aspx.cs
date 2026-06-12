using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CRUD_Operation
{
    public partial class Default : System.Web.UI.Page
    {
        public string strconstr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        public SqlCommand cmd;
        public SqlDataAdapter sda;
        public DataSet ds;
        public void CreateConnection()
        {
            SqlConnection con = new SqlConnection(strconstr);
            cmd = new SqlCommand();
            cmd.Connection = con;
        }
        public void OpenConnection()
        {
            cmd.Connection.Open();
        }
        public void CloseConnection()
        {
            cmd.Connection.Close();
        }
        public void DisposeConnection()
        {
            cmd.Connection.Dispose();
        }
        public void BindStudentData()
        {
            try
            {
                CreateConnection();
                OpenConnection();
                cmd.CommandText = "Pr_SelectAll";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Event", "Select");
                sda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                sda.Fill(ds);
                grdData.DataSource = ds;
                grdData.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Connection is not available');</script>");
            }
            finally
            {
                CloseConnection();
                DisposeConnection();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStudentData();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                CreateConnection();
                OpenConnection();
                cmd.CommandText = "Pr_SelectAll";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Event", "Add");
                cmd.Parameters.AddWithValue("@Stu_EnrollmentNo", Convert.ToInt32(txtEnrollmentNo.Text.Trim()));
                cmd.Parameters.AddWithValue("@Stu_StudentName", Convert.ToString(txtStudentName.Text.Trim()));
                cmd.Parameters.AddWithValue("@Stu_Semester", Convert.ToInt32(txtSemester.Text.Trim()));
                cmd.Parameters.AddWithValue("@Stu_SPI", Convert.ToDecimal(txtSPI.Text.Trim()));
                cmd.Parameters.AddWithValue("@Stu_CPI", Convert.ToDecimal(txtCPI.Text));
                int result = Convert.ToInt32(cmd.ExecuteNonQuery());
                if (result > 0) 
                {
                    Response.Write("<script>alert('Record Inserted Successfully');</script>");
                    BindStudentData();
                    ClearControls();
                }
                else 
                { 
                    Response.Write("<script>alert('Failed');</script>"); 
                }
            }
            catch (Exception ex) 
            { 
                Response.Write("<script>alert('Error Caught');</script>"); 
            }
            finally
            {
                CloseConnection();
                DisposeConnection();
            }
        }

        protected void grdData_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdData.EditIndex = e.NewEditIndex;
            this.BindStudentData();
        }

        protected void grdData_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdData.EditIndex = -1;
            this.BindStudentData();
        }

        protected void grdData_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                GridViewRow row = grdData.Rows[e.RowIndex];
                int E_ID = Convert.ToInt32(grdData.DataKeys[e.RowIndex].Values[0]);
                CreateConnection();
                OpenConnection();
                cmd.CommandText = "Pr_SelectAll";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Event", "Delete");
                cmd.Parameters.AddWithValue("@STU_ID", ID);
                int result = Convert.ToInt32(cmd.ExecuteNonQuery());
                if (result > 0)
                {
                    Response.Write("<script>alert('Record Deleted Successfully');</script>");
                    grdData.EditIndex = -1;
                    BindStudentData();
                    ClearControls();
                }
                else
                {
                    Response.Write("<script>alert('Connection not available');</script>");
                }
            }
            catch (Exception ex) 
            { 
                Response.Write("<script>alert('Error Caught');</script>"); 
            }
            finally
            {
                CloseConnection();
                DisposeConnection();
            }
        }

        protected void grdData_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                GridViewRow row = grdData.Rows[e.RowIndex];
                int E_ID = Convert.ToInt32(grdData.DataKeys[e.RowIndex].Values[0]);
                String EnrollmentNo = (row.FindControl("t_lblEnrollmentNo") as TextBox).Text;
                String StudentName = (row.FindControl("t_lblStudentName") as TextBox).Text;
                String Semester = (row.FindControl("t_lblSemester") as TextBox).Text;
                String SPI = (row.FindControl("t_txtSPI") as TextBox).Text;
                String CPI = (row.FindControl("t_lblCPI") as TextBox).Text;
                CreateConnection();
                OpenConnection();
                cmd.CommandText = "Pr_SelectAll";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Event", "Update");
                cmd.Parameters.AddWithValue("@Stu_EnrollmentNo", EnrollmentNo.Trim());
                cmd.Parameters.AddWithValue("@Stu_StudentName", StudentName.Trim());
                cmd.Parameters.AddWithValue("@Stu_Semester", Semester.Trim());
                cmd.Parameters.AddWithValue("@Stu_SPI", Convert.ToDecimal(SPI.Trim()));
                cmd.Parameters.AddWithValue("@Stu_CPI", Convert.ToDecimal(CPI.Trim()));
                cmd.Parameters.AddWithValue("@STU_ID", ID);
                int result = Convert.ToInt32(cmd.ExecuteNonQuery());
                if (result > 0)
                {
                    Response.Write("<script>alert('Record Updated Successfully');</script>");
                    grdData.EditIndex = -1;
                    BindStudentData();
                    ClearControls();
                }
                else
                {
                    Response.Write("<script>alert('Connection not available');</script>");
                }
            }
            catch (Exception ex) 
            { 
                Response.Write("<script>alert('Error Caught');</script>"); 
            }
            finally
            {
                CloseConnection();
                DisposeConnection();
            }
        }

        protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdData.PageIndex = e.NewPageIndex;
            this.BindStudentData();
        }
        public void ClearControls()
        {
            txtEnrollmentNo.Text = "";
            txtStudentName.Text = "";
            txtSemester.Text = "";
            txtSPI.Text = "";
            txtCPI.Text = "";
        }
    }
}