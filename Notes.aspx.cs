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
    public partial class Notes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
            int roleid = (int)Session["RoleId"];
            if (roleid == 2)
            {
                fuSample.Visible = false;
                fileuploadQuestionPaper.Visible = false;
            }

        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            //Files is folder Name
            fuSample.SaveAs(Server.MapPath("Files") + "//" + fuSample.FileName);
            lblMessage.Text = "File Successfully Uploaded";
        }
        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
       /* protected void btnDownload_Click(object sender, EventArgs e)
        {
            System.Web.HttpResponse response = System.Web.HttpContext.Current.Response;
            response.ClearContent();
            response.Clear();
            response.ContentType = "text/plain";
            response.AddHeader("Content-Disposition",
                               "attachment; filename=" + "pythonlearn.pdf" + ";");
            response.TransmitFile(Server.MapPath("Files") + "//" + "pythonlearn.pdf");
            response.Flush();
            response.End();
        }*/

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/activity.aspx");

        }

        protected void ModuleGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow gvRow = ModuleGrid.Rows[index];
            int notes_id = Convert.ToInt32(gvRow.Cells[0].Text);
            if (e.CommandName == "Upload")
            {
                SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-8444MQAL\MSSQLSERVER01;Initial Catalog=StudentModule;Integrated Security=True");
                conn.Open();
                string checkuser = " update notes set filename ='" + fuSample.FileName + "' where notes_id =" + notes_id;
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                cmd.ExecuteNonQuery();
                if(fuSample.FileName!="")
                {
                    fuSample.SaveAs(Server.MapPath("Files") + "//" + fuSample.FileName);
                    lblMessage.Text = "File Successfully Uploaded";
                }
                else
                {
                   
                    lblMessage.Text = "Please Select File";
                }
                
            }
            else if (e.CommandName == "Download")
            {
                SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-8444MQAL\MSSQLSERVER01;Initial Catalog=StudentModule;Integrated Security=True");
                conn.Open();
                string checkuser = "  select filename from notes where notes_id = " + notes_id;
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                string filename = cmd.ExecuteScalar().ToString();

                System.Web.HttpResponse response = System.Web.HttpContext.Current.Response;
                response.ClearContent();
                response.Clear();
                response.ContentType = "text/plain";
                response.AddHeader("Content-Disposition",
                                   "attachment; filename=" + filename + ";");
                response.TransmitFile(Server.MapPath("Files") + "//" + filename);
                response.Flush();
                response.End();
            }
            LoadGrid();

        }
        public void LoadGrid()
        {
            string subjectid = Request.QueryString["id"];
            using (SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-8444MQAL\MSSQLSERVER01;Initial Catalog=StudentModule;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("select n.* ,u.name from notes n ,[user] u where n.teach_id=u.teach_id and sub_id=" + subjectid, con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        ModuleGrid.DataSource = dt;
                        ModuleGrid.DataBind();
                    }
                }
            }

            using (SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-8444MQAL\MSSQLSERVER01;Initial Catalog=StudentModule;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("select qp_id,[filename] from [QUESTIONPAPER] where sub_id=" + subjectid, con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GrdQuestionPaper.DataSource = dt;
                        GrdQuestionPaper.DataBind();
                    }
                }
            }
        }
      

        protected void link_Click(object sender, EventArgs e)
        {
            
        }

        protected void link_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/links.aspx");
        }

        protected void GrdQuestionPaper_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow gvRow = GrdQuestionPaper.Rows[index];
            int questionpaper_id = Convert.ToInt32(gvRow.Cells[0].Text);
            if (e.CommandName == "Upload")
            {
                SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-8444MQAL\MSSQLSERVER01;Initial Catalog=StudentModule;Integrated Security=True");
                conn.Open();
                string checkuser = " update QUESTIONPAPER set filename ='" + fileuploadQuestionPaper.FileName + "' where qp_id =" + questionpaper_id;
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                cmd.ExecuteNonQuery();

                if(fileuploadQuestionPaper.FileName!="")
                {
                    fileuploadQuestionPaper.SaveAs(Server.MapPath("QuestionPaper") + "//" + fileuploadQuestionPaper.FileName);
                    Label1.Text = "Notes Updated Successfully Uploaded";
                }
                else
                {
                    
                    Label1.Text = "Please Select The File";
                }
                
            }
            else if (e.CommandName == "Download")
            {
                SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-8444MQAL\MSSQLSERVER01;Initial Catalog=StudentModule;Integrated Security=True");
                conn.Open();
                string checkuser = "  select filename from QUESTIONPAPER where qp_id = " + questionpaper_id;
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                string filename = cmd.ExecuteScalar().ToString();

                System.Web.HttpResponse response = System.Web.HttpContext.Current.Response;
                response.ClearContent();
                response.Clear();
                response.ContentType = "text/plain";
                response.AddHeader("Content-Disposition",
                                   "attachment; filename=" + filename + ";");
                response.TransmitFile(Server.MapPath("QuestionPaper") + "//" + filename);
                response.Flush();
                response.End();
            }
            LoadGrid();
        }

        protected void GrdQuestionPaper_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[0].Visible = false;
        }

        protected void ModuleGrid_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[0].Visible = false;
            e.Row.Cells[1].Visible = false;
        }
    }
}