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
    public partial class login : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loginbtn_Click(object sender, EventArgs e)
        {
              String loginval = Convert.ToString(DropDownList1.SelectedValue);
            if (loginval == "Admin")
            {
                String pass = Password.Text;
                String usernm = Username.Text;
                con.Open();
                cmd = new SqlCommand("SELECT aid,aname,apassword FROM admin WHERE aname=@aname AND apassword=@apassword", con);
                cmd.Parameters.AddWithValue("@aname", Username.Text);
                cmd.Parameters.AddWithValue("@apassword", Password.Text);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["aname"] = Username.Text;
                    HttpCookie c1 = new HttpCookie("aid", Convert.ToString(dr["aid"]));
                    HttpCookie c2 = new HttpCookie("aname", Convert.ToString(dr["aname"]));
                    Response.Cookies.Add(c1);
                    Response.Cookies.Add(c2);
                    Response.Redirect("~/adminpanel.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Username or Password Incorrect!!";
                }
            }

         
            if (loginval == "User")
            {
                String pass = Password.Text;
                String usernm = Username.Text;
                con.Open();
                cmd = new SqlCommand("SELECT userid,username,password FROM useress WHERE username=@username AND password=password", con);
                cmd.Parameters.AddWithValue("@username", Username.Text);
                cmd.Parameters.AddWithValue("@password", Password.Text);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["username"] = Username.Text;
                    // Session["tid"]= Convert.ToString(dr.["tid"]);
                    HttpCookie c1 = new HttpCookie("userid", Convert.ToString(dr["userid"]));
                    HttpCookie c2 = new HttpCookie("username", Convert.ToString(dr["username"]));
                    Response.Cookies.Add(c1);
                    Response.Cookies.Add(c2);
                    Response.Redirect("~/home.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Username or Password Incorrect!!";
                }
            }

        }
        }
    }
