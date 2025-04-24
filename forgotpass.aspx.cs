using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data;

namespace RecycleRewardHub
{
    public partial class forgotpass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     
     

        protected void Button1_Click(object sender, EventArgs e)
        {
            Password.Visible = true;
            Conpass.Visible = true;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            //SqlCommand cmd;
            //SqlDataReader dr;


            //String email = Email.Text;
            con.Open();
            // SQL query to update password based on email
            string query = "UPDATE useress SET Password = @NewPassword WHERE Email = @Email";
            SqlCommand command = new SqlCommand(query, con);
            command.Parameters.AddWithValue("@NewPassword",Password.Text);
            command.Parameters.AddWithValue("@Email", Email.Text);


            int rowsAffected = command.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "Passwod Updated Successfully!!";
        }
    }
}