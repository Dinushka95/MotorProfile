<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buying.aspx.cs" Inherits="MotorProfile.duminth.Buying" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="Buying.css" rel="stylesheet" />
    <title></title>
</head>
<body>
   <center>
                <form  runat="server">
                   <table>
                       <tr>
                            <h1 class="head" style=" color:aliceblue;">
                                 Buying
                            </h1>
                       </tr>
                       <tr>
                            <td>
                                <asp:TextBox ID="TextBox11" runat="server" Style ="width:100%;"></asp:TextBox>
                            </td>        
                            <td>    
                                <asp:Button ID="button5" runat="server" Text="Search" style="background-color:cornflowerblue;  border-color:#000;"></asp:Button>
                            </td>  
                        </tr>
                   </table>
                   <table cellspacing="0" class="table1">
                       
                       
                       <div class="brand">
                        
                        
                        <tr style="box-shadow:0px 0px 5px 0px; border-radius: 5px;">
                            <div class="content" style=" border-radius:5px;box-shadow:0px 0px 5px 0px;">
                            <div class="brand">
                                
                                <img src="2016-Koenigsegg-Agera-RS-2.jpg" height="175" width="250" />

                            </div>
                            <div class="brand1" >
                                
                                <asp:Label ID="Label1" runat="server" Text="Brand:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label12" runat="server" Text="Konigsegg"></asp:Label>
                                </br>
                                <asp:Label ID="Label2" runat="server" Text="Model:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label13" runat="server" Text="Agera RS"></asp:Label>
                                </br>
                                <asp:Label ID="Label3" runat="server" Text="Year:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label14" runat="server" Text="2014"></asp:Label>
                                <br />
                                <asp:Label ID="Label25" runat="server" Text="Mileage:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label26" runat="server" Text="21000km"></asp:Label>
                                </br>
                                <asp:Label ID="Label27" runat="server" Text="Status:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label28" runat="server" Text="Excellent"></asp:Label>
                                </br>
                                
                                <asp:Button   ID="Button1"  class="button1" runat="server" Text="227,000" Style="margin:10px;margin-top:50px; margin-bottom:10px;" OnClick="btnr"></asp:Button>
                            </div>
                                </div>
                        </tr>

                         <tr style="box-shadow:0px 0px 5px 0px; border-radius: 5px;">
                            <div class="content" style=" border-radius:5px;box-shadow:0px 0px 5px 0px;">
                            <div class="brand">
                                
                                <img src="Koenigsegg-Agera-R-HD-Wallpaper.jpg" height="175" width="250" />

                            </div>
                            <div class="brand1" >
                                
                                <asp:Label ID="Label29" runat="server" Text="Brand:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label30" runat="server" Text="Konigsegg"></asp:Label>
                                </br>
                                <asp:Label ID="Label31" runat="server" Text="Model:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label32" runat="server" Text="Agera R"></asp:Label>
                                </br>
                                <asp:Label ID="Label33" runat="server" Text="Year:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label34" runat="server" Text="2011"></asp:Label>
                                <br />
                                <asp:Label ID="Label35" runat="server" Text="Mileage:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label36" runat="server" Text="11000km"></asp:Label>
                                </br>
                                <asp:Label ID="Label37" runat="server" Text="Status:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label38" runat="server" Text="Good"></asp:Label>
                                </br>
                                
                                <asp:Button ID="Button3"  class="button1" runat="server" Text="450,000" Style="margin:10px;margin-top:50px; margin-bottom:10px;"></asp:Button>
                            </div>
                                </div>
                        </tr>

                        <tr style="box-shadow:0px 0px 5px 0px; border-radius: 5px;">
                            <div class="content" style=" border-radius:5px;box-shadow:0px 0px 5px 0px;">
                            <div class="brand">
                                
                                <img src="698755.jpg" height="175" width="250" />

                            </div>
                            <div class="brand1" >
                                
                                <asp:Label ID="Label39" runat="server" Text="Brand:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label40" runat="server" Text="Konigsegg"></asp:Label>
                                </br>
                                <asp:Label ID="Label41" runat="server" Text="Model:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label42" runat="server" Text="One-To-One"></asp:Label>
                                </br>
                                <asp:Label ID="Label43" runat="server" Text="Year:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label44" runat="server" Text="2015"></asp:Label>
                                <br />
                                <asp:Label ID="Label45" runat="server" Text="Mileage:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label46" runat="server" Text="5000km"></asp:Label>
                                </br>
                                <asp:Label ID="Label47" runat="server" Text="Status:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label48" runat="server" Text="Excellent"></asp:Label>
                                </br>
                                
                                <asp:Button ID="Button6"  class="button1" runat="server" Text="720,000" Style="margin:10px;margin-top:50px; margin-bottom:10px;"></asp:Button>
                            </div>
                                </div>
                        </tr>

                         <tr style="box-shadow:0px 0px 5px 0px; border-radius: 5px;">
                            <div class="content" style=" border-radius:5px;box-shadow:0px 0px 5px 0px;">
                            <div class="brand">
                                
                                <img src="DSC06170.jpg" height="175" width="250" />

                            </div>
                            <div class="brand1" >
                                
                                <asp:Label ID="Label49" runat="server" Text="Brand:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label50" runat="server" Text="Konigsegg"></asp:Label>
                                </br>
                                <asp:Label ID="Label51" runat="server" Text="Model:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label52" runat="server" Text="Agera XS"></asp:Label>
                                </br>
                                <asp:Label ID="Label53" runat="server" Text="Year:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label54" runat="server" Text="2013"></asp:Label>
                                <br />
                                <asp:Label ID="Label55" runat="server" Text="Mileage:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label56" runat="server" Text="71000km"></asp:Label>
                                </br>
                                <asp:Label ID="Label57" runat="server" Text="Status:" Style="color:forestgreen;"></asp:Label>
                                <asp:Label ID="Label58" runat="server" Text="Poor"></asp:Label>
                                </br>
                                
                                <asp:Button ID="Button7"  class="button1" runat="server" Text="560,000" Style="margin:10px;margin-top:50px; margin-bottom:10px;"></asp:Button>
                            </div>
                                </div>
                        </tr>


                                               
                       </div>
                    </table>
                    
                    
                </form>
            </center>
</html>
