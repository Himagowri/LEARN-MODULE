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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-8444MQAL\MSSQLSERVER01;Initial Catalog=StudentModule;Integrated Security=True");
            String pname = "spinsertintoregister";
            conn.Open();
            SqlCommand cmd = new SqlCommand(pname, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@user_id", textid.Text.ToString());
            cmd.Parameters.AddWithValue("@email", emailtxt.Text.ToString());
            cmd.Parameters.AddWithValue("@password", passwordtxt.Text.ToString());
            cmd.Parameters.AddWithValue("@name", nametext.Text.ToString());
            cmd.Parameters.AddWithValue("@role", ddlRole.SelectedValue);
            cmd.ExecuteNonQuery();
            conn.Close();
            Label2.Text = "data has been saved in data base";
        }

    }
}