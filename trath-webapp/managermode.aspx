<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="managermode.aspx.cs" Inherits="trath_webapp.managermode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trath|Operate as a manager</title>
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
    <div>
    
        <table class="auto-style1">
            <tr>
                <td style="width:100%">
                     <asp:TextBox ID="TextBox1" runat="server" Height="25px" AutoPostBack="True"></asp:TextBox>
                    <asp:DropDownList ID="DropDownListContinents" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="continent" DataValueField="convalue"></asp:DropDownList>
                    <asp:DropDownList ID="DropDownListCountriesInAContient" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="country" DataValueField="couvalue">
                    </asp:DropDownList>
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="New Record" />
                     <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Confirm" Visible="False" />
                     <br />
                     <asp:TextBox ID="TextBox2" runat="server" ForeColor="#669999" Visible="False">attraction</asp:TextBox>
                     <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" ForeColor="#669999" Visible="False">
                         <asp:ListItem>Asia</asp:ListItem>
                         <asp:ListItem>Europe</asp:ListItem>
                         <asp:ListItem>North America</asp:ListItem>
                         <asp:ListItem>South America</asp:ListItem>
                         <asp:ListItem>Oceania</asp:ListItem>
                     </asp:DropDownList>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="country" DataValueField="country" ForeColor="#669999" Visible="False">
                    <asp:ListItem>Beijing</asp:ListItem>
                </asp:DropDownList>
                     <asp:TextBox ID="TextBox5" runat="server" ForeColor="#669999" Visible="False" Width="245px">detail address</asp:TextBox>
                <asp:DropDownList ID="DropDownList4" runat="server" ForeColor="#669999" Visible="False">
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
                <asp:DropDownList ID="DropDownList5" runat="server" ForeColor="#669999" Visible="False">
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
                     <br />
                    <asp:TextBox ID="TextBox8" runat="server" ForeColor="#669999" Visible="False">ticketinfo</asp:TextBox>
                <asp:DropDownList ID="DropDownList6" runat="server" ForeColor="#669999" Visible="False">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>3.5</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>4.5</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                    <asp:TextBox ID="TextBox10" runat="server" ForeColor="#669999" Visible="False" Width="414px">review</asp:TextBox>
                    <asp:TextBox ID="TextBox11" runat="server" ForeColor="#669999" Visible="False">~/image/</asp:TextBox>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True" DataKeyNames="Id">
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="attractioname" HeaderText="attractioname" SortExpression="attractioname" />
                            <asp:TemplateField HeaderText="address1" SortExpression="address1">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("address1") %>'>
                                        <asp:ListItem>Asia</asp:ListItem>
                                        <asp:ListItem>Europe</asp:ListItem>
                                        <asp:ListItem>North America</asp:ListItem>
                                        <asp:ListItem>South America</asp:ListItem>
                                        <asp:ListItem>Africa</asp:ListItem>
                                        <asp:ListItem>Oceania</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("address1") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="address2" HeaderText="address2" SortExpression="address2" />
                            <asp:BoundField DataField="address3" HeaderText="address3" SortExpression="address3" />
                            <asp:BoundField DataField="opentime1" HeaderText="opentime1" SortExpression="opentime1" />
                            <asp:BoundField DataField="opentime2" HeaderText="opentime2" SortExpression="opentime2" />
                            <asp:BoundField DataField="ticketinfo" HeaderText="ticketinfo" SortExpression="ticketinfo" />
                            <asp:BoundField DataField="score" HeaderText="score" SortExpression="score" />
                            <asp:BoundField DataField="review" HeaderText="review" SortExpression="review" />
                            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                            <asp:BoundField DataField="like" HeaderText="like" SortExpression="like" ReadOnly="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                        </Columns>
                    </asp:GridView>
                     
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trath1ConnectionString %>" SelectCommand="SELECT DISTINCT [continent], [convalue] FROM [Cc] WHERE ([enabled] = @enabled) ORDER BY [continent]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="enabled" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:trath1ConnectionString %>" SelectCommand="SELECT country, couvalue FROM Cc WHERE (enabled = @enabled) AND (continent LIKE '%' + @continent + '%') OR (couvalue = @couvalue) ORDER BY country">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="enabled" Type="Int32" />
                            <asp:ControlParameter ControlID="DropDownListContinents" Name="continent" PropertyName="SelectedValue" Type="String" DefaultValue="%" />
                            <asp:Parameter DefaultValue="%" Name="couvalue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:trath1ConnectionString %>" SelectCommand="SELECT [attractioname], [address1], [address2], [address3], [opentime1], [opentime2], [ticketinfo], [score], [review], [image], [like], [Id] FROM [Attractions] WHERE (([attractioname] LIKE '%' + @attractioname + '%') AND ([address2] LIKE '%' + @address2 + '%') AND ([address1] LIKE '%' + @address1 + '%'))" DeleteCommand="DELETE FROM [Attractions] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Attractions] ([attractioname], [address1], [address2], [address3], [opentime1], [opentime2], [ticketinfo], [score], [review], [image], [like]) VALUES (@attractioname, @address1, @address2, @address3, @opentime1, @opentime2, @ticketinfo, @score, @review, @image, @like)" UpdateCommand="UPDATE [Attractions] SET [attractioname] = @attractioname, [address1] = @address1, [address2] = @address2, [address3] = @address3, [opentime1] = @opentime1, [opentime2] = @opentime2, [ticketinfo] = @ticketinfo, [score] = @score, [review] = @review, [image] = @image WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="attractioname" Type="String" />
                            <asp:Parameter Name="address1" Type="String" />
                            <asp:Parameter Name="address2" Type="String" />
                            <asp:Parameter Name="address3" Type="String" />
                            <asp:Parameter Name="opentime1" Type="String" />
                            <asp:Parameter Name="opentime2" Type="String" />
                            <asp:Parameter Name="ticketinfo" Type="String" />
                            <asp:Parameter Name="score" Type="String" />
                            <asp:Parameter Name="review" Type="String" />
                            <asp:Parameter Name="image" Type="String" />
                            <asp:Parameter Name="like" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" DefaultValue="%" Name="attractioname" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="DropDownListCountriesInAContient" DefaultValue="%" Name="address2" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="DropDownListContinents" DefaultValue="%" Name="address1" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="attractioname" Type="String" />
                            <asp:Parameter Name="address1" Type="String" />
                            <asp:Parameter Name="address2" Type="String" />
                            <asp:Parameter Name="address3" Type="String" />
                            <asp:Parameter Name="opentime1" Type="String" />
                            <asp:Parameter Name="opentime2" Type="String" />
                            <asp:Parameter Name="ticketinfo" Type="String" />
                            <asp:Parameter Name="score" Type="String" />
                            <asp:Parameter Name="review" Type="String" />
                            <asp:Parameter Name="image" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:trath1ConnectionString %>" SelectCommand="SELECT [country] FROM [Cc] WHERE ([continent] = @continent)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="continent" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
