<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentConnect_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css"/>
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <!-- Main css -->
    <link href="SignupStyle.css" rel="stylesheet" />
    
    <title>Login</title>
</head>
<body>
    <video autoplay loop muted plays-inline class="back-video">
                <source src="Background-video/solar_system (720p).mp4" type="video/mp4" />
            </video>
    <section class="sign-in">
        <div >
            <div class="logo">
                <h1 class="logo"></h1>
            </div>
        </div>
        <div class="signup-container">
            <div class="signin-content">
                <div class="signin-image">
                    <figure><img src="Signupimages/our logo.jpg"/></figure>
                </div>

                <div class="signin-form">
                    <h2 class="form-title">Sign in</h2>
                    <form method="post" class="register-form" id="loginform" align="centre" runat="server">
                        <div class="form-group">
                                    <label for="studentnumber"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="studentnumbertxt" placeholder="Student Number" runat="server"></asp:TextBox>
                                </div>
                        <div class="form-group">
                                    <label for="Password"><i class="zmdi zmdi-lock"></i></label>
                                    <asp:TextBox ID="Passwordtxt" placeholder="Password" runat="server"></asp:TextBox>

                                </div>
                        <div class="form-group">
                            <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                            <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            <br />
                            <a href="Register.aspx" class="signup-image-link">Don't have an account?</a>
                            <br />
                            <a href="ForgotPassword.aspx" class="signup-image-link">Reset Password</a>
                        </div>
                        <div class="form-group form-button">
                            <asp:Button ID="BtnLogIn" runat="server" class="form-submit" Text="Log In" OnClick="BtnLogIn_Click" />
                            
                        </div>
                    </form>
                    <div class="social-login">
                        <span class="social-label">See more on our</span>
                        <ul class="socials">
                            <li><a href="#"><i class="fa-brands fa-instagram"></i></a></li>
                            <li><a href="#"><i class="fa-brands fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa-brands fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>

