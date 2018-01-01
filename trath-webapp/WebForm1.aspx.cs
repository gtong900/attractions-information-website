using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using trath_webapp.ServiceReference1;

namespace trath_webapp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Service1Client sc;
        protected void Page_Load(object sender, EventArgs e)
        {
            sc = new Service1Client();
            if (Session["username"] != null)
            {
                Response.Redirect("mysearch.aspx");
            }
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            bool a=sc.isuser(UserName.Text, PassWord.Text);
            if (a==true)
            {
                tipLabel.Text = null;
                Session["username"] = UserName.Text;
                Response.Redirect("mysearch.aspx");
            }
            else
            {
                tipLabel.Text = "username or password is wrong";
                tipLabel.ForeColor = System.Drawing.Color.Red;
                UserName.Text = "username";
                PassWord.Text = "password";
            }

        }

        protected void UserName_TextChanged(object sender, EventArgs e)
        {
            tipLabel.Text = null;
        }

        protected void registerButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.instagram.com/gtong900/");
        }

        

        
    }
}