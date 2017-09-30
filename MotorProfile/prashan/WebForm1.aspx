<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="aspwebtemp1.WebForm1" %>

<!DOCTYPE html>

<link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
<link href="style.css" rel="stylesheet" />
<link href="style.scss" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="icon2/flaticon.css">
    <meta charset="utf-8">
    <title>Untitled Document</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 240px;
        }

        .auto-style4 {
            border: medium #508AFF solid;
            position: relative;
            width: 150px;
            height: 150px;
            border-radius: 5px;
            background-color: #D7D7D7;
            left: -9px;
            top: 113px;
        }

        .auto-style5 {
            font-size: large;
        }

        .auto-style6 {
            margin-left: 0px;
            margin-top: 0px;
        }

        .auto-style7 {
            margin-left: 17px;
            height: 29px;
            margin-top: 9px;
        }

        .auto-style8 {
            height: 40px;
        }

        .auto-style9 {
            width: 94%;
            margin-left: 15px;
            margin-top: 15px;
        }

        .auto-style10 {
            font-size: large;
            width: 248px;
            height: 53px;
            color: #333333;
        }

        .auto-style11 {
            height: 40px;
            width: 248px;
            text-align: right;
            color: #666666;
        }

        .auto-style13 {
            height: 39px;
            width: 248px;
            text-align: right;
            color: #666666;
        }

        .auto-style14 {
            height: 39px;
        }

        .auto-style15 {
            height: 53px;
        }

        .auto-style16 {
            margin-left: 19px;
        }

        .auto-style17 {
            color: #999999;
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
                    <td class="auto-style2">
                        <div class="auto-style4"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="abbutton">
                            <a href="WebForm1.aspx">
                                <div class="link">About</div>
                            </a>
                            <a href="WebForm1.aspx">
                                <div class="link">Timeline</div>
                            </a>
                        </div>
                    </td>
                </tr>
            </table>
            <div class="pageleft">
                <br />
                &nbsp;&nbsp; <span class="auto-style5">My Vehicles<br />
                    &nbsp;&nbsp;
                            <asp:DropDownList ID="ddl" runat="server" AutoPostBack="True" CssClass="auto-style6" Height="29px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="120px">
                            </asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Text="View" Width="71px" OnClick="Button1_Click1" />
                    <br />
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style16" Height="29px" Text="Delete" OnClick="Button2_Click" />
                </span>
            </div>
            <div class="pageright">



                <table class="auto-style9">
                    <tr>
                        <td class="auto-style10">About</td>
                        <td class="auto-style15"></td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Vehicle Model</td>
                        <td class="auto-style8">&nbsp;
                                        <asp:Label ID="lb1" runat="server" CssClass="auto-style17"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Vehicle Name</td>
                        <td class="auto-style8">&nbsp;
                                        <asp:Label ID="lb11" runat="server" CssClass="auto-style17"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Registration number</td>
                        <td class="auto-style14">&nbsp;
                                        <asp:Label ID="lb2" runat="server" CssClass="auto-style17"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Registration date</td>
                        <td class="auto-style8">&nbsp;
                                        <asp:Label ID="lb3" runat="server" CssClass="auto-style17"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Country of origin</td>
                        <td class="auto-style8">&nbsp;
                                        <asp:Label ID="lb4" runat="server" CssClass="auto-style17"></asp:Label>
                        </td>
                    </tr>
                </table>



            </div>
        </div>


    </form>
</body>
</html>
