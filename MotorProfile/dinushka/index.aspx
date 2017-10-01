<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MotorProfile.index" %>

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

                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <%--<a href="#" class="dropdown-toggle" id="accountnamemenu" data-toggle="dropdown"></a>--%>
                                <asp:HyperLink ID="accountnamemenu" class="dropdown-toggle" data-toggle="dropdown" runat="server" >&nbsp;</asp:HyperLink>
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
                            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
                            <label><b>Username</b></label>
                            <asp:TextBox ID="TextBox1" class="form-control" runat="server" type="text" placeholder="Enter Username" name="uname"></asp:TextBox>

                            <label><b>Password</b></label>
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server" type="password" placeholder="Enter Password" name="psw"></asp:TextBox>

                            <asp:CheckBox ID="CheckBox1" runat="server" type="checkbox" />
                            Remember me
                           
                            <asp:Button ID="Button3login" type="button" class="form-control btn btn-primary" runat="server" Text="Login" OnClientClick="login(); return false;" />

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


                            <asp:Button ID="Button5" class="form-control btn btn-primary" runat="server" OnClick="Button5_Click" Text="Signup" />
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

        <!------------------------------------------------------------------------------------------------------------------------>

        <!--jquery -->

        <script>

            window.onload = function () {
                // hideaccountload();
            };

            function openModal() {
                $('#loginModal').modal('show');
            }

            function signupModal() {
                $('#signupModal').modal('show');
            }

            function hideaccountsucess() {
                var sf_menu_sub = $('.dropdown');

                sf_menu_sub.show();

            }

            function hideaccountload() {
                var sf_menu_sub = $('.dropdown');

                sf_menu_sub.hide();

            }

            function updateLabel(t) {
                //document.getElementById('signupbutton').innerHTML = t;
                //  $("#signupbutton").text(t);
                $("#signupbutton").hide();
                $("#loginbutton").hide();
                hideaccountsucess();
                $('#accountnamemenu').append('<span class="glyphicon glyphicon-user pull-left"></span>' + '&nbsp;' + t);
                //  $("#accountnamemenu").text(t);
            }
            function updateLabelqq() { $('#accountnamemenu').append('<span class="glyphicon glyphicon-user pull-left"></span>&nbsp; '); }

              function login() {

                var email = document.getElementById('<%=TextBox1.ClientID %>').value;
                var password = document.getElementById('<%=TextBox2.ClientID %>').value;


                PageMethods.LoginUser(email, password, onSucess, onError);


                function onSucess(result) {
                    alert(result);
                    $('#loginModal').modal('hide');
                    updateLabel(email);
                }


                function onError(result) {
                    alert('Cannot process your request at the moment, please try later.');
                }
            }

        </script>





    </form>


</body>
</html>
