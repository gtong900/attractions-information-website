using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using trath_webapp.ServiceReference1;

namespace trath_webapp
{
    public partial class mpsearch : System.Web.UI.Page
    {
        Service1Client sc;
        protected void Page_Load(object sender, EventArgs e)
        {
            sc = new Service1Client();
            if (Session["username"]!=null)
            {
                Labeluser.Text = "Hi,"+Session["username"].ToString()+"!  ";
            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }
            if (!IsPostBack)
            {
                hot5(); 
            }
            
        }

        public void hot5()
        {
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("Popular Destination");
            string[] hot5=new string[5];
            hot5=sc.hot5();
            for (int i = 0; i < 5; i++)
            {
                DropDownList1.Items.Add(i+1+"."+hot5[i]); 
            }
            DropDownList1.Items.Add("*.Set New Destination");
            DropDownList1.Items.Add("*.See All Destinations");
            DropDownList1.Items.Add("*.Version Features");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            TextBox1.Text = TextBox1.Text.ToLower();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int i = 0;
            if (TextBox1.Text=="Set New Destination")
            {
                i = 1;
            }
            else
            {
                if (TextBox1.Text=="Version Features")
                {
                    i = 2;
                }
            }
            switch (i)
            {
                case 1:
                    Response.Redirect("attractionset.aspx");
                    break;
                case 2:
                    Response.Write("<script language='javascript'>alert('Version1.0[tony,2015]: 1.[trath] means travel +th(TianHan--the first name of the producer) and this word is like the word truth. 2.you can update the data of the attractions as a visitor 3.More for your exploration');</script>");
                    TextBox1.Text = string.Empty;
                    break;
                default:
                    Session["keyword"] = TextBox1.Text;
                    Response.Redirect("searchresult.aspx");
                    break;
            }
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex != 0)
            {
                char[] seperator = { '.' };
                string[] split = DropDownList1.SelectedValue.Split(seperator);
                TextBox1.Text = split[1];
                DropDownList1.SelectedIndex = 0;
            }
            hot5();

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.instagram.com/gtong900/");
        }


        

        

       
    }
}