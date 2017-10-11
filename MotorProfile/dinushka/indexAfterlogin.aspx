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
                        <li><a href="indexAfterlogin.aspx"><span class="flaticon-home-icon-silhouette"></span>&nbsp;Home</a></li>
                        <li><a href="ownerprofile.aspx"><span class="flaticon-man-user"></span>&nbsp;Profile</a></li>
                        <li><a href="ratingsys.aspx"><span class="glyphicon glyphicon-ok-circle"></span>&nbsp;Vehicle Rating</a></li>
                        <li><a href="#"><span class="flaticon-sports-car"></span>&nbsp;Vehicles</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-usd"></span>&nbsp;Buying & Selling</a></li>
                        <li><a href="#"><span class="flaticon-sports-car"></span>&nbsp;Hiring / Renting</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-wrench"></span>&nbsp;Vehicle Parts</a></li>
                        <li><a href="http://localhost:53398/chat.aspx"><span class="flaticon-black-back-closed-envelope-shape"></span>&nbsp;Community Chat</a></li>
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

                    <br class="clear">


                    <div class="row">
                        <div class="newsItem-container col-xs-12 col-sm-6 col-lg-4">
                            <div class="newsItem-cq-wrapper">


                                <div id="_content_cro_en_cars1_jcrcontent_centerpars_newslist_v2_5_1462474367112" class="newsItem" data-url="/car-safety/hot-car-fatalities-year-round-threat-to-children-pets-heat-stroke/">
                                    <div class="news-item">
                                        <div class="figure">
                                            <img class="cr-image cr-image-lazy" src="/dinushka/img/CR-Cars-Hero-Baby-on-Board-08-17-Crop.jpg">
                                            <div class="news-overlay"></div>
                                            
                                        </div>
                                      
                                        <p class="title"><a href="/car-safety/hot-car-fatalities-year-round-threat-to-children-pets-heat-stroke/">CR Tests Show How Hot Car Fatalities Are Year-Round Threat </a></p>
                                    </div>
                                </div>


                            </div>

                        </div>
                        <div class="newsItem-container col-xs-12 col-sm-6 col-lg-4">
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

                        </div>

                        <div class="col-xs-12 hidden-lg hidden-sm hidden-md newsItem-devider-wrap">
                            <div class="newsItem-devider"></div>
                        </div>
                    </div>

                    <input class="newsNumber" value="6" type="hidden">


                    <div class="row text-center show">
                        <a class="btn btn-default btn-lg btn-all" href="https://www.consumerreports.org/cro/news/index.htm#url=/bin/feedinfo.tag=productsAndServices:taxonomy|cars.json&amp;title=Cars&amp;page=1">View All
    </a>
                    </div>

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
                    <div class="row text-center show">
                        <a class="btn btn-default btn-lg btn-all" href="https://www.consumerreports.org/cro/2012/05/best-and-worst-new-cars/index.htm">View All
                        </a>
                    </div>
                </div>
            </section>
        </div>


       
        <!------------------------------------------------------------------------------------------------------------------------>


    </form>
</body>
</html>
