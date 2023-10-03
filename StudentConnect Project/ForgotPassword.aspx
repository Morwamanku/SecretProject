<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="StudentConnect_Project.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css"/>

    <!-- Main css -->
    <link href="SignupStyle.css" rel="stylesheet" />
    <title>Student Connect</title>
</head>
<body>
    <video autoplay loop muted plays-inline class="back-video">
                <source src="Background-video/solar_system (720p).mp4" type="video/mp4" />
            </video>
    <form id="form1" runat="server">
        <section class="sign-in">
    
    <div class="signup-container">
        <div class="signin-content">
            <div class="signin-image">
                <figure><img src="Signupimages/our logo.jpg" alt="sing up image"/></figure>
            </div>

            <div class="signin-form">
                <h2 class="form-title">Forgot Password</h2>
                
                    <div class="form-group">
                        <div class="input_wrap">
			                <label for="StudentNumber"><i class="zmdi zmdi-account material-icons-name"></i></label>
			                <asp:TextBox ID="studentnumbertxt" CssClass="input" placeholder="StudentNumber" AutoComplete="off" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="re-newpass"><i class="zmdi zmdi-lock-outline"></i></label>
                        <input type="password" name="re_newpass" id="re_newpass" placeholder="Re-enter New Password" />
                    </div>
                    <div class="form-group">
                        
                        <label for="Password"><i class="zmdi zmdi-account material-icons-name"></i></label>
                        <asp:TextBox ID="Passwordtxt1" CssClass="input" placeholder="Enter New Password" Autocomplete="off" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                    
                    <div class="form-group form-button">
                        <asp:Button ID="Resetpasswordbtn" runat="server" Text="Submit" OnClick="Resetpasswordbtn_Click" />
                        
                    </div>
                    <div class="form-group">
                        <a href="LogIn.aspx" class="signup-image-link"  >Already have an account?</a>
                    </div>
              
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
    </form>
    
</body>
</html>
