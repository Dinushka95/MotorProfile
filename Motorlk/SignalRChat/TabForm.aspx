<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TabForm.aspx.cs" Inherits="SignalRChat.TabForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.8.2.js"></script>
    <script src="jquery.js"></script>
    <link href="Css/JQueryUI/themes/ui-lightness/jquery-ui.css" rel="stylesheet" />
    <script src="jquery-ui.js"></script>
    <link href="tabform.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $('#tabs').tabs({
               
            });
        });
        
    </script>
</head>
<body class="parallax">
    <h1 style="color:white;font-size:36px;margin-top:20px;text-align:center;">Welcome to the Chatroom</h1>
    <h1 style="color:white;font-size:24px;margin-top:10px;text-align:center;">Most people are nice and just want to have a chat</h1>
    <form id="form1" runat="server">
        
        <!--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT * FROM [vehicle]"></asp:SqlDataSource>-->
        
    <div id="tabs" style="margin-right: 5px;"> 
        <ul>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <li>
                        <a href="#C_<%#Eval("ID") %>">
                            <%#Eval("brand")%>
                        </a>
                        
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
        <asp:Repeater ID="Repeater2" runat="server" >
            <ItemTemplate>
                <div id="C_<%#Eval("ID") %>">
                      <iframe src="chat.aspx" ></iframe>
                    
                                   
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    </form>

    <!--footer-->
    <div class="content">
			<div class="footer-grids">
				<div class="footer one">
					<h3>More About Website</h3>
					<p> This is a website about vehicles and spare parts sellings buying.
                        
					</p>
					<p class="adam">- Team MotorProfile.lk</p>
					<div class="clear"></div>
				</div>
				<div class="footer two">
					<h3>Keep Connected</h3>
					<ul>
						<li><a class="fb" href="#"><i></i>Like us on Facebook</a></li>
						<li><a class="fb1" href="#"><i></i>Follow us on Twitter</a></li>
						<li><a class="fb2" href="#"><i></i>Add us on Google Plus</a></li>
						
					</ul>
				</div>
				<div class="footer three">
					<h3>Contact Information</h3>
					<ul>
						<li>MotorProfile.lk <span>Colombo,</span>Srilanka.  </li>
						<li>1234567890  </li>
						<li><a href="abcdef@example.com">our email address</a> </li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
			<div class="copy-right-grids">
				<div class="copy-left">
						<p class="footer-gd">© 2017 Motorprofile.lk. All Rights Reserved | Design by Team MotorProfile.lk</p>
				</div>
				<div class="copy-right">
					<ul>
						<li><a href="#">Company Information</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Terms & Conditions</a></li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
		</div>
</body>
</html>
