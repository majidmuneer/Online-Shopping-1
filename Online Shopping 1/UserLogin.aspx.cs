using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Shopping_1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String constr = ConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            string s = "select ID from UserData where UserName=@uname and password=@pass";
            SqlCommand com = new SqlCommand(s, con);
            com.Parameters.AddWithValue("@uname",TextBoxUserName.Text);
            com.Parameters.AddWithValue("@pass",TextBoxPassword.Text);
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["id"] = dr[0].ToString();
                }
                Response.Redirect("CustemerOrder.aspx");
            }
            con.Close();
           
        }
    }
}




           