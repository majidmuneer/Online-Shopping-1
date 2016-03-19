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
    public partial class SubCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
                SqlConnection connec = new SqlConnection(constr);
                string S = "spselect";
                SqlCommand com = new SqlCommand(S, connec);
                connec.Open();
                com.CommandType = CommandType.StoredProcedure;
                DropDownListCategory.DataSource = com.ExecuteReader();
                DropDownListCategory.DataTextField = "Category Name";
                DropDownListCategory.DataValueField = "Cat ID";
                DropDownListCategory.DataBind();
                connec.Close();
            }
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            SqlConnection connec = new SqlConnection(constr);
            string insetQuery ="insertsubcat";
            SqlCommand cmd = new SqlCommand(insetQuery, connec);
            connec.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SubCategoryName", TextBoxSubCategory.Text);
            cmd.Parameters.AddWithValue("@CategoryName", DropDownListCategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Description", TextBoxDescription.Text);
            
            cmd.ExecuteNonQuery();

            {
                Response.Write("Your Sub Category is inserted");
            }

            connec.Close();
            Response.Redirect("view_subcategory.aspx");
        }
    }
}