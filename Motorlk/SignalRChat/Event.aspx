<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Event.aspx.cs" Inherits="SignalRChat.Event" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 352px;
        }
    </style>
    <link href="Event.css" rel="stylesheet" />
    
</head>
<body class="parallax">

        <div class="slideshow-container">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="mySlides fade">
                    <div class="numbertext">1 / 3</div>
                    <img src="<%#Eval("img") %>" style="width:100%"/>
                    <div class="text"><%#Eval("name") %></div>
                </div>
                </ItemTemplate>  
            </asp:Repeater>
           

            <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                    <img src="http://www.hdcarwallpapers.com/walls/2017_acura_nsx_geneva_motor_show-HD.jpg" style="width:100%"/>
                <div class="text">Nissan</div>
            </div>

            <div class="mySlides fade">
                 <div class="numbertext">2 / 3</div>
                    <img src="http://www.seriouswheels.com/pics-2015/klm/2015-Lamborghini-Aventador-LP-750-4-Superveloce-Geneva-Motor-Show-6-2560x1600.jpg" style="width:100%"/>
                <div class="text">Geneva MotorShow 2016</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                    <img src="https://cdn.skoda-storyboard.com/2017/03/170307-SKODA-at-Geneva-Motor-Show-009.jpg" style="width:100%"/>
                <div class="text">Geneva MotorShow 2017</div>
            </div>

            
            </div>
            <br/>

            <div style="text-align:center">
            <span class="dot" onclick="currentSlide(1)"></span> 
            <span class="dot" onclick="currentSlide(2)"></span> 
            <span class="dot" onclick="currentSlide(3)"></span> 
        </div>
        <center>

    <form id="form1" runat="server">
        
    <div class="container" >
        <h1 style="color:white;font-size:30px;text-align:center;width:95%;margin-top:50px;margin-bottom:10px;">Manage your Vehicle Events With Us!</h1>
        <h6 style="color:white;font-size:20px;text-align:center;margin-bottom:30px;"><pre>We feel very honored to have been offered the responsibility to 
            host this great event, Berlin is a wonderful city that is developing at a tremendous rate, 
            and this decision means that we can now prepare to welcome the world's best athletes to a fascinating place.</h6></pre>

        <asp:HiddenField ID="hfid" runat="server" />
        <table id="content" style=" background-image:url("http://docs.cloudfoundry.org/images/bg-plain-x.jpg");">
                            
            <tr>
                <td>
                    
                    <asp:Label ID="Label1" runat="server" Text="Event Name :"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server" Width="304px" placeholder="Enter Event Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    
                    <asp:Label ID="Label2" runat="server" Text="Venue :"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox2" runat="server" Width="305px" placeholder="Enter Venue "></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    
                    <asp:Label ID="Label3" runat="server" Text="Event Date :"></asp:Label>
                </td>
                <td class="auto-style1">

                    <asp:Calendar ID="Calendar1" runat="server" Format="yyyy-mm-dd" style="margin:10px;" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="326px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>
                    
                    <asp:Label ID="Label4" runat="server" Text="Description :"></asp:Label>
                    
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Multiline" Width="306px" placeholder="Enter a Description about the event"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                
                <td class="auto-style1">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                    <asp:Button ID="btnUp" runat="server" Text="Update" OnClick="btnUpdate"></asp:Button>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                    <asp:Button ID="btnClear" runat="server"  Text="Clear" OnClick="btnClear_Click" />
                    
                </td>
            </tr>
            <tr>
                <td></td>
                
                <td class="auto-style1">
                    <asp:Label ID="lblsuccess" runat="server" Text="" ForeColor="Green"></asp:Label>
                </td>
            </tr>
            <tr>
                <td></td>
                
                <td class="auto-style1">
                   <asp:Label ID="lblfail" runat="server" Text="" ForeColor="Red"></asp:Label>
                    
                </td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="Button1" runat="server" Text="Go to Event Gallery" OnClick="Button1_Click"></asp:Button></td>
            </tr>
        </table>
        
        <br/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Border-Style="None" Width="967px"  >
            
            <Columns>
                <asp:BoundField DataField="eName" HeaderText="Event Name" />   
                <asp:BoundField DataField="venue" HeaderText="Venue" />
                <asp:BoundField DataField="description" HeaderText="Description" />
              
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton id="lnkview" runat="server" CommandArgument='<%# Eval("id") %>' OnClick="lnk_onclick">Select</asp:LinkButton>
                    </ItemTemplate> 

                </asp:TemplateField>
            </Columns>
                    
            <HeaderStyle BackColor="#ACB0AE" ForeColor="black" />
            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#DDDDDD" />
                    
        </asp:GridView>
        
    </div>
    </form>
        </center>
    <script>
        var slideIndex = 0;
        showSlides();

        function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 4000); // Change image every 2 seconds
}
</script>

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
