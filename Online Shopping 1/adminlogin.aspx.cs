using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Online_Shopping_1
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String cons = ConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            SqlConnection con = new SqlConnection(cons);
            string s = "select count (*) from tbl_adminlogin where UserName=' " + TextBoxAdminUserName.Text + " ' and  Password=' " + TextBoxAdminPassword.Text + " ' ";

            SqlCommand com = new SqlCommand(s, con);
            con.Open();
            com.ExecuteScalar();

            int a = (int)com.ExecuteScalar();
            if (a > 0)
                con.Close();
            {
                Response.Redirect("AddCategory.aspx");
            }
        }
    }
}