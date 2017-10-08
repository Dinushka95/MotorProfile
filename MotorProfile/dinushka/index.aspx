﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MotorProfile.index" %>

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
        <!--ssd-->
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
                        <li><a id="signupbutton" href="#" onclick="signupModal()"><span class="glyphicon glyphicon-user"></span>&nbsp; Sign Up</a></li>
                        <li><a id="loginbutton" href="#" onclick="openModal()"><span class="glyphicon glyphicon-log-in"></span>&nbsp; Login</a></li>
                    </ul>

                </div>
            </nav>
        </div>

        <!------------------------------------------------------------------------------------------------------------------------>

        <!-- Modal -->

        <!-- Login modal -->

        <div class="modal fade" id="loginModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <h1 class="text-center"><span class="glyphicon glyphicon-lock  "></span>Login</h1>
                        <asp:Image ID="Image1" runat="server" src="img/img_avatar.png" class="img-circle center-block" Width="150" Height="150" />
                    </div>

                    <div class="modal-body">
                        <div class="form-group">

                            <label><b>Username</b></label>
                            <asp:TextBox ID="TextBox1" class="form-control" runat="server" type="text" placeholder="Enter Username" name="uname"></asp:TextBox>

                            <label><b>Password</b></label>
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server" type="password" placeholder="Enter Password" name="psw"></asp:TextBox>

                            <asp:CheckBox ID="CheckBox1" runat="server" type="checkbox" />
                            Remember me
                           
                            <asp:Button ID="Button3login" type="button" class="form-control btn btn-primary" runat="server" Text="Login" OnClick="Button3login_Click" />

                        </div>
                    </div>

                    <div class="modal-footer">
                        <div class="container-fluid">
                            <span class="psw pull-left">Forgot <a href="#">password?</a></span>
                            <asp:Button ID="Button2" runat="server" Text="Close" type="button" class="btn btn-default " data-dismiss="modal" />

                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- Signup modal -->

        <div class="modal fade" id="signupModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <h1 class="text-center">Signup</h1>
                    </div>

                    <div class="modal-body">
                        <div class="form-group">
                            <label><b>Username</b></label>
                            <asp:TextBox ID="TextBox3" class="form-control" runat="server" type="text" placeholder="Enter Username" name="uname"></asp:TextBox><br />

                            <label><b>Password</b></label>
                            <asp:TextBox ID="TextBox4" class="form-control" runat="server" type="password" placeholder="Enter Password" name="psw"></asp:TextBox><br />

                            <label><b>Re-Enter Password</b></label>
                            <asp:TextBox ID="TextBox5" class="form-control" runat="server" type="text" placeholder="Enter Re-Enter Password" name="rpsw"></asp:TextBox><br />

                            <label><b>Name</b></label>
                            <asp:TextBox ID="TextBox6" class="form-control" runat="server" type="text" placeholder="Enter Name" name="name"></asp:TextBox><br />

                            <label>Age<b></b></label>
                            <asp:TextBox ID="TextBox7" class="form-control" runat="server" type="text" placeholder="Enter Age" name="age"></asp:TextBox><br />

                            <label><b>Location</b></label>
                            <asp:TextBox ID="TextBox8" class="form-control" runat="server" type="text" placeholder="Enter Location" name="location"></asp:TextBox><br />

                            <label><b>Gender</b></label>
                            <div class="">
                                <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" Style="margin-right: 10px" />
                                <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" Style="margin-right: 10px" />
                            </div>

                            <label><b>E-mail</b></label>
                            <asp:TextBox ID="TextBox9" class="form-control" runat="server" type="text" placeholder="Enter E-Mail" name="email"></asp:TextBox><br />

                            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
                            <br />


                            <asp:Button ID="Buttonsignup" class="form-control btn btn-primary" runat="server" OnClick="Buttonsignup_Click" Text="Signup" />
                        </div>
                    </div>

                    <div class="modal-footer">
                        <div class="container-fluid">
                            <span class="psw pull-left">Forgot <a href="#">password?</a></span>
                            <asp:Button ID="Button4" runat="server" Text="Close" type="button" class="btn btn-default " data-dismiss="modal" />
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div>

            <div class="slideshow-container">
                <div class="mySlides fade">
                    <div class="numbertext">1 / 3</div>
                    <img src="http://via.placeholder.com/350x150" style="width: 100%">
                    <div class="text">Caption Text</div>
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">2 / 3</div>
                    <img src="img2.jpg" style="width: 100%">
                    <div class="text">Caption Two</div>
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">3 / 3</div>
                    <img src="img3.jpg" style="width: 100%">
                    <div class="text">Caption Three</div>
                </div>

                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>
            <br>

            <div style="text-align: center">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
            </div>

        </div>

        <!------------------------------------------------------------------------------------------------------------------------>

        <!--jquery -->

        <script>

            window.onload = function () {
                // hideaccountload();
            };

            function openModal() {
                $('#loginModal').modal('show');
            };

            function signupModal() {
                $('#signupModal').modal('show');
            };

            function LdropdHide() {
                document.getElementById('dropdown').hidden;
            }



        </script>

    </form>
</body>
</html>
