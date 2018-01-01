<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exploredestination.aspx.cs" Inherits="trath_webapp.exploredestination" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trath|Explore the Attraction</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5{
            width:3%;
        }
        
        .auto-style6 {
            width: 12%;
            height: 24px;
        }
        .auto-style7 {
            width: 48%;
            height: 24px;
        }
        
        .auto-style8 {
            height: 24px;
        }
        
        .auto-style9 {
            width: 10%;
            height: 44px;
        }
        .auto-style10 {
            width: 50%;
            height: 44px;
        }
        
     </style>
</head>
<body>
    <form id="form1" runat="server" method="post">
    <div id="header" style="height: 80px; background-color: #3399FF;">
      <div style="height:12px"></div>
      <div style="height:auto; width:auto" >
          
          <table align="center" class="auto-style1" >
              <tr>
                  
                  <td class="auto-style5"><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/facebook.png" /></td>
                  <td class="auto-style5"><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/instagram.png" OnClick="ImageButton2_Click" /></td>
                  <td class="auto-style5"><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/image/sinaweibo.png" Height="50px" Width="50px"/></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td style="text-align:right">
                      <asp:Label ID="Labeluser" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="White"></asp:Label>
                  </td>
                  <td  class="auto-style5">
                      <asp:ImageButton ID="ImageButton5" runat="server" Height="50px" Width="50px" ImageUrl="~/image/person.png" OnClick="ImageButton5_Click"/>
                  </td>
                  <td class="auto-style5">
                      <asp:ImageButton ID="ImageButton4" runat="server" Height="50px" Width="50px" ImageUrl="~/image/gotohome.png" OnClick="ImageButton4_Click"/>
                  </td>
                  <td class="auto-style5">&nbsp;</td>
              </tr>
          </table>
               
      </div>
    </div>
    <table class="auto-style1">
        <tr>
            <td style="width:20%" rowspan="8">&nbsp;</td>
            <td style="width:60%;text-align:center" colspan="2">
                
                <asp:Image ID="Image1" runat="server" Width="100%" Height="300px" ImageUrl="~/image/幻蓝.jpg"/>
                
            </td>
            <td style="width:20%" rowspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align:left" class="auto-style9">
                
                <asp:Label ID="Label1" runat="server" Text="Label1" Font-Bold="True" Font-Italic="True" Font-Names="Lucida Handwriting" Font-Size="Larger" ForeColor="#3399FF"></asp:Label>
            </td>
            <td style="text-align:right" class="auto-style10">
                
                <asp:Button ID="Button1" runat="server" Text="Like" Width="20%" BackColor="Red" Font-Bold="True" Font-Italic="True" ForeColor="Yellow" OnClick="Button1_Click"/>
                
            </td>
        </tr>
        <tr>
            <td style="text-align:left;width:10%">
                
                <asp:Label ID="Label2" runat="server" Text="Address:" Font-Bold="True"></asp:Label>
                
            </td>
            <td style="text-align:left;width:50%">
                
                <asp:Label ID="Label3" runat="server" Text="Label3"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td style="text-align:left" class="auto-style6">
                
                <asp:Label ID="Label4" runat="server" Text="Open time:" Font-Bold="True"></asp:Label>
                
            </td>
            <td style="text-align:left" class="auto-style7">
                
                <asp:Label ID="Label5" runat="server" Text="Label5"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td style="width:10%;text-align:left">
                
                <asp:Label ID="Label6" runat="server" Text="Ticket:" Font-Bold="True"></asp:Label>
                
            </td>
            <td style="width:50%;text-align:left">
                
                <asp:Label ID="Label7" runat="server" Text="Label7"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td style="text-align:left" class="auto-style8">
                
                <asp:Label ID="Label8" runat="server" Text="Score(5.0):" Font-Bold="True"></asp:Label>
                
            </td>
            <td style="text-align:start" class="auto-style8">
                
                <asp:Label ID="Label9" runat="server" Text="Label9"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td style="text-align:left" class="auto-style8">
                
                <asp:Label ID="Label10" runat="server" Text="Review:" Font-Bold="True"></asp:Label>
                
            </td>
            <td style="text-align:left" class="auto-style8">
                
                <asp:Label ID="Label11" runat="server" Text="Label11"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td style="width:60%;text-align:right" colspan="2">
             <%--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d158857.72810807257!2d-0.24168024584701667!3d51.52877184047422!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2z5aSn5Lym5pWm5Lym5pWm!5e0!3m2!1szh-CN!2suk!4v1448232187137" width="100%" height="300px" frameborder="0" style="border:0" allowfullscreen></iframe>--%>
             <asp:ImageButton ID="ImageButton6" runat="server" width="100%" height="300px" frameborder="0" style="border:0" OnClick="ImageButton6_Click"/>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
