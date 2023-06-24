using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MSI
{
    public partial class frmCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection cn = new SqlConnection(connStr);

            string sqlStmt;
            SqlCommand cmd = null;
            try
            {
                sqlStmt = "insert into Courcetb (Cource_ID,Name,Lecture_Name) Values (@Cource_ID,@Name,@Lecture_Name)  ";
                cmd = new SqlCommand(sqlStmt, cn);
                cmd.Parameters.Add(new SqlParameter("@Cource_ID", SqlDbType.Int, 11));
                cmd.Parameters.Add(new SqlParameter("@Name", SqlDbType.NVarChar, 150));
                cmd.Parameters.Add(new SqlParameter("@Lecture_Name", SqlDbType.NVarChar, 150));
                cmd.Parameters["@Cource_ID"].Value = txtCourseID.Text;
                cmd.Parameters["@Name"].Value = txtName.Text;
                cmd.Parameters["@Lecture_Name"].Value = txtLectureName.Text;

                cn.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = "Record Inserted Succesfully";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
                cn.Close();
            }

            //string sqlStmt;
            //string conString;
            //SqlConnection cn = null;
            //SqlCommand cmd = null;
            //try
            //{
            //    sqlStmt = "insert into Courcetb (Cource_ID,Name,Lecture_Name) Values (@Cource_ID,@Name,@Lecture_Name)  ";
            //    conString = "server=DESKTOP-1HJ77UA;database=msidb;uid=sa;pwd=321;";
            //    cn = new SqlConnection(conString);
            //    cmd = new SqlCommand(sqlStmt, cn);
            //    cmd.Parameters.Add(new SqlParameter("@Cource_ID", SqlDbType.Int, 11));
            //    cmd.Parameters.Add(new SqlParameter("@Name", SqlDbType.NVarChar, 150));
            //    cmd.Parameters.Add(new SqlParameter("@Lecture_Name", SqlDbType.NVarChar, 150));
            //    cmd.Parameters["@Cource_ID"].Value = txtCourseID.Text;
            //    cmd.Parameters["@Name"].Value = txtName.Text;
            //    cmd.Parameters["@Lecture_Name"].Value = txtLectureName.Text;

            //    cn.Open();
            //    cmd.ExecuteNonQuery();
            //    Label1.Text = "Record Inserted Succesfully";
            //}
            //catch (Exception ex)
            //{
            //    Label1.Text = ex.Message;
            //}
            //finally
            //{
            //    cn.Close();
            //}
        }
    }
}