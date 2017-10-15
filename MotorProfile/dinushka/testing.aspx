<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testing.aspx.cs" Inherits="MotorProfile.testing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="fw/flat-icon/flaticon.css" rel="stylesheet" />
    <link href="css/StyleSheet.css" rel="stylesheet" />
    <link href="fw/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="fw/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="fw/jquery/jquery-3.2.1.min.js"></script>
    <script src="fw/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="fw/validation/jquery.validate.min.js"></script>
    <script src="fw/validation/additional-methods.min.js"></script>
    <title></title>






</head>
<body>
    <form id="form1" runat="server">

    <script >
        //$(document).ready(function () {
        //    $('#Button1').click(function () {
        //      //  var emid = $('#TextBox1').val();
        //        //alert(emid);
        //        $.ajax({
        //            url: '/dinushka/tesing.asmx/getvaluebyid',
        //            data: { id: 18 },
        //            method: 'post',
        //            dataType: 'json',
        //            success: function (data) {
        //                //var jqueryxml = $(data);
        //               // alert(data.Name);
        //                $('#Label2').text(data.Name);
        //            },
        //            error: function (err) {
        //                alert(err);
        //            }
        //        });

                // another way...!
                //$.ajax({
                //    type: 'GET',
                //    url: '/dinushka/tesing.asmx',
                //    data: { id: '18' },
                //    dataType: 'json',
                //    success: function (data) {
                //        $("#Label2").text('xcxbvcvc');
                //    },
                //    error: function (err) {
                //                alert(err);
                //            }
                //});




        //     });
        //});
    </script>
    

        <div>

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
            <br />
            <input type="button" id="Button1" value="Get value" >
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>
        
    

        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
        
    

        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" Text="validation" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        </p>
        
    

<%--    <script>

        // just for the demos, avoids form submit
        jQuery.validator.setDefaults({
            debug: true,
            success: "valid"
        });
        $("#form1").validate({
            rules: {
                TextBox2: {
                    required: true,
                    email: true
                }
            }
        });

    </script>--%>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="redirt" />
        
    

    </form>
</body>
</html>
