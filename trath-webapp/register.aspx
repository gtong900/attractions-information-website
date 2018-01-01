<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="trath_webapp.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register for Trath</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5{
            width:3%;
        }
        .auto-style2 {
            width: 60%;
            height: 50%;
            margin-left:10%;
            margin-top:5%;
        }
        .auto-style6 {
            width: 30%;
        }
        .auto-style7 {
            width: 30%;
        }
        .auto-style8 {
            width: 25%;
        }
        </style>
</head>
    
<body>
    <script src="JavaScript1.js"></script>
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
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
          </table>
               
      </div>
    </div>
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" DisplayCancelButton="True" Font-Names="Verdana" Font-Size="0.8em" Height="664px" Width="100%" CancelDestinationPageUrl="~/WebForm1.aspx" OnFinishButtonClick="Wizard1_FinishButtonClick">
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <NavigationStyle VerticalAlign="Top" />
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#507CD1" Font-Bold="True" Font-Size="Larger" Font-Strikeout="False" Font-Underline="False" VerticalAlign="Top" Width="20%" />
            <StepStyle Font-Size="0.8em" ForeColor="#333333" HorizontalAlign="Left" VerticalAlign="Top" />
            <WizardSteps>
                <asp:WizardStep runat="server" StepType="Start" title="Primary Information">
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="Label1" runat="server" Text="Your Birthday:" Font-Bold="False" Font-Size="Small"></asp:Label>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" MaxLength="10" Width="191px"></asp:TextBox>
                                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Height="200px" Width="196px" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" SelectedDate="1994-11-30">
                                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                    <WeekendDayStyle BackColor="#CCCCFF" />
                                </asp:Calendar>
                            </td>
                            <td>
                                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Choose" Width="62px" /><br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="please enter your birthday" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="Label2" runat="server" Text="E-mail address:" Font-Size="Small"></asp:Label>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox2" runat="server" Width="192px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="please enter your E-mail address" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="invalid address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="Label3" runat="server" Text="Confirm your E-mail:" Font-Size="Small"></asp:Label>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox3" runat="server" Width="190px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="please confirm your E-mail address" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="unmatched" ForeColor="Red"></asp:CompareValidator>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Personal Setting " StepType="Step">
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Size="Small" Text="Set username:"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox7" runat="server" AutoPostBack="True" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label14" runat="server" ForeColor="Red"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="please set your username" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="Label8" runat="server" Font-Size="Small" Text="Set password:"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="please set your password" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="Label9" runat="server" Font-Size="Small" Text="Confirm password:"></asp:Label>
                            </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="TextBox9" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" Display="Dynamic" ErrorMessage="please confirm your password" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox9" Display="Dynamic" ErrorMessage="unmatched" ForeColor="Red"></asp:CompareValidator>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Finish" Title="Confirmation">
                    <table class="auto-style2">
                        <tr>
                            <td style="width:50%">
                                <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Size="Small" Text="Tick here if you  want to receive our news by e-mail:"></asp:Label>
                            </td>
                            <td style="width:10%">
                                <asp:RadioButton ID="RadioButton1" runat="server" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label11" runat="server" Font-Size="Small" Text="Tick here if you want to join our user experience feedback program:"></asp:Label>
                                </td>
                            <td style="width:10%">
                                <asp:RadioButton ID="RadioButton2" runat="server" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label12" runat="server" Font-Size="Small" Text="Tick here if you agree with our policy of  cookies:"></asp:Label>
                            </td>
                            <td style="width:10%">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                    <asp:ListItem Value="0">*</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>
                                <asp:Label ID="Label13" runat="server" ForeColor="Red"></asp:Label><br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" EnableTheming="True" ErrorMessage="You must accept our cookies policy before finishing the registeration!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Complete" Title="Success" AllowReturn="False">
                    <h1 style="color:red">Congratulations!</h1>
                    <h2>You have finished your registeration.</h2>
                    <h2>Click <a href="mysearch.aspx">here</a> to start your <i><b>TRATH</b></i>~</h2>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </form>
</body>
</html>
