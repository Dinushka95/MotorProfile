<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="indexAfterlogin.aspx.cs" Inherits="MotorProfile.dinushka.indexAfterlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="fw/flat-icon/flaticon.css" rel="stylesheet" />
    <link href="css/StyleSheet.css" rel="stylesheet" />
    <link href="fw/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="fw/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="fw/jquery/jquery-3.2.1.min.js"></script>
    <script src="fw/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>


    <title>Wellcome To Motor Profile </title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navigation Bar -->
        <div>
            <nav class="navbar navbar-custom">
                <div class="container-fluid">

                    <ul class="nav navbar-nav">
                        <li><a href="index.aspx"><span class="flaticon-home-icon-silhouette"></span>&nbsp;Home</a></li>
                        <li><a href="ownerprofile.aspx"><span class="flaticon-man-user"></span>&nbsp;Profile</a></li>
                        <li><a href="ratingsys.aspx"><span class="glyphicon glyphicon-ok-circle"></span>&nbsp;Vehicle Rating</a></li>
                        <li><a href="#"><span class="flaticon-sports-car"></span>&nbsp;Vehicles</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-usd"></span>&nbsp;Buying & Selling</a></li>
                        <li><a href="#"><span class="flaticon-sports-car"></span>&nbsp;Hiring / Renting</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-wrench"></span>&nbsp;Vehicle Parts</a></li>
                        <li><a href="#"><span class="flaticon-black-back-closed-envelope-shape"></span>&nbsp;Community Chat</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <%--<a href="#" class="dropdown-toggle" id="accountnamemenu" data-toggle="dropdown"></a>--%>
                                <asp:HyperLink ID="accountnamemenu" class="dropdown-toggle" Text="" data-toggle="dropdown" runat="server">&nbsp;</asp:HyperLink>
                                <ul class="dropdown-menu">
                                    <li><a href="#"><span class="glyphicon glyphicon-cog pull-left"></span>&nbsp; Account Settings </a></li>
                                    <li class="divider"></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-stats pull-left"></span>&nbsp;User stats </a></li>
                                    <li class="divider"></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-log-out pull-left"></span>&nbsp; Sign Out </a></li>
                                </ul>
                            </li>
                        </ul>
                    </ul>
                </div>
            </nav>
        </div>

    </form>
</body>
</html>
