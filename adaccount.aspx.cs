using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecycleRewardHub
{
    public partial class adaccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {

            HttpCookie c1 = new HttpCookie("aid");
            //HttpCookie c2 = new HttpCookie("username");
            c1.Expires = DateTime.Now.AddSeconds(0);
            //c2.Expires = DateTime.Now.AddSeconds(0);
            Session.Timeout = 5;
            Response.Redirect("login.aspx");
        }
    }
}