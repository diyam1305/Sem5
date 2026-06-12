using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Stu_Grid_CRUD
{
    public partial class Grid_View : System.Web.UI.Page
    {
        public string strconstr = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
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
        public void DisposeConnection()
        {
            cmd.Connection.Dispose();
        }
        public void CloseConnection()
        {
            cmd.Connection.Close();
        }

        public void BindStudentData()
        {
            try
            {
                CreateConnection();
                OpenConnection();
                cmd.CommandText = "Student_CRUD";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@Event", "Select");
                sda = new SqlDataAdapter(cmd);
                ds = new DataSet();
                sda.Fill(ds);
                grdData.DataSource = ds;
                grdData.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Connection is not available: " + ex.Message + "');</script>");
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
                cmd.CommandText = "Student_CRUD";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@Event", "Add");
                cmd.Parameters.AddWithValue("@Stu_EnrollmentNo", Convert.ToInt32(txtEnrollmentNo.Text.Trim()));
                cmd.Parameters.AddWithValue("@Stu_StudentName", txtStudentName.Text.Trim());
                cmd.Parameters.AddWithValue("@Stu_Semester", Convert.ToInt32(txtSemester.Text.Trim()));
                cmd.Parameters.AddWithValue("@Stu_SPI", Convert.ToDecimal(txtSPI.Text.Trim()));
                cmd.Parameters.AddWithValue("@Stu_CPI", Convert.ToDecimal(txtCPI.Text.Trim()));
                int result = cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    Response.Write("<script>alert('Record Inserted Successfully');</script>");
                    BindStudentData();
                    ClearControls();
                }
                else
                {
                    Response.Write("<script>alert('Insert Failed');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
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
            BindStudentData();
        }

        protected void grdData_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdData.EditIndex = -1;
            BindStudentData();
        }

        protected void grdData_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int ID = Convert.ToInt32(grdData.DataKeys[e.RowIndex].Values[0]);
                CreateConnection();
                OpenConnection();
                cmd.CommandText = "Student_CRUD";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@Event", "Delete");
                cmd.Parameters.AddWithValue("@STU_ID", ID);
                int result = cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    Response.Write("<script>alert('Record Deleted Successfully');</script>");
                    grdData.EditIndex = -1;
                    BindStudentData();
                    ClearControls();
                }
                else
                {
                    Response.Write("<script>alert('Delete Failed');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
            finally
            {
                CloseConnection();
                DisposeConnection();
            }
        }

        //protected void grdData_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    try
        //    {
        //        int ID = Convert.ToInt32(grdData.DataKeys[e.RowIndex].Values[0]);
        //        GridViewRow row = grdData.Rows[e.RowIndex];

        //        string EnrollmentNo = (row.Cells[1].Controls[0] as TextBox).Text;
        //        string StudentName = (row.Cells[2].Controls[0] as TextBox).Text;
        //        string Semester = (row.Cells[3].Controls[0] as TextBox).Text;
        //        string SPI = (row.Cells[4].Controls[0] as TextBox).Text;
        //        string CPI = (row.Cells[5].Controls[0] as TextBox).Text;

        //        CreateConnection();
        //        OpenConnection();
        //        cmd.CommandText = "Student_CRUD";
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.Clear();
        //        cmd.Parameters.AddWithValue("@Event", "Update");
        //        cmd.Parameters.AddWithValue("@Stu_EnrollmentNo", EnrollmentNo.Trim());
        //        cmd.Parameters.AddWithValue("@Stu_StudentName", StudentName.Trim());
        //        cmd.Parameters.AddWithValue("@Stu_Semester", Semester.Trim());
        //        cmd.Parameters.AddWithValue("@Stu_SPI", Convert.ToDecimal(SPI.Trim()));
        //        cmd.Parameters.AddWithValue("@Stu_CPI", Convert.ToDecimal(CPI.Trim()));
        //        cmd.Parameters.AddWithValue("@STU_ID", ID);

        //        int result = cmd.ExecuteNonQuery();
        //        if (result > 0)
        //        {
        //            Response.Write("<script>alert('Record Updated Successfully');</script>");
        //            grdData.EditIndex = -1;
        //            BindStudentData();
        //            ClearControls();
        //        }
        //        else
        //        {
        //            Response.Write("<script>alert('Update Failed');</script>");
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
        //    }
        //    finally
        //    {
        //        CloseConnection();
        //        DisposeConnection();
        //    }
        //}
        protected void grdData_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                int E_ID = Convert.ToInt32(grdData.DataKeys[e.RowIndex].Values[0]);
                GridViewRow row = grdData.Rows[e.RowIndex];

                TextBox txtEnrollmentNo = row.FindControl("txtEnrollmentNo") as TextBox;
                TextBox txtStudentName = row.FindControl("txtStudentName") as TextBox;
                TextBox txtSemester = row.FindControl("txtSemester") as TextBox;
                TextBox txtSPI = row.FindControl("txtSPI") as TextBox;
                TextBox txtCPI = row.FindControl("txtCPI") as TextBox;

                int enrollmentNo = Convert.ToInt32(txtEnrollmentNo.Text.Trim());
                string studentName = txtStudentName.Text.Trim();
                int semester = Convert.ToInt32(txtSemester.Text.Trim());
                decimal spi = Convert.ToDecimal(txtSPI.Text.Trim());
                decimal cpi = Convert.ToDecimal(txtCPI.Text.Trim());

                CreateConnection();
                OpenConnection();
                cmd.CommandText = "Student_CRUD";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@Event", "Update");
                cmd.Parameters.AddWithValue("@Stu_EnrollmentNo", enrollmentNo);
                cmd.Parameters.AddWithValue("@Stu_StudentName", studentName);
                cmd.Parameters.AddWithValue("@Stu_Semester", semester);
                cmd.Parameters.AddWithValue("@Stu_SPI", spi);
                cmd.Parameters.AddWithValue("@Stu_CPI", cpi);
                cmd.Parameters.AddWithValue("@STU_ID", E_ID);

                int result = cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    Response.Write("<script>alert('Record Updated Successfully');</script>");
                    grdData.EditIndex = -1;
                    BindStudentData();
                    ClearControls();
                }
                else
                {
                    Response.Write("<script>alert('Update Failed');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
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
            BindStudentData();
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
