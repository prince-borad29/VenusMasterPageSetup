<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="venusMasterPageSetup.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="login.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="login-box">
                <img src="https://images.unsplash.com/photo-1592923750193-0caa23a10e1f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGx1eHVyeSUyMGZ1cm5pdHVyZXxlbnwwfDB8MHx8fDA%3D" alt="Login Image" class="login-img img-fluid">
                <div class="login-form">
                    <h2 class="text-center">Login</h2>
                    <div>
                        <div class="form-group">
                            
                            <asp:TextBox ID="txtUsername" class="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            
                            <asp:TextBox ID="txtPassword" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnLogin" class="btn btn-primary btn-block" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </div>
                    <div class="text-center mt-3"><a href="#">Forgot Password?</a> </div>
                    <div class="text-center mt-2"><a href="Registration.aspx">Create an Account!</a> </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    </form>
</body>
</html>

