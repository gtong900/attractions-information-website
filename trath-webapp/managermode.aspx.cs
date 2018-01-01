using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using trath_webapp.ServiceReference1;

namespace trath_webapp
{
    public partial class managermode : System.Web.UI.Page
    {
        Service1Client sc;
        protected void Page_Load(object sender, EventArgs e)
        {
            sc = new Service1Client();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                TextBox2.Visible = true;
                DropDownList2.Visible = true;
                DropDownList3.Visible = true;
                TextBox5.Visible = true;
                DropDownList4.Visible = true;
                DropDownList5.Visible = true;
                TextBox8.Visible = true;
                DropDownList6.Visible = true;
                TextBox10.Visible = true;
                TextBox11.Visible = true;
                Button1.Visible = false;
                Button2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            sc.attractionset(TextBox2.Text, DropDownList2.SelectedValue, DropDownList3.SelectedValue, TextBox5.Text, DropDownList4.SelectedValue, DropDownList5.SelectedValue, TextBox8.Text, DropDownList6.Text, TextBox10.Text, TextBox11.Text);
            TextBox2.Visible = false;
            DropDownList2.Visible = false;
            DropDownList3.Visible = false;
            TextBox5.Visible = false;
            DropDownList4.Visible = false;
            DropDownList5.Visible = false;
            TextBox8.Visible = false;
            DropDownList6.Visible = false;
            TextBox10.Visible = false;
            TextBox11.Visible = false;
            Button1.Visible = true;
            Button2.Visible = false;

            GridView1.DataBind();

            TextBox2.Text = "attraction";
            DropDownList2.SelectedIndex = 0;
            DropDownList3.SelectedIndex = 0;
            TextBox5.Text = "detail address";
            DropDownList4.SelectedIndex = 0;
            DropDownList5.SelectedIndex = 0;
            TextBox8.Text = "ticketinfo";
            DropDownList6.SelectedIndex = 0;
            TextBox10.Text = "review";
            TextBox11.Text = "~/image/";
            Button1.Visible = true;
            Button2.Visible = false;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.instagram.com/gtong900/");
        }

        //protected void DropDownList1_Load(object sender, EventArgs e)
        //{
        //    foreach (GridViewRow row in GridView1.Rows)
        //    {
        //        if (row.RowType == DataControlRowType.DataRow)
        //        {
        //            DropDownList dropdownlist1 = row.FindControl("DropDownList1") as DropDownList;
        //            Session["continent"] = dropdownlist1.SelectedValue;
        //        }
        //    }
            
        //}
    }
}