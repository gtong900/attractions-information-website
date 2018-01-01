using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using trath_webapp.ServiceReference1;

namespace trath_webapp
{
    public partial class personalcenter : System.Web.UI.Page
    {
        Service1Client sc;
        int number;
        protected void Page_Load(object sender, EventArgs e)
        {
            sc = new Service1Client();
            if (Session["username"] != null)
            {
                Labeluser.Text = "Hi," + Session["username"].ToString() + "!  ";
            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }
            setlikedrop();
        }

        public void setlikedrop()
        {
            string[] likelist = sc.getlikefromuser(Session["username"].ToString());
            number = 0;
            foreach (var item in likelist)
            {
                if (item!="")
                {
                    DropDownList1.Items.Add(item);
                    number++;
                }
            }
            if (number>=2)
            {
                Label6.Text = number + " Favorites";
            }
            else
            {
                if (number==1)
                {
                    Label6.Text ="1 Favorite";
                }
                else
                {
                    Label6.Text = "You have not add any likes, go and choose some!";
                    DropDownList1.Visible = false;
                }
            }
            
        }

        //protected void TextBox1_TextChanged(object sender, EventArgs e)
        //{
           
        //        bool a = sc.isuser(Session["username"].ToString(), TextBox1.Text);
        //        if (a == true)
        //        {
        //            Label5.Visible = false;
        //            Label8.Visible = true;
        //            Button1.Visible = true;
        //            TextBox1.Visible = false;
        //            TextBox3.Visible = true;
        //            TextBox1.Text = string.Empty;
        //        }
        //        else
        //        {
        //            TextBox1.Text = string.Empty;
                    
        //        } 
           
        //}

       
        
        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Session["username"] =null;
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (number==0)
            {
                Response.Redirect("mysearch.aspx");
            }
            else
            {
                Response.Redirect("exploredestination.aspx?explorename=" + DropDownList1.SelectedValue);
            }
            
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            TextBox2.Visible = true;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            if (TextBox2.Text=="19941130")
            {
                Response.Redirect("managermode.aspx");
            }
            else
            {
                TextBox2.Text = string.Empty;
                TextBox2.Visible = false;
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.instagram.com/gtong900/");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            bool a = sc.isuser(Session["username"].ToString(), TextBox1.Text);
            if (a == true)
            {
                sc.updatepassword(Session["username"].ToString(), TextBox3.Text);

                Label9.Text = "Success!";
            }
            else
            {

                Label9.Text = "Wrong!";

            } 
        }
    }
}