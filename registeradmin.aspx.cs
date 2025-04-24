using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;


namespace RecycleRewardHub
{
    public partial class registeradmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adminreg_Click(object sender, EventArgs e)
        {



            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
            con.Open();
            //string continueUrl = RegisterUser.ContinueDestinationPageUrl;
            String query = "INSERT INTO admin(aname,amobile,aemail,apassword) VALUES(@aname, @amobile, @aemail, @apassword)";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@aname", adminname.Text);
            cmd.Parameters.AddWithValue("@amobile", Mobile.Text);
            cmd.Parameters.AddWithValue("@aemail", Email.Text);
            cmd.Parameters.AddWithValue("@apassword", Password.Text);
            int userid = Convert.ToInt32(cmd.ExecuteScalar());

            con.Close();
            Label1.Visible = true;
            Label1.Text = "Admin Registered Successfully!!";
           
           
        }
    }
}