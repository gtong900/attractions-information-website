<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchresult.aspx.cs" Inherits="trath_webapp.searchresult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trath|Search Result</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5{
            width:3%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header" style="height: 80px; background-color: #3399FF;">
      <div style="height:12px"></div>
      <div style="height:auto; width:auto">
          
          <table align="center" class="auto-style1">
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
                      <asp:ImageButton ID="ImageButton5" runat="server" Height="50px" Width="50px" ImageUrl="~/image/person.png" PostBackUrl="~/personalcenter.aspx"/>
                  </td>
                  <td class="auto-style5">
                      <asp:ImageButton ID="ImageButton4" runat="server" Height="50px" Width="50px" ImageUrl="~/image/gotohome.png" PostBackUrl="~/mysearch.aspx"/>
                  </td>
                  <td class="auto-style5">&nbsp;</td>
              </tr>
          </table>
               
      </div>
    </div>
    <table class="auto-style1">
        <tr>
            <td style="width:20%">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                    <asp:ListItem Selected="True" Value="0">By Alpha</asp:ListItem>
                    <asp:ListItem Value="1">By Popularity</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td style="width:60%;text-align:center">
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            </td>
            <td style="width:20%">&nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
