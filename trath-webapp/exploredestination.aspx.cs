using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using trath_webapp.ServiceReference1;

namespace trath_webapp
{
    public partial class exploredestination : System.Web.UI.Page
    {
        Service1Client sc;
        bool a;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Labeluser.Text = "Hi," + Session["username"].ToString() + "!  ";
            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }
            sc = new Service1Client();
            display();
            checklike();
        }

        public void checklike()
        {
            a=sc.checklike(Session["username"].ToString(), Request.QueryString["explorename"],0);
            if (a==true)
            {
                Button1.Text = "Liked";
                Button1.BackColor = System.Drawing.Color.Gray;
                Button1.ForeColor = System.Drawing.Color.White;
            }
            else
            {
                Button1.Text = "Like";
                Button1.BackColor = System.Drawing.Color.Red;
                Button1.ForeColor = System.Drawing.Color.Yellow;
            }
        }

        public void display()
        {
            string keyword = Request.QueryString["explorename"];
            Label1.Text = keyword;
            Label3.Text=sc.getaddress(keyword);
            Label5.Text = sc.getopentime(keyword);
            Label7.Text = sc.getticketinfo(keyword);
            Label9.Text = sc.getscore(keyword);
            Label11.Text = sc.getreview(keyword);
            ImageButton6.ImageUrl = "http://maps.google.com/maps/api/staticmap?size=1200x400&maptype=roadmap&sensor=false&markers=color:red|label:T|" + keyword;
            //ImageButton6.PostBackUrl = "https://www.google.com/maps/place/" + keyword;
            string image = sc.getimage(keyword);
            if (image!="")
            {
                Image1.ImageUrl = image;
            }
            //byte[] image = sc.getimage(keyword);
            //MemoryStream pic = new MemoryStream(image);
            //Bitmap bit = new Bitmap(pic);
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (a==true)
            {
                a=sc.checklike(Session["username"].ToString(), Request.QueryString["explorename"], 2);
                checklike();
            }
            else
            {
                a = sc.checklike(Session["username"].ToString(), Request.QueryString["explorename"], 1);
                checklike();
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.instagram.com/gtong900/");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("personalcenter.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("mysearch.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            string keyword = Request.QueryString["explorename"];
            Response.Redirect("https://www.google.com/maps/place/" + keyword);
        }
    }
}