<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="imageview.aspx.cs" Inherits="SignalRChat.imageview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go back to Gallery" style="background-color:#1E90FF;
            color:white;
            border:none;
            transition :2s;
            border-radius:5px;
            margin:20px;" />
        <br />
        <asp:Image ID="Image1" runat="server" style="width:100%;" />
    
    </div>
    </form>
</body>
</html>
