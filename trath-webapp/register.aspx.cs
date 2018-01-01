using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using trath_webapp.ServiceReference1;

namespace trath_webapp
{
    public partial class register : System.Web.UI.Page
    {
        Service1Client sc;
        protected void Page_Load(object sender, EventArgs e)
        {
            sc = new Service1Client();
            
           
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
          
                sc.register(TextBox7.Text, TextBox8.Text, TextBox1.Text, TextBox2.Text, RadioButton1.Checked, RadioButton2.Checked);
                Session["username"] = TextBox7.Text;
           
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
            if (sc.namecheck(TextBox7.Text,0))
            {
                Label14.Text = "username registered";
                TextBox9.Enabled = false;
            }
            else
            {
                TextBox9.Enabled = true;
                Label14.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
            Calendar1.SelectedDate = new DateTime(1994, 11, 30);
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
            Calendar1.Visible = false;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.instagram.com/gtong900/");
        }

        

       

       
    }
}