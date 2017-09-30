<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addcar.aspx.cs" Inherits="aspwebtemp1.addcar" %>

<!DOCTYPE html>

<link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="icon2/flaticon.css">
    <meta charset="utf-8">
    <title>Untitled Document</title>
    <style type="text/css">
        .auto-style1 {
            width: 95%;
            margin-left: 20px;
        }

        .auto-style2 {
            width: 171px;
            text-align: right;
        }

        .auto-style3 {
            width: 171px;
            height: 122px;
        }

        .auto-style4 {
            height: 122px;
            width: 271px;
        }

        .auto-style7 {
            width: 271px;
        }

        .auto-style8 {
            width: 80px;
        }

        .auto-style9 {
            width: 171px;
            text-align: right;
            height: 55px;
        }

        .auto-style10 {
            width: 271px;
            height: 55px;
        }

        .auto-style11 {
            height: 55px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="navbar">
            <ul id="nav">
                <li><a class="flaticon-home-icon-silhouette" id="navlink">&nbsp;Home</a></li>
                <li><a class="flaticon-man-user">&nbsp;Profile</a></li>
                <li><a class="flaticon-sports-car" href="WebForm1.aspx">&nbsp;Vehicle</a></li>
                <li><a class="flaticon-black-back-closed-envelope-shape" style="width: 120px">&nbsp;Message</a></li>
            </ul>
            <div class="navsearch">
                <input placeholder="Search" id="stext" type="text" /></div>
            <a href="addcar.aspx">
                <div class="linkadd">Add New Vehicle</div>
            </a>

        </div>


        <div class="pageContent">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"><span style="padding-top: 40px; font-size: 25px; color: darkgray;">
                        <br />
                        Add a vehicle</span> </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">Vehicle Model</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="model" runat="server" Height="34px">
                            <asp:ListItem Value="Toyota"></asp:ListItem>
                            <asp:ListItem Value="Honda"></asp:ListItem>
                            <asp:ListItem Value="Audi"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Vehical picture</td>
                    <td class="auto-style7">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Vehicle Name</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="vehicle_name" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Registration number</td>
                    <td class="auto-style7">&nbsp;<asp:TextBox ID="reg_num" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style9">Registration date</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="reg_date" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Country of origin</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="country" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" Text="Add" Width="100px" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <input id="Reset1" class="auto-style8" type="reset" value="Reset" /></td>
                </tr>
            </table>

        </div>


    </form>

</body>
</html>

