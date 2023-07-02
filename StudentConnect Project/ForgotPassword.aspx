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
    <section class="sign-in">
        
        <div class="signup-container">
            <div class="signin-content">
                <div class="signin-image">
                    <figure><img src="Signupimages/our logo.jpg" alt="sing up image"/></figure>
                </div>

                <div class="signin-form">
                    <h2 class="form-title">Forgot Password</h2>
                    <form method="post" class="register-form" id="login-form">
                        <div class="form-group">
                            <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="student_number1" id="student_number1" placeholder="Student Number " />
                        </div>
                        <div class="form-group">
                            <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                            <input type="password" name="new_pass" id="new_pass" placeholder="Enter New Password" />
                        </div>
                        <div class="form-group">
                            <label for="re-newpass"><i class="zmdi zmdi-lock-outline"></i></label>
                            <input type="password" name="re_newpass" id="re_newpass" placeholder="Re-enter New Password" />
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="Resetpass" id="Resetpass" class="form-submit" value="Reset Password" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
