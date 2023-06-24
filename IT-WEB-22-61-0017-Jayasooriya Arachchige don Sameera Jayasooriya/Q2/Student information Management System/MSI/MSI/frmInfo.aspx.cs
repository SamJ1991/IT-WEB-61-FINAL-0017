using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace MSI
{
    public partial class frmInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);

            string sql = "Select S.Student_ID, S.Name, S.City, C.Name, C.Lecture_Name From Studenttb AS S INNER JOIN Courcetb AS C ON S.Cource_ID = C.Cource_ID";
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();

            SqlDataReader reder = cmd.ExecuteReader();

            GridView1.DataSource = reder;
            GridView1.DataBind();

            conn.Close();

        }
    }
}