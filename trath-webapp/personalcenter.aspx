<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personalcenter.aspx.cs" Inherits="trath_webapp.personalcenter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trath|Personal Center</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5{
            width:3%;
        }
        .auto-style6 {
            height: 50px;
            width: 50%;
        }
        .auto-style7 {
            height: 370px;
            width: 50%;

        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header" style="height: 80px; background-color: #3399FF;">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
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
                      <asp:ImageButton ID="ImageButton5" runat="server" Height="50px" Width="50px" ImageUrl="~/image/person.png" Visible="False"/>
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
            <td style="background-color:lightblue" class="auto-style6">
              <asp:Label ID="Label1" runat="server" Text="Personal info changing" Font-Bold="True" Font-Italic="True" Font-Names="Agency FB" Font-Size="X-Large"></asp:Label>
            </td>
            <td style="width:50%;height:50px;background-color:lightcoral">
                <asp:Label ID="Label2" runat="server" Text="Your likes" Font-Bold="True" Font-Italic="True" Font-Names="Agency FB" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Password："></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="New Password："></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
                   
                        <br />
                        <asp:Label ID="Label9" runat="server" ForeColor="Red" style="font-weight: 700; font-style: italic"></asp:Label>
                   
            </td>
            <td style="width:50%;height:370px;text-align:center">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF0066" Text="Label"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                        <asp:Button ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td style="background-color:lightgoldenrodyellow" class="auto-style6">
                <asp:Label ID="Label3" runat="server" Text="Administrator" Font-Bold="True" Font-Italic="True" Font-Names="Agency FB" Font-Size="X-Large"></asp:Label>
            </td>
            <td style="width:50%;height:50px;background-color:lightgrey">
                <asp:Label ID="Label4" runat="server" Text="Log out" Font-Bold="True" Font-Italic="True" Font-Names="Agency FB" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width:50%;height:300px;text-align:center">
                <asp:ImageButton ID="ImageButton6" runat="server" Height="150px" Width="150px" ImageUrl="~/image/administration.png" OnClick="ImageButton6_Click"/>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged" Visible="False" Height="25px"></asp:TextBox>
            </td>
            <td style="width:50%;height:300px;text-align:center">
                <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/image/log out.png" Height="80px" Width="235px" OnClick="ImageButton7_Click"/>
            </td>
        </tr>
    </table>

    </form>
    </body>
</html>
