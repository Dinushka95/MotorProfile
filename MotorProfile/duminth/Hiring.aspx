<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hiring.aspx.cs" Inherits="MotorProfile.duminth.Hiring" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="Hiring.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <center>
                <form  runat="server">
                   <table>
                       <tr>
                            <h1 class="head" style=" color:aliceblue;">
                                Hiring
                            </h1>
                       </tr>
                       <tr>
                            <td>
                                <asp:TextBox ID="TextBox11" runat="server" Style ="width:100%;"></asp:TextBox>
                            </td>        
                            <td>    
                                <asp:Button ID="button5" runat="server" Text="Search" style="background-color:cornflowerblue;  border-color:#000;"></asp:Button>
                            </td>  
                        </tr>
                   </table>
                   <table class="table1">
                       
                        
                        <img src="2015_koenigsegg_agera_hh-HD.jpg" height="300" width="500" />

                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Brand"></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Model"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Year"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Fuel Type"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Engine Capacity"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Mileage"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="Condition"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                       <tr>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="Time Period"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                       <tr>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="Bidding Prize"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 <asp:Button ID="Button1"  class="button1" runat="server" Text="Bid"></asp:Button>
                            </td>

                        </tr>
                     </table>
                </form>
            </center>
</body>
</html>
