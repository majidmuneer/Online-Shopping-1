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
    public partial class OrderPlace : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                if (!IsPostBack)
                {
                    string constr = ConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
                    SqlConnection connec = new SqlConnection(constr);
                    string S = "spselect";
                    SqlCommand com = new SqlCommand(S, connec);
                    connec.Open();
                    com.CommandType = CommandType.StoredProcedure;
                    DropDownListOrderCtegoryName.DataSource = com.ExecuteReader();
                    DropDownListOrderCtegoryName.DataTextField = "Category Name";
                    DropDownListOrderCtegoryName.DataValueField = "Cat ID";
                    DropDownListOrderCtegoryName.DataBind();
                    DropDownListOrderCtegoryName.Items.Insert(0, new ListItem("select", "select"));
                    connec.Close();
                }

            }
            else
            {
                Response.Redirect("UserLogin.aspx");
            }
        }

        protected void OrderSubmit_Click(object sender, EventArgs e)
        {

            string constr = ConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            SqlConnection connec = new SqlConnection(constr);
            string insetQuery = "spcustemerorder";
            SqlCommand cmd = new SqlCommand(insetQuery, connec);
            connec.Open();
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@CategoryName", DropDownListOrderCtegoryName.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@SubCategoryName", DropDownListOrderCtegoryName.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@ProductName", GridViewOrderproduct.SelectedRow);
            cmd.Parameters.AddWithValue("@OrderDate", DateTime.Now.ToShortTimeString());
            cmd.ExecuteNonQuery();

            {
                Response.Write("Your place is ordered");
            }

            connec.Close();
        }

        protected void DropDownListOrderCtegoryName_SelectedIndexChanged(object sender, EventArgs e)
        {

            string constr = ConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            SqlConnection connec = new SqlConnection(constr);
            string S = "spGetSubCat";
            SqlCommand com = new SqlCommand(S, connec);
            com.Parameters.AddWithValue("@id", int.Parse(DropDownListOrderCtegoryName.SelectedItem.Value));
            connec.Open();
            com.CommandType = CommandType.StoredProcedure;
            DropDownListOrderSubCatName.DataSource = com.ExecuteReader();
            DropDownListOrderSubCatName.DataValueField = "subcat id";
            DropDownListOrderSubCatName.DataTextField = "sub cat name";

            DropDownListOrderSubCatName.DataBind();
            DropDownListOrderSubCatName.Items.Insert(0, new ListItem("select", "select"));


            connec.Close();


        }
        protected void DropDownListOrderSubCatName_SelectedIndexChanged(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            SqlConnection connec = new SqlConnection(constr);
            string S = "select * from [tbl_Product] where [SubCategoryName] like '" + DropDownListOrderSubCatName.SelectedItem.Text + "'";
            SqlCommand com = new SqlCommand(S, connec);
            com.Parameters.AddWithValue("@id", int.Parse(DropDownListOrderCtegoryName.SelectedItem.Value));
            connec.Open();
            //com.CommandType = CommandType.StoredProcedure;
            GridViewOrderproduct.DataSource = com.ExecuteReader();
            GridViewOrderproduct.DataBind();
        }

        protected void gv_rowcommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow gvr = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int rowIndex = gvr.RowIndex;
            //
            string id = (GridViewOrderproduct.Rows[rowIndex].FindControl("hdnID") as HiddenField).Value;
            string proName = GridViewOrderproduct.Rows[rowIndex].Cells[0].Text;
            string proPrice = GridViewOrderproduct.Rows[rowIndex].Cells[1].Text;
            string pscoDec = GridViewOrderproduct.Rows[rowIndex].Cells[2].Text;
            string image = (GridViewOrderproduct.Rows[rowIndex].FindControl("Image1") as Image).ImageUrl;
            int user_id = int.Parse(Session["id"].ToString());

            string constr = ConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            SqlConnection connec = new SqlConnection(constr);
            string insetQuery = "sporder1";
            SqlCommand cmd = new SqlCommand(insetQuery, connec);
            connec.Open();
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@P_ID", Convert.ToString(id));
            cmd.Parameters.AddWithValue("@ProductName", proName);
            cmd.Parameters.AddWithValue("@ProductPrice", proPrice);
            cmd.Parameters.AddWithValue("@OrderDate", DateTime.Now.ToShortTimeString());
            cmd.Parameters.AddWithValue("@User_ID", user_id);

            cmd.ExecuteNonQuery();
            Response.Write("your order is placed");

        }

    }
}