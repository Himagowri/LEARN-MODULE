using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentmodule
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-8444MQAL\MSSQLSERVER01;Initial Catalog=StudentModule;Integrated Security=True");
            conn.Open();
            string checkuser = "select role from [USER] where [email]='" + TxtUsername.Text + "' and password='" + TxtPwd.Text + "'";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            var User = cmd.ExecuteScalar();

            if (User == null)
            {
                ErrorMessage.Text = "Entered Username and password does not exist";
            }
            else
            {
                var roleid = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                Session["RoleId"] = roleid;
                Response.Redirect("~/Semester.aspx");
            }
        }
    }
}