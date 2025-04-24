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
    public partial class withdraw : System.Web.UI.Page
    {
        int totalcoins=0;


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Visible=true;
            Label1.Text = "You Can Not Withdraw Coins Until You Reach 500 Coins!!!";
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {


            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label x = (Label)e.Row.FindControl("Coins");
                totalcoins = totalcoins + int.Parse(x.Text);
            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label x = (Label)e.Row.FindControl("totalcoins");
                x.Text = totalcoins.ToString();
                //Session["totcoins"] = totalcoins;
                coinlabel.Text = Convert.ToString(totalcoins);

            }


        }
        
    }
}