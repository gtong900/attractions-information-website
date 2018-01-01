<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mysearch.aspx.cs" Inherits="trath_webapp.mpsearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trath|Main Page</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5{
            width:3%;
        }
        .auto-style6 {
            height: 29px;
        }
        .auto-style7 {
            width: 50%;
            height: 29px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" method="get">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
       </asp:ScriptManager>
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
                      <asp:ImageButton ID="ImageButton4" runat="server" Height="50px" Width="50px" ImageUrl="~/image/gotohome.png" PostBackUrl="~/mysearch.aspx" Visible="False"/>
                  </td>
                  <td class="auto-style5">&nbsp;</td>
              </tr>
          </table>
               
      </div>
    </div>
    





   <div id="main picture" style="height:250px; text-align:center; ">
       <a>
       
       <img id ="image1" style =" height:158px; width:636px; padding:46px;"  src="image/trath-biaoti.png"/></a>
    </div>   
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                </td>
                <td colspan="2" style="text-align:center; " class="auto-style7">
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Width="60%" AutoCompleteType="Search" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="TextBox1" EventName="TextChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align:right; width:25%">
                    <%--<asp:Button ID="Button1" runat="server" Text="Popular Destinations" Width="60%"/>--%>

                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="60%" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem>Popular Destination</asp:ListItem>
                            </asp:DropDownList>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>

                </td>
                <td style="text-align:left; width:25%">
                    <asp:Button ID="Button2" runat="server" Text="Trath" Width="60%" OnClick="Button2_Click"/>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
