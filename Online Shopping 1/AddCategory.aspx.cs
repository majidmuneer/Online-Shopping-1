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
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            SqlConnection connec = new SqlConnection(constr);
            string insetQuery = "insertCat";
            SqlCommand cmd = new SqlCommand(insetQuery, connec);
            connec.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CategoryName", TextBoxCname.Text);
            cmd.Parameters.AddWithValue("@Description", TextBoxDescription.Text);
            
            
            string s1 = Server.MapPath("\\Upload\\");
            Random rn = new Random();
            int a = rn.Next(0, 10000);
            FileUpload1.SaveAs(s1 + a.ToString() + FileUpload1.FileName); cmd.Parameters.AddWithValue("@Image",a+ FileUpload1.FileName);
          
            cmd.ExecuteNonQuery();

            {
                Response.Write("Your Category is inserted");
            }
              connec.Close();

            Response.Redirect("view_category.aspx");

           }
        protected void Button_Click(object sender, EventArgs e)
        {

        }
    }
}