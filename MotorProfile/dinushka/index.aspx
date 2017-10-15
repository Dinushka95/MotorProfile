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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="TextBox1" ValidationGroup="Group1" runat="server" ErrorMessage="Username Required"></asp:RequiredFieldValidator>
                            <br />

                            <label><b>Password</b></label>
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server" type="password" placeholder="Enter Password" name="psw"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="TextBox2" ValidationGroup="Group1" runat="server" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                            <br />

                            <asp:CheckBox ID="CheckBox1" runat="server" type="checkbox" />
                            Remember me
                           
                            <asp:Button ID="Button3login" type="button" class="form-control btn btn-primary" runat="server" Text="Login" ValidationGroup="Group1" OnClick="Button3login_Click" />

                        </div>
                    </div>

                    <div class="modal-footer">
                        <div class="container-fluid">
                           <%-- <span class="psw pull-left">Forgot <a href="#">password?</a></span>--%>
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
                            <asp:TextBox ID="TextBox3" class="form-control" runat="server" type="text" placeholder="Enter Username" name="uname"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox3" runat="server" ErrorMessage="Username Required"></asp:RequiredFieldValidator>
                            <br />

                            <label><b>Password</b></label>
                            <asp:TextBox ID="TextBox4" class="form-control" runat="server" type="password" placeholder="Enter Password" name="psw"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox4" runat="server" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                            <br />

                            <label><b>Re-Enter Password</b></label>
                            <asp:TextBox ID="TextBox5" class="form-control" runat="server" type="text" placeholder="Enter Re-Enter Password" name="rpsw"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox5" runat="server" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Operator="Equal" runat="server" ErrorMessage="Password should Match"></asp:CompareValidator>
                            <br />

                            <label><b>Name</b></label>
                            <asp:TextBox ID="TextBox6" class="form-control" runat="server" type="text" placeholder="Enter Name" name="name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox6" runat="server" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
                            <br />

                            <label>Age<b></b></label>
                            <asp:TextBox ID="TextBox7" class="form-control" runat="server" type="text" placeholder="Enter Age" name="age"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox7" runat="server" ErrorMessage="Age Required"></asp:RequiredFieldValidator>
                            <br />

                            <label><b>Location</b></label>
                            <asp:TextBox ID="TextBox8" class="form-control" runat="server" type="text" placeholder="Enter Location" name="location"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox8" runat="server" ErrorMessage="Location Required"></asp:RequiredFieldValidator>
                            <br />

                            <label><b>Gender</b></label>
                            <div class="">
                                <asp:RadioButton ID="RadioButton1" runat="server" checked="true" Text="Male" Style="margin-right: 10px" />
                                <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" Style="margin-right: 10px" />
                            </div>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <label><b>E-mail</b></label>
                            <asp:TextBox ID="TextBox9" class="form-control" runat="server" type="text" placeholder="Enter E-Mail" name="email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox9" runat="server" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox9" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Invaild Email Address"></asp:RegularExpressionValidator>
                            
                            <br />

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
        <!-------------------------------------------banner ----------------------------------------------------------------------------->
        <img src="/dinushka/img/banner_cars_2016.jpg" class="img-fluid" alt="Responsive image" />
        <!-------------------------------------------Lastest car news ----------------------------------------------------------------------------->
        <div>


            <section class="newsList_second">
                <div class="container">
                    <div class="heading">
                        <div class="heading-container">
                            <h2 class="heading-title">Latest Car News</h2>
                        </div>
                    </div>

                    <br class="clear"/>

                    <div class="row">

                        <div id ="latestcarnew" runat="server">

<%--                        <div class=" col-xs-12 col-sm-6 col-lg-4">
                            
                                <div id="_content_cro_en_cars1_jcrcontent_centerpars_newslist_v2_5_1462474367112" class="" data-url="/car-safety/hot-car-fatalities-year-round-threat-to-children-pets-heat-stroke/">
                                        <div class="figure">
                                            <img src="/dinushka/img/CR-Cars-Hero-Baby-on-Board-08-17-Crop.jpg"/>                                         
                                        </div>
                                        <p class="title"><a href="/car-safety/hot-car-fatalities-year-round-threat-to-children-pets-heat-stroke/">CR Tests Show How Hot Car Fatalities Are Year-Round Threat </a></p>
                                </div> 
                            </div>--%>

                        </div>

<%--                        <div class="newsItem-container col-xs-12 col-sm-6 col-lg-4">
                            <div class="newsItem-cq-wrapper">

                                <div id="_content_cro_en_cars1_jcrcontent_centerpars_newslist_v2_4_1462474363104" class="newsItem" data-url="/pickup-trucks/heavy-duty-pickup-truck-fuel-economy/">
                                    <div class="news-item">
                                        <div class="figure">
                                            <img class="cr-image cr-image-lazy" src="/dinushka/img/CR-Cars-Hero-2017-Ford-F-250-farm-09-17-Crop.jpg">
                                            <div class="news-overlay"></div>
                                           
                                        </div>
                                        
                                        <p class="title"><a href="/pickup-trucks/heavy-duty-pickup-truck-fuel-economy/">Exclusive: Heavy-Duty Pickup Truck Fuel Economy Results </a></p>
                                    </div>
                                </div>


                            </div>

                        </div>
                        <div class="newsItem-container col-xs-12 col-sm-6 col-lg-4">
                            <div class="newsItem-cq-wrapper">
                                <div id="_content_cro_en_cars1_jcrcontent_centerpars_newslist_v2_6_1462474370587" class="newsItem" data-url="/small-cars/2018-hyundai-elantra-gt-review-first-drive/">
                                    <div class="news-item">
                                        <div class="figure">
                                            <img class="cr-image" src="/dinushka/img/CR-Cars-Hero-2018-Hyundai-Elantra-GTs-09-17-Crop.jpg">
                                            <div class="news-overlay"></div>
                                         
                                        </div>
                                      
                                        <p class="title"><a href="/small-cars/2018-hyundai-elantra-gt-review-first-drive/">First Drive: 2018 Hyundai Elantra GT Brings More Heat the car to new  </a></p>
                                    </div>
                                </div>


                            </div>

                        </div>
                        <div class="newsItem-container col-xs-12 col-sm-6 col-lg-4">
                            <div class="newsItem-cq-wrapper">
                                <div id="_content_cro_en_cars1_jcrcontent_centerpars_newslist_v2_2_1462474355763" class="newsItem" data-url="/cars-driving/talking-cars-with-consumer-reports-124-honda-accord-car-deals/">
                                    <div class="news-item">
                                        <div class="figure">
                                            <img class="cr-image cr-image-lazy" src="/dinushka/img/CR-Cars-Inline-Talking-Cars-124-10-17.jpg">
                                            <div class="news-overlay"></div>
                                        
                                        </div>
                                       
                                        <p class="title"><a href="/cars-driving/talking-cars-with-consumer-reports-124-honda-accord-car-deals/">'Talking Cars' on 2018 Honda Accord, Hot New-Car Deals </a></p>
                                    </div>
                                </div>


                            </div>

                        </div>
                        <div class="newsItem-container col-xs-12 col-sm-6 col-lg-4">
                            <div class="newsItem-cq-wrapper">
                                <div id="_content_cro_en_cars1_jcrcontent_centerpars_newslist_v2_1_1462474318299" class="newsItem" data-url="/car-safety/high-tech-car-features-distract-drivers-aaa-study/">
                                    <div class="news-item">
                                        <div class="figure">
                                            <img class="cr-image cr-image-lazy" src="/dinushka/img/CR-Cars-Hero-2018-Cadillac-CT6-CarPlay-10-17-Crop.jpg">
                                            <div class="news-overlay"></div>
                                           
                                        </div>
                                    
                                        <p class="title"><a href="/car-safety/high-tech-car-features-distract-drivers-aaa-study/">High-Tech Features Distract Drivers for Dangerously Long Periods </a></p>
                                    </div>
                                </div>


                            </div>

                        </div>
                        <div class="newsItem-container col-xs-12 col-sm-6 col-lg-4">
                            <div class="newsItem-cq-wrapper">
                                <div id="_content_cro_en_cars1_jcrcontent_centerpars_newslist_v2_3_1462474359400" class="newsItem" data-url="/transportation/nhtsa-2016-highway-fatalities/">
                                    <div class="news-item">
                                        <div class="figure">
                                            <img class="cr-image cr-image-lazy" src="/dinushka/img/CR-Cars-AH-Highway-Traffic-11-15.jpg">
                                            <div class="news-overlay"></div>
                                         
                                        </div>
                                   
                                        <p class="title"><a href="/transportation/nhtsa-2016-highway-fatalities/">Traffic Deaths Top 37,000; Pedestrian/Bicycle Deaths Hit Highs </a></p>
                                    </div>
                                </div>


                            </div>

                        </div>--%>

                        <div class="col-xs-12 hidden-lg hidden-sm hidden-md newsItem-devider-wrap">
                            <div class="newsItem-devider"></div>
                        </div>
                    </div>

                    <input class="newsNumber" value="6" type="hidden">


<%--                    <div class="row text-center show">
                        <a class="btn btn-default btn-lg btn-all" href="https://www.consumerreports.org/cro/news/index.htm#url=/bin/feedinfo.tag=productsAndServices:taxonomy|cars.json&amp;title=Cars&amp;page=1">View All
                        </a>
                    </div>--%>

                </div>
            </section>
        </div>
        <!----------------------------------------best and worst car-------------------------------------------------------------------------------->


        <div>
            <section class="newsList_second">
                <div class="container">
                    <div class="heading">
                        <div class="heading-container">
                            <h2 class="heading-title">Best &amp; Worst Cars</h2>
                        </div>
                    </div>
                    <br class="clear">

                    <div class="row">
                        <div class="newsItem-container col-xs-12 col-sm-6 col-lg-4">
                            <div class="newsItem-cq-wrapper">
                                <div id="_content_cro_en_cars1_jcrcontent_centerpars_newslist_v2_0_6_1469045940947" class="newsItem" data-url="/car-batteries/tests-reveal-the-best-car-batteries/">
                                    <div class="news-item">
                                        <div class="figure">
                                            <img class="cr-image cr-image-lazy" src="/dinushka/img/CR-Cars-Hero-Car-Battery-Installation-09-17-Crop.jpg">
                                            <div class="news-overlay"></div>
                                        </div>
                                        <p class="title"><a href="/car-batteries/tests-reveal-the-best-car-batteries/">CR Tests Reveal the Best Car Batteries </a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="newsItem-container col-xs-12 col-sm-6 col-lg-4">
                            <div class="newsItem-cq-wrapper">
                                <div id="_content_cro_en_cars1_jcrcontent_centerpars_newslist_v2_0_7_1469045951731" class="newsItem" data-url="/all-wheel-drive/best-all-wheel-drive-cars-suvs/">
                                    <div class="news-item">
                                        <div class="figure">
                                            <img class="cr-image cr-image-lazy" src="/dinushka/img/CR-Cars-Hero-2018-Subaru-Forester-snow-09-17-Crop.jpg" />
                                            <div class="news-overlay"></div>
                                        </div>
                                        <p class="title"><a href="/all-wheel-drive/best-all-wheel-drive-cars-suvs/">Best All-Wheel-Drive Cars and SUVs </a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="newsItem-container col-xs-12 col-sm-6 col-lg-4">
                            <div class="newsItem-cq-wrapper">
                                <div id="_content_cro_en_cars1_jcrcontent_centerpars_newslist_v2_0_8_1469045956477" class="newsItem" data-url="https://www.consumerreports.org/car-reliability-owner-satisfaction/10-best-cars-to-get-to-200000-miles-and-beyond/">
                                    <div class="news-item">
                                        <div class="figure">
                                            <img class="cr-image cr-image-lazy" src="/dinushka/img/CR-Cars-Hero-2017-Honda-CR-V-coast-07-17-Crop.jpg">
                                            <div class="news-overlay"></div>
                                        </div>
                                        <p class="title"><a href="https://www.consumerreports.org/car-reliability-owner-satisfaction/10-best-cars-to-get-to-200000-miles-and-beyond/">10 Cars Proven to Get to 200,000 Miles and Beyond </a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 hidden-lg hidden-sm hidden-md newsItem-devider-wrap">
                            <div class="newsItem-devider"></div>
                        </div>
                    </div>
                    <input class="newsNumber" value="3" type="hidden">
<%--                    <div class="row text-center show">
                        <a class="btn btn-default btn-lg btn-all" href="https://www.consumerreports.org/cro/2012/05/best-and-worst-new-cars/index.htm">View All
                        </a>
                    </div>--%>
                </div>
            </section>
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
