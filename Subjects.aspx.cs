using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentmodule
{
    public partial class Subjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataReader rdr = null;
            string semester = Request.QueryString["id"];
            SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-8444MQAL\MSSQLSERVER01;Initial Catalog=StudentModule;Integrated Security=True");
            conn.Open();
            string checkuser = "select * from SUBJECT where sem_id=" + semester;
            SqlCommand cmd = new SqlCommand(checkuser, conn);

            rdr = cmd.ExecuteReader();
            int subjectCount = 0;
            while (rdr.Read())
            {
                // get the results of each column
                string subject = (string)rdr["sub_name"];
                if (subjectCount == 0)
                {
                    Subject1.Text = subject;
                    Subject1.PostBackUrl = "~/Notes.aspx?id=" + Convert.ToString(rdr["sub_id"]);
                }
                if (subjectCount == 1)
                {
                    Subject2.Text = subject;
                    Subject2.PostBackUrl = "~/Notes.aspx?id=" + Convert.ToString(rdr["sub_id"]);
                }
                if (subjectCount == 2)
                {
                    Subject3.Text = subject;
                    Subject3.PostBackUrl = "~/Notes.aspx?id=" + Convert.ToString(rdr["sub_id"]);
                }
                if (subjectCount == 3)
                {
                    Subject4.Text = subject;
                    Subject4.PostBackUrl = "~/Notes.aspx?id=" + Convert.ToString(rdr["sub_id"]);
                }
                if (subjectCount == 4)
                {
                    Subject5.Text = subject;
                    Subject5.PostBackUrl = "~/Notes.aspx?id=" + Convert.ToString(rdr["sub_id"]);
                }
                if (subjectCount == 5)
                {
                    Subject6.Text = subject;
                    Subject6.PostBackUrl = "~/Notes.aspx?id=" + Convert.ToString(rdr["sub_id"]);
                }
                subjectCount++;
            }
           /* using (SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-8444MQAL\MSSQLSERVER01;Initial Catalog=StudentModule;Integrated Security=True"))
            {
                using (SqlCommand cmd1 = new SqlCommand(checkuser, con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd1))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        Repeater1.DataSource = dt;
                        Repeater1.DataBind();
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }*/
        }

        protected void Subject2_Click(object sender, EventArgs e)
        {

        }
    }
}