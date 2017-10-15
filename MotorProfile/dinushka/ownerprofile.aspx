<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ownerprofile.aspx.cs" Inherits="MotorProfile.ownerprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="fw/flat-icon/flaticon.css" rel="stylesheet" />
    <link href="css/StyleSheet.css" rel="stylesheet" />
    <link href="fw/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="fw/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="fw/jquery/jquery-3.2.1.min.js"></script>
    <script src="fw/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>


    <title>Owner Profile </title>

</head>

<body>
    <form id="form1" runat="server">

                <!-- Navigation Bar -->
        <div>
            <nav class="navbar navbar-custom">
                <div class="container-fluid">

                    <ul class="nav navbar-nav">
                        <li><a href="indexAfterlogin.aspx"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>
                        <li><a href="ownerprofile.aspx"><span class="glyphicon glyphicon-user"></span>&nbsp;Profile</a></li>
                        <li><a href="#"><span class="flaticon-sports-car"></span>&nbsp;Vehicles</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-screenshot"></span>&nbsp;Event</a></li>
                        <li><a href="ratingsys.aspx"><span class="glyphicon glyphicon-star"></span>&nbsp;Rating</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-usd"></span>&nbsp;Buying</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-usd"></span>&nbsp;Selling</a></li>
                        <li><a href="#"><span class="flaticon-sports-car"></span>&nbsp;Hiring</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-wrench"></span>&nbsp;Parts</a></li>
                        <li><a href="http://localhost:53398/chat.aspx"><span class="glyphicon glyphicon-comment"></span>&nbsp;Chat</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <%--<a href="#" class="dropdown-toggle" id="accountnamemenu" data-toggle="dropdown"></a>--%>
                                <asp:HyperLink ID="accountnamemenu" class="dropdown-toggle" Text="" data-toggle="dropdown" runat="server">&nbsp;</asp:HyperLink>
                                <ul class="dropdown-menu">
                                    <li><a href="#"><span class="glyphicon glyphicon-cog pull-left"></span>&nbsp; Account Settings </a></li>
                                    <li class="divider"></li>
<%--                                    <li><a href="#"><span class="glyphicon glyphicon-stats pull-left"></span>&nbsp;User stats </a></li>
                                    <li class="divider"></li>--%>
                                    <li> <asp:LinkButton ID="LinkButton1" runat="server" Text="Sign Out" OnClick="Button1_Click">Sign Out</asp:LinkButton></li>
                                </ul>
                            </li>
                        </ul>
                    </ul>
                </div>
            </nav>
        </div>
        <!------------------------------------------------------------------------------------------------------------------------>



        <!-- Needed because other elements inside ProfilePage have floats -->


        <div class="container target">
           
             
                <div class="col-sm-3">
                   
                    <h2 class="">
                       <br />
                        <asp:Label ID="welcomemessage" runat="server" Text="Welcome {accountname}"></asp:Label></h2>

                  

               
                    <!--left col-->
                    <ul class="list-group">
                        <li class="list-group-item text-muted" contenteditable="false">Profile</li>
                        <li class="list-group-item text-right"><asp:Image ID="Image1" runat="server" Height="200" Width="200" /></li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong class="">Joined</strong></span> 2.13.2014</li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong class="">Last seen</strong></span><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong class="">Real name</strong></span><asp:Label ID="Label2name" runat="server" Text=""></asp:Label></li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong class="">Location: </strong></span>
                            <asp:Label ID="Label3location" runat="server" Text=""></asp:Label>
                        </li>
                    </ul>

                    <div class="panel panel-default">

                        <div class="panel-body">
                            <i style="color: green" class="fa fa-check-square"></i>Description:-
                            <asp:Label ID="Label2des" runat="server" Text=""></asp:Label>
                        </div>

                    </div>
                   

<%--                    <ul class="list-group">
                        <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i>

                        </li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong class="">Shares</strong></span> 125</li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong class="">Likes</strong></span> 13</li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong class="">Posts</strong></span> 37</li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong class="">Followers</strong></span> 78</li>
                    </ul>


                    <div class="panel panel-default">
                        <div class="panel-heading">Social Media</div>
                        <div class="panel-body">

                            <ul class="list-group">
                                <li class="list-group-item ">Facebook</li>
                                <li class="list-group-item ">Instrgram</li>
                                <li class="list-group-item ">Flicker</li>
                            </ul>

                        </div>
                    </div>--%>
                </div>


                <!--/col-3-->
<%--                <div class="col-sm-9" style="" contenteditable="false">
                    <div class="panel panel-default">
                        <div class="panel-heading">{Lastest Updates}</div>
                        <div class="panel-body">
                            { last interrations}
                        </div>
                    </div>--%>


                    <div class="panel panel-default ">
                        <div class="panel-heading" contenteditable="false">Vehicles I Own</div>
                        <div class="panel-body ">
                            <div class="row">
                                
                                <div id ="myowncar" runat="server"><%--add data from server --%>
 <%--                                    <div class="col-md-4">
                                    <div class="thumbnail">
                                        <img alt="300x200" src="img/sports.jpg">
                                        <div class="caption">
                                            <h3>Rover</h3>
                                            <p>CAR DETAILS</p>
                                        </div>
                                    </div>
                                </div>--%>
                                </div>
                                



                            </div>
                        </div>
                    </div>


                    <div class="panel panel-default">
                        <div class="panel-heading">Previously owned vehicles</div>
                        <div class="panel-body f">
                            <div class="row">

                                <div id ="myownedcar" runat="server">
<%--                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <img alt="300x200" src="img/sports.jpg">
                                        <div class="caption">
                                            <h3>Rover</h3>
                                            <p>CAR DETAILS</p>
                                        </div>
                                    </div>
                                </div>--%>
                                    </div>


                            </div>
                        </div>
                    </div>

                </div>

            </div>
            
        
    </form>
</body>
</html>
