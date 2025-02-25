<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="venusMasterPageSetup.Registration" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="Registration.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server" method="get">
        <div class="container">
            <div class="form-container">
                <h2 class="form-title">Registration</h2>
                <div id="registrationForm">

                    <div class="form-floating">
                        <asp:TextBox ID="txtfullname" class="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                        <label for="txtfullname">Full Name</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfullname" ErrorMessage="Plase Fill This Field" ForeColor="Red" Font-Bold="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-floating mb-3">
                        <asp:TextBox ID="txtemail" class="form-control" placeholder="Email Address" runat="server"></asp:TextBox>
                        <label for="txtemail">Email Address</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="txtemail" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Correct Email" ValidateRequestMode="Inherit" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>

                    <div class="form-floating">
                        <asp:TextBox ID="txtphone" class="form-control" placeholder="ENter mob" runat="server"></asp:TextBox>
                        <label for="txtphone">Phone</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Phone" ControlToValidate="txtphone" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Correct Number" Font-Bold="True" ValidationExpression="^([7-9]{1})([0-9]{9})$" ControlToValidate="txtphone" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>

                    <div class="form-floating mb-3">
                        <asp:TextBox ID="txtusername" class="form-control" placeholder="Username" runat="server"></asp:TextBox>
                        <label for="txtusername">Username</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtusername" ErrorMessage="Please Enter Username" ForeColor="Red" Font-Bold="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-floating mb-3 password-container">
                        <asp:TextBox ID="txtpassword" TextMode="Password" class="form-control password-field" placeholder="Password" runat="server"></asp:TextBox>
                        <label for="txtpassword">Password</label>
                        <button type="button" class="password-toggle">
                            <i class="bi bi-eye"></i>
                        </button>
                    </div>

                    <div class="form-floating mb-3 password-container">
                        <asp:TextBox ID="txtrepeatpassword" TextMode="Password" class="form-control password-field" placeholder="Repeat Password" runat="server"></asp:TextBox>
                        <label for="txtrepeatpassword">Repeat Password</label>
                        <button type="button" class="password-toggle">
                            <i class="bi bi-eye"></i>
                        </button>
                    </div>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtpassword" Font-Bold="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtrepeatpassword" ErrorMessage="Please Confirm Your Pasword" Display="Dynamic"></asp:CompareValidator>
                    <div class="invalid-feedback">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </div>

                    <asp:Button ID="BtnSignup" class="btn btn-primary btn-register"  runat="server" Text="Register" />

                    <div class="text-center mt-3">
                        <a href="Login.aspx" class="login-link">Already have an account? Login here</a>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.11.1/font/bootstrap-icons.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            // Add click event listeners to all password toggle buttons
            document.querySelectorAll('.password-toggle').forEach(button => {
                button.addEventListener('click', function () {
                    // Find the closest password container and then the password field within it
                    const container = this.closest('.password-container');
                    const passwordField = container.querySelector('.password-field');
                    const icon = this.querySelector('i');

                    // Toggle password visibility
                    if (passwordField.type === 'password') {
                        passwordField.type = 'text';
                        icon.classList.remove('bi-eye');
                        icon.classList.add('bi-eye-slash');
                    } else {
                        passwordField.type = 'password';
                        icon.classList.remove('bi-eye-slash');
                        icon.classList.add('bi-eye');
                    }
                });
            });
        });

    </script>
</body>
</html>
