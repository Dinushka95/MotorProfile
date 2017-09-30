<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Selling.aspx.cs" Inherits="MotorProfile.duminth.Selling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="Selling.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <center>
                <form  runat="server">
                   
                    <table>
                        <tr>
                              <h1 class="head" style=" color:aliceblue;">
                                 Selling
                               </h1>
                        </tr>
                      
                        <tr>
                           <td>
                                 <img src="Koenigsegg-Agera-RS-Naraya.jpg" height="300" width="500" />
                           </td>
                       </tr>
                    </table>

                   <table class="table1">
                       <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Vehicle No" ></asp:Label>

                                <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 200px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>

                            </td>
                            <td>
                                <asp:TextBox ID="TextBox0" runat="server"></asp:TextBox>

                            </td>
                        </tr>
                       <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Brand" ></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="Label2" runat="server" Text="Model"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="Label3" runat="server" Text="Year"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Fuel Type"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Engine Capacity"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Mileage"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="Status"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                       <tr>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="Prize"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                       <tr>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="Contact No"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                       <tr>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1"  class="button1" runat="server" Text="Add Vehicle" OnClick="Button1_Click"></asp:Button>
                                <asp:Button ID="Button2"  class="button2" runat="server" Text="Update Vehicle" OnClick="Button2_Click"></asp:Button>
                                <asp:Button ID="Button3"  class="button3" runat="server" Text="Delete Vehicle" OnClick="Button3_Click"></asp:Button>
                            </td>
                            
                        </tr>
                     
                       </table>
                </form>
            </center>
</body>
</html>
