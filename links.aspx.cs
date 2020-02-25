using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace studentmodule
{
    public partial class links : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

         protected void Insert_Click(object sender, EventArgs e)
         {

             SqlDataSource2.InsertParameters["website"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("website")).Text;
                
             SqlDataSource2.InsertParameters["topic"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("topic")).Text;
             //SqlDataSource2.InsertParameters["sub_code"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("subname")).Text;
             SqlDataSource2.InsertParameters["url"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("url")).Text;
             SqlDataSource2.Insert();
         }

       
    }
}