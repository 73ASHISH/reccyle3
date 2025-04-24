using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecycleRewardHub
{
    public partial class rewardlist : System.Web.UI.Page
    {
        int totalcoins = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
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
                // coinlabel.Text = Convert.ToString(totalcoins);

            }


        }
    }
}