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
    public partial class Product : System.Web.UI.Page
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

        protected void Buttonsubmitcategory_Click(object sender, EventArgs e)
        {
             string constr = ConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
                SqlConnection connec = new SqlConnection(constr);
                string insetQuery = "sp_insertproduct";
                SqlCommand cmd = new SqlCommand(insetQuery, connec);
                connec.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CategoryName", DropDownListCategory.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@SubCategoryName", DropDownListSubCategory.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@ProductName", TextBoxProductName.Text);
                cmd.Parameters.AddWithValue("@ProductPrice", TextBoxProductPrice.Text);
                cmd.Parameters.AddWithValue("@Description", TextBoxDesription.Text);


                string s1 = Server.MapPath("\\Upload\\");
                Random rn = new Random();
                int a = rn.Next(0, 10000);
                FileUpload2.SaveAs(s1 + a.ToString() + FileUpload2.FileName); cmd.Parameters.AddWithValue("@Image", a + FileUpload2.FileName);

                cmd.ExecuteNonQuery();

                {
                    Response.Write("Your Product is inserted");
                }
               
                connec.Close();
                Response.Redirect("view_product.aspx");
            
        }

        protected void DropDownListCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            SqlConnection connec = new SqlConnection(constr);
            string S = "spGetSubCat";
            SqlCommand com = new SqlCommand(S, connec);
            com.Parameters.AddWithValue("@id", int.Parse(DropDownListCategory.SelectedItem.Value));
            connec.Open();
            com.CommandType = CommandType.StoredProcedure;
            DropDownListSubCategory.DataSource = com.ExecuteReader();
            DropDownListSubCategory.DataValueField = "subcat id";
            DropDownListSubCategory.DataTextField = "sub cat name";
            DropDownListSubCategory.DataBind();
            connec.Close();
            
        }

        protected void DropDownListSubCategory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}