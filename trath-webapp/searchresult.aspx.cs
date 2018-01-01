using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using trath_webapp.ServiceReference1;

namespace trath_webapp
{
    public partial class searchresult : System.Web.UI.Page
    {
        Service1Client sc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Labeluser.Text = "Hi," + Session["username"].ToString() + ". Here are the search results!  ";
            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }
            sc = new Service1Client();
            search();
        }

        public void search()
        {
            string a = Session["keyword"].ToString();
            string[] array =sc.searchresult(a,0);
            if (RadioButtonList1.SelectedValue!="0")
            {
                array = sc.searchresult(a, 1);
            }
            if (array[0]=="1")
            {
                Response.Redirect("exploredestination.aspx?explorename="+array[1]);
            } 
            if (array[0]=="0")
            {
                if (a=="See All Destinations")
                {
                    Labeluser.Text = "Here are all the destinations at Trath now!  ";
                }
                else
                {
                    Labeluser.Text = "Although no result matched, we provide all the destionations here!  ";
                }
                a = "";
                if (RadioButtonList1.SelectedValue=="0")
                {
                    array = sc.searchresult(a,0);
                }
                else
                {
                    array = sc.searchresult(a,1);
                }
            }
            //if (a == "")
            //{
                
            //}
            for (int i = 1; i <= int.Parse(array[0]); i++)
            {
                Button newbutton = new Button();
                newbutton.Text = i.ToString() + "." + array[i];
                PlaceHolder1.Controls.Add(newbutton);
                newbutton.PostBackUrl="exploredestination.aspx?explorename="+array[i];
                
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.instagram.com/gtong900/");
        }
    }
}