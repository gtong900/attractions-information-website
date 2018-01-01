<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="trath_webapp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logging in-Trath </title>




    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 20%;
        }
        .auto-style4 {
            width: 60%;
            text-align:center;
        }
        .auto-style5{
            width:3%;
        }
        </style>


</head>
<body>
    <form id="form1" runat="server" method="get" >

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
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
          </table>
               
      </div>
    </div>
    





   <div id="main picture" style="height:250px; text-align:center; ">
       <a><img id ="image1" style =" height:158px; width:636px; padding:46px;"  src="image/trath-biaoti.png"/></a>
    </div>   

   <table class="auto-style1">
           <tr>
               <td class="auto-style3">&nbsp;</td>
               <td class="auto-style4"> <asp:TextBox ID="UserName" runat="server" Width="250px" Text="username" BorderStyle="Groove" ForeColor="#808080"  OnFocus="javascript:if(this.value=='username') {this.value='';this.style.color='#000000'}"
OnBlur="javascript:if(this.value==''){this.value='username';this.style.color='#808080'}" OnTextChanged="UserName_TextChanged"></asp:TextBox></td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style3">&nbsp;</td>
               <td class="auto-style4"><asp:TextBox ID="PassWord" runat="server" Width="250px" Text="password" BorderStyle="Groove" ForeColor="#808080" OnFocus="javascript:if(this.value=='password') {this.value='';this.style.color='#000000'}"
OnBlur="javascript:if(this.value==''){this.value='password';this.style.color='#808080'}"></asp:TextBox></td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style3">&nbsp;</td>
               <td class="auto-style4"><asp:Label ID="tipLabel" runat="server"></asp:Label></td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style3">&nbsp;</td>
               <td class="auto-style4">&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style3"></td>
               <td class="auto-style4">
                   <asp:Button ID="registerButton" runat="server" Text="Register" Width="100px" OnClick="registerButton_Click"/>
                   <asp:Button ID="loginButton" runat="server" Text="Log In"  Width="100px" OnClick="loginButton_Click"/></td>
               <td>&nbsp;</td>
           </tr>
       </table>
        
        
        
        
        
    </form>
</body>
</html>
