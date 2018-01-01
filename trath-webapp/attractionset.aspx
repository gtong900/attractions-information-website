<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="attractionset.aspx.cs" Inherits="trath_webapp.attractionset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trath|Set New Attraction</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5{
            width:3%;
        }
        .auto-style6 {
            height: 24px;
        }
        .auto-style7 {
            height: 44px;
        }
        .auto-style8 {
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




    <table style="width:100%;height:500px">
        <tr>
            <td style="width:10%">
                <asp:Label ID="Label1" runat="server" Text="Attraction Name(*):"></asp:Label>
            </td>
            <td colspan="3" style="width:40%">
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:Label ID="Label10" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td rowspan="3" class="auto-style8">

                <asp:Label ID="Label8" runat="server" Text="Upload the image(*):"></asp:Label><br />
                <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                <asp:Button ID="Button1" runat="server" Text="Upload More" OnClick="Button1_Click" Enabled="False" /><br />
                <asp:PlaceHolder ID="PlaceHolder1" runat="server">

                </asp:PlaceHolder>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Address:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>Asia</asp:ListItem>
                    <asp:ListItem>Europe</asp:ListItem>
                    <asp:ListItem>North America</asp:ListItem>
                    <asp:ListItem>South America</asp:ListItem>
                    <asp:ListItem>Africa</asp:ListItem>
                    <asp:ListItem>Oceania</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="country" DataValueField="country">
                    <asp:ListItem>Beijing</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label3" runat="server" Text="Opening Time:"></asp:Label>
            </td>
            <td class="auto-style6" colspan="3">
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>00:00</asp:ListItem>
                    <asp:ListItem>01:00</asp:ListItem>
                    <asp:ListItem>02:00</asp:ListItem>
                    <asp:ListItem>03:00</asp:ListItem>
                    <asp:ListItem>04:00</asp:ListItem>
                    <asp:ListItem>05:00</asp:ListItem>
                    <asp:ListItem>06:00</asp:ListItem>
                    <asp:ListItem>07:00</asp:ListItem>
                    <asp:ListItem>08:00</asp:ListItem>
                    <asp:ListItem>09:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label7" runat="server" Text="to"></asp:Label>
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>00:00</asp:ListItem>
                    <asp:ListItem Value="01:00"></asp:ListItem>
                    <asp:ListItem>02:00</asp:ListItem>
                    <asp:ListItem>03:00</asp:ListItem>
                    <asp:ListItem>04:00</asp:ListItem>
                    <asp:ListItem>05:00</asp:ListItem>
                    <asp:ListItem>06:00</asp:ListItem>
                    <asp:ListItem>07:00</asp:ListItem>
                    <asp:ListItem>08:00</asp:ListItem>
                    <asp:ListItem>09:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                    <asp:ListItem>23:00</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label4" runat="server" Text="Ticket Information:"></asp:Label>
            </td>
            <td class="auto-style7" colspan="3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:Button ID="Button2" runat="server" BackColor="Yellow" BorderColor="#FF3399" OnClick="Button2_Click" Text="Finish the Setting" Enabled="False" />
                <asp:Label ID="Label9" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label5" runat="server" Text="Score:"></asp:Label>
            </td>
            <td class="auto-style6" colspan="3">
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>3.5</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>4.5</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Review:"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trath1ConnectionString %>" SelectCommand="SELECT [country] FROM [Cc] WHERE ([continent] = @continent)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="continent" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>




    </form>
    </body>
</html>
