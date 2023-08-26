using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ass11ph2
{
    public partial class Register : System.Web.UI.Page
    {
        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ContentDbConnectionString"].ToString());
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = con;

                cmd.CommandText = "insert into Articles values (@id, @title, @content, @publishdate)";

                cmd.Parameters.AddWithValue("@id", int.Parse(TxtId.Text));

                cmd.Parameters.AddWithValue("@title", TxtTitle.Text);

                cmd.Parameters.AddWithValue("@content", TxtContent.Text);

                cmd.Parameters.AddWithValue("@publishdate", DateTime.Parse(TxtPDate.Text));

                con.Open();

                cmd.ExecuteNonQuery();

                lblMsg.Text = "Registration Success";
            }


            catch (Exception ex)

            {

                lblMsg.Text = "Error" + ex.Message;

            }
        }
    }
}