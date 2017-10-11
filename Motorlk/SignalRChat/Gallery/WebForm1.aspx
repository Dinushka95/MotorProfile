<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SignalRChat.WebForm1" %>

<!DOCTYPE html>
<html>
    <head>
        <link href="Gallery.css" rel="stylesheet" />
<title>Photo Gallery</title></head>
<body class="parallax">

    <form id="form1" runat="server">
        
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
        <asp:Panel ID="Panel1" runat="server" BorderColor="#0066FF">
        </asp:Panel>
        
    </form>

</body>
</html>
