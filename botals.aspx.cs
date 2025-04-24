using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Web.Services.Protocols;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

namespace RecycleRewardHub
{
    public partial class botals : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
        int len,price=0;
        int totcoins;
        int btlqty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
            // GET api
            public IHttpActionResult Get()
            {
                // first GET method here
                return Ok();
            }

            // GET api/{id}
            public IHttpActionResult Get(int id)
            {
                // second GET method with parameter here
                return Ok();
            }

            // POST api
            public IHttpActionResult Post([FromBody] YourModel model)
            {
             // first POST method here
               
                return Ok();
            }

            private IHttpActionResult Ok()
            {
                throw new NotImplementedException();
            }

            // POST api/{id}
            public IHttpActionResult Post(int id, [FromBody] YourModel model)
            {
                // second POST method with parameter here
                return Ok();
            }

            protected void Button1_Click(object sender, EventArgs e)
            {
                //Door Open Logic

                Label1.Visible = true;
                TextBox1.Visible = true;

            }

            protected void Button2_Click(object sender, EventArgs e)
            {

                len = Convert.ToInt32(DropDownList1.SelectedValue);
                btlqty = Convert.ToInt32(TextBox1.Text);
                if (len == 1)
                {
                    price = 3;
                    totcoins = btlqty * price;

                }
                else if (len == 2)
                {
                    price = 5;
                    totcoins = btlqty * price;
                }

                else if (len == 3)
                {
                    price = 7;
                    totcoins = btlqty * price;


                }
                con.Open();
                String query = "INSERT INTO bottalcollection(userid,username,lengthbtl,qty,price,coins) VALUES(@userid,@username,@lengthbtl,@qty,@price,@coins)";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@userid", Convert.ToInt32(Request.Cookies["userid"].Value));
                cmd.Parameters.AddWithValue("@username", Request.Cookies["username"].Value);
                cmd.Parameters.AddWithValue("@lengthbtl", len);
                cmd.Parameters.AddWithValue("@qty", btlqty);
                cmd.Parameters.AddWithValue("@price", price);
                cmd.Parameters.AddWithValue("@coins", totcoins);
                cmd.ExecuteNonQuery();
                

                Session["total"] = totcoins;
                Session["qty"] = btlqty;
                con.Close();
                //Label2.Visible = true;
                Response.Redirect("~/withdraw.aspx");



            }
        }

        public class YourModel
        {
            // Define properties for your model here
        }

       
    }

    public class IHttpActionResult
    {
    }

    public class FromBodyAttribute : Attribute
    {
    }
