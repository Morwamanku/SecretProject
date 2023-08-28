<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentConnect_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css"/>
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <!-- Main css -->
    <link href="SignupStyle.css" rel="stylesheet" />
    <link href="RegisterStyle.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body>
    <video autoplay loop muted plays-inline class="back-video">
                <source src="Background-video/solar_system (720p).mp4" type="video/mp4" />
            </video>
        <section class="sign-in">
    <form id="form1" runat="server">
        <div class="wrapper">
	
	<div class="flexformwrap">
		<div class="form_wrap">
		<div class="form_1 data_info">
			<h2>Sign up</h2>
			
				<div class="form_container">
					<%--<div class="input_wrap">
						<label for="StudentNumber"><i class="zmdi zmdi-account material-icons-name"></i></label>
						<asp:TextBox ID="TextBox1" CssClass="input" placeholder="StudentNumber" runat="server"></asp:TextBox>
					</div>--%>
					<div class="input_wrap">
						<label for="studentnumber"><i class="zmdi zmdi-account material-icons-name"></i></label>
						<asp:TextBox ID="studentnumbertxt" placeholder="Student Number" AutoComplete="off" runat="server"></asp:TextBox>
					</div>
					<div class="input_wrap">
						<label for="Password"><i class="zmdi zmdi-lock"></i></label>
						<asp:TextBox ID="Passwordtxt" placeholder="Password" TextMode="Password" AutoComplete="off" runat="server"></asp:TextBox>
						<span id="togglePassword" class="toggle-password">Show</span>
                                            <script type="text/javascript">
                                                document.addEventListener('DOMContentLoaded', function () {
                                                    var passwordField = document.getElementById('<%= Passwordtxt.ClientID %>');
                                                    var toggleIcon = document.getElementById('togglePassword');

                                                    toggleIcon.addEventListener('click', function () {
                                                        if (passwordField.type === 'password') {
                                                            passwordField.type = 'text';
                                                            toggleIcon.textContent = 'Hide';
                                                        } else {
                                                            passwordField.type = 'password';
                                                            toggleIcon.textContent = 'Show';
                                                        }
                                                    });
                                                });
                                            </script>
					</div>
				</div>

			</div>	
			<div class="btns_wrap">
				<div class="common_btns form_1_btns">
					<asp:Button ID="BtnLogIn" runat="server" class="form-submit" Text="Log In" OnClick="BtnLogIn_Click" />
				</div>
			</div>
		</div>
		
			
			<div class="signup-image">
				<figure style="margin-bottom:0;"><img src="Signupimages/our logo.jpg"/></figure>
				
				<div class="form-group">
					<input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
					<label for="remember-me" style="display:block;text-align:center;" class="label-agree-term"><span><span></span></span>Remember me</label>
					<br />
					<a href="Register.aspx" class="signup-image-link">Don't have an account?</a>
					<br />
					<a href="ForgotPassword.aspx" class="signup-image-link">Reset Password</a>
				</div>
				<div class="social-login" style="margin-top:40px;">
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


<div class="modal_wrapper">
	<div class="shadow"></div>
	<div class="success_wrap">
		<span class="modal_icon"><ion-icon name="checkmark-sharp"></ion-icon></span>
		<p>You have successfully completed the process.</p>
	</div>
</div>



    </form>
</section>
</body>
</html>






