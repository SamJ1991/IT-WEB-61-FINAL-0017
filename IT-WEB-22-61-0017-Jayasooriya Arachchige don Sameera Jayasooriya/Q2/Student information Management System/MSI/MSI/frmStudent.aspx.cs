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
    public partial class frmStudent : System.Web.UI.Page
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
                sqlStmt = "insert into Studenttb (Student_ID,Name,City,Cource_ID) Values (@Student_ID,@Name,@City,@Cource_ID)  ";
                
                cmd = new SqlCommand(sqlStmt, cn);
                cmd.Parameters.Add(new SqlParameter("@Student_ID", SqlDbType.Int, 11));
                cmd.Parameters.Add(new SqlParameter("@Name", SqlDbType.NVarChar, 150));
                cmd.Parameters.Add(new SqlParameter("@City", SqlDbType.NVarChar, 150));
                cmd.Parameters.Add(new SqlParameter("@Cource_ID", SqlDbType.Int, 11));
                cmd.Parameters["@Student_ID"].Value = txtID.Text;
                cmd.Parameters["@Name"].Value = txtName.Text;
                cmd.Parameters["@City"].Value = txtCity.Text;
                cmd.Parameters["@Cource_ID"].Value = txtCouse.Text;

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
        }
    }
}