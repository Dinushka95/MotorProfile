<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testing.aspx.cs" Inherits="MotorProfile.testing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
        <fieldset style="width: 200px;">
            <asp:Label ID="lblEmailAddress" runat="server" Text="Email Address"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </fieldset>
        <div>
        </div>
        <asp:Button ID="btnCreateAccount" runat="server" Text="Signup" OnClientClick="Signup();return false;" />
    </div>
    </form>
</body>
</html>

<script type="text/javascript">
    function Signup() {
        var email = document.getElementById('<%=txtEmail.ClientID %>').value;
        var password = document.getElementById('<%=txtPassword.ClientID %>').value;

        PageMethods.RegisterUser(email, password, onSucess, onError);

        function onSucess(result) {
            alert(result);
        }

        function onError(result) {
            alert('Cannot process your request at the moment, please try later.');
        }
    }
</script>

