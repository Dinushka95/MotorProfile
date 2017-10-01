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
                                <asp:HyperLink ID="accountnamemenu" class="dropdown-toggle" data-toggle="dropdown" runat="server" ></asp:HyperLink>
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
        <!------------------------------------------------------------------------------------------------------------------------>

        <!-- Modal -->

        <!-- owner modal -->



        <!-- Needed because other elements inside ProfilePage have floats -->


        <div class="container target">
            <div class="row">

                <div class="col-sm-10">
                    <h1 class="">
                        <asp:Label ID="welcomemessage" runat="server" Text="Welcome {accountname}"></asp:Label></h1>

                    <div class="col-sm-2">
                        <img title="profile image" class="img-circle img-responsive" src="img/img_avatar.png" />
                        <br />
                    </div>
                </div>
            </div>




            <div class="row">
                <div class="col-sm-3">
                    <!--left col-->
                    <ul class="list-group">
                        <li class="list-group-item text-muted" contenteditable="false">Profile</li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong class="">Joined</strong></span> 2.13.2014</li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong class="">Last seen</strong></span> Yesterday</li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong class="">Real name</strong></span> {name}</li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong class="">Location: </strong></span>{city}
                        </li>
                    </ul>

                    <div class="panel panel-default">

                        <div class="panel-body">
                            <i style="color: green" class="fa fa-check-square"></i>
                            {details/ descrption /bio}
                        </div>

                    </div>


                    <ul class="list-group">
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
                    </div>
                </div>


                <!--/col-3-->
                <div class="col-sm-9" style="" contenteditable="false">
                    <div class="panel panel-default">
                        <div class="panel-heading">{Lastest Updates}</div>
                        <div class="panel-body">
                            { last interrations}
                        </div>
                    </div>


                    <div class="panel panel-default target">
                        <div class="panel-heading" contenteditable="false">Vehicles I Own</div>
                        <div class="panel-body">
                            <div class="row">


                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <img alt="300x200" src="img/sports.jpg">
                                        <div class="caption">
                                            <h3>Rover</h3>
                                            <p>CAR DETAILS</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <img alt="300x200" src="img/sports.jpg">
                                        <div class="caption">
                                            <h3>Maruti</h3>
                                            <p>CAR DETAILs </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <img alt="300x200" src="img/sports.jpg">
                                        <div class="caption">
                                            <h3>Nissan</h3>
                                            <p>CAR DETAILS</p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                    <div class="panel panel-default">
                        <div class="panel-heading">Previously owned vehicles</div>
                        <div class="panel-body">
                            <div class="row">

                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <img alt="300x200" src="img/sports.jpg">
                                        <div class="caption">
                                            <h3>Rover</h3>
                                            <p>CAR DETAILS</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <img alt="300x200" src="img/sports.jpg">
                                        <div class="caption">
                                            <h3>Maruti</h3>
                                            <p>CAR DETAILS</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <img alt="300x200" src="img/sports.jpg">
                                        <div class="caption">
                                            <h3>Nissan</h3>
                                            <p>CAR DETAILS</p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>

            </div>
            
        <script type="text/javascript">
            function updateLabel() { $('#accountnamemenu').append('<span class="glyphicon glyphicon-user pull-left"></span>&nbsp; '); }

            
        </script>
    </form>
</body>
</html>
