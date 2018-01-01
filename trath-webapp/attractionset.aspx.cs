using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using trath_webapp.ServiceReference1;

namespace trath_webapp
{
    public partial class attractionset : System.Web.UI.Page
    {
        Service1Client sc;
        //List<FileUpload> listFile = new List<FileUpload>();

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
            //if (!IsPostBack)
            //{
                sc = new Service1Client("BasicHttpBinding_IService1");
                //listFile.Add(FileUpload1);
 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            //FileUpload fu= new FileUpload();
            //listFile.Add(fu);
            //PlaceHolder1.Controls.Add(fu);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if(FileUpload1.HasFile==true&&TextBox1.Text!=string.Empty)
            {
                string path = "~/image/";
                string rootpath = Server.MapPath("~/image/");
                string newrootpath = rootpath + FileUpload1.FileName;
                string newpath = path + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(newrootpath);
                sc.attractionset(TextBox1.Text, DropDownList1.SelectedValue, DropDownList2.SelectedValue, TextBox2.Text, DropDownList3.SelectedValue, DropDownList4.SelectedValue, TextBox3.Text, DropDownList5.SelectedValue, TextBox4.Text, newpath);
                Response.Write("<script>alert('Set Successfully!');</script>");
                resetpage();
                
            }
            else
            {
                if (TextBox1.Text!=string.Empty)
                {
                    sc.attractionset(TextBox1.Text, DropDownList1.SelectedValue, DropDownList2.SelectedValue, TextBox2.Text, DropDownList3.SelectedValue, DropDownList4.SelectedValue, TextBox3.Text, DropDownList5.SelectedValue, TextBox4.Text, "");
                    Response.Write("<script>alert('Set Successfully!');</script>");
                    resetpage();
                }
                else
                {
                    Label9.Text = "Content unfinished";
                }
                
                //sc.attractionset(TextBox1.Text, DropDownList1.SelectedValue, DropDownList2.SelectedValue, TextBox2.Text, DropDownList3.SelectedValue, DropDownList4.SelectedValue, TextBox3.Text, DropDownList5.SelectedValue, TextBox4.Text, null);
            }
            //sc.attractionset2(TextBox4.Text, FileUpload1.FileBytes);
            
           

        }

        public void resetpage()
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            DropDownList3.SelectedIndex = 0;
            DropDownList4.SelectedIndex = 0;
            DropDownList5.SelectedIndex = 0;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            TextBox1.Text = TextBox1.Text.ToLower();
            if (sc.namecheck(TextBox1.Text, 1))
	       {
               Label10.Text = "Existing attraction!";
               Button2.Enabled = false;
	       }
            else
            {
                Button2.Enabled = true;
                Label10.Text = "";
            }
            
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.instagram.com/gtong900/");
        }

       
    }
}