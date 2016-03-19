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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*          String constr = ConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
                  SqlConnection connn = new SqlConnection(constr);
                  string insertQuery = "Sp_insert";

                  SqlCommand comm = new SqlCommand(insertQuery, connn);
                  connn.Open();

                  comm.CommandType = CommandType.StoredProcedure;

                  comm.Parameters.AddWithValue("@UserName", TextBoxUN.Text);
                  comm.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
                  comm.Parameters.AddWithValue("@Password", TextBoxPass.Text);
                  comm.Parameters.AddWithValue("@Country", DropDownListCountry.SelectedItem.Text);

                  comm.ExecuteNonQuery();

                  connn.Close();


                  {
                      Response.Write("Your Registration is successful");
                  }




              }*/


        protected void Button1_Click(object sender, EventArgs e)
        {
            String constr = ConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);

            string S = "select count(*) from UserData where Email='" + TextBoxEmail.Text + "'";
            SqlCommand com = new SqlCommand(S, con);

            con.Open();
            int a = (int)com.ExecuteScalar();
            if (a > 0)
            {
                lblcheck.Text = "User already Exists";
//                Button1.Enabled = false;
            }

            else
            {
                //lblcheck.Text = "User Does not Exists";
  //              Button1.Enabled = true;
            //    con.Close();

                SqlConnection conn = new SqlConnection(constr);
                string insertQuery = "Sp_insert";

                SqlCommand comd = new SqlCommand(insertQuery, conn);
                conn.Open();

                comd.CommandType = CommandType.StoredProcedure;

                comd.Parameters.AddWithValue("@UserName", TextBoxUN.Text);
                comd.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
                comd.Parameters.AddWithValue("@Password", TextBoxPass.Text);
                comd.Parameters.AddWithValue("@Country", DropDownListCountry.SelectedItem.Text);
                
                comd.ExecuteNonQuery();

                conn.Close();




                Response.Write("Your Registration is successful");


            }

            con.Close();
        }



    }
}

