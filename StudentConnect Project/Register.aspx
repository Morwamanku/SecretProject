﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StudentConnect_Project.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	
    <link href="RegisterStyle.css" rel="stylesheet" />
</head>
<body>
	<video autoplay loop muted plays-inline class="back-video">
                <source src="Background-video/solar_system (720p).mp4" type="video/mp4" />
            </video>
    <section class="sign-in">
    <form id="form1" runat="server">
        <div class="wrapper">
	<div class="header">
		<ul>
			<li class="active form_1_progessbar">
				<div>
					<p>1</p>
				</div>
			</li>
			<li class="form_2_progessbar">
				<div>
					<p>2</p>
				</div>
			</li>
			<li class="form_3_progessbar">
				<div>
					<p>3</p>
				</div>
			</li>
		</ul>
	</div>
	<div class="flexformwrap">
		<div class="form_wrap">
		<div class="form_1 data_info">
			<h2>Signup Info</h2>
			
				<div class="form_container">
					<div class="input_wrap">
						<label for="email">Email Address</label>
						<input type="text" name="Email Address" class="input" id="email">
					</div>
					<div class="input_wrap">
						<label for="password">Password</label>
						<input type="password" name="password" class="input" id="password">
					</div>
					<div class="input_wrap">
						<label for="confirm_password">Confirm Password</label>
						<input type="password" name="confirm password" class="input" id="confirm_password">
					</div>
				</div>
			
		</div>
		<div class="form_2 data_info" style="display: none;">
			<h2>Personal Info</h2>
			
				<div class="form_container">
					<div class="input_wrap">
						<label for="user_name">User Name</label>
						<input type="text" name="User Name" class="input" id="user_name">
					</div>
					<div class="input_wrap">
						<label for="first_name">First Name</label>
						<input type="text" name="First Name" class="input" id="first_name">
					</div>
					<div class="input_wrap">
						<label for="last_name">Last Name</label>
						<input type="text" name="Last Name" class="input" id="last_name">
					</div>
				</div>
			
		</div>
		<div class="form_3 data_info" style="display: none;">
			<h2>Professional Info</h2>
			
				<div class="form_container">
					<div class="input_wrap">
						<label for="company">Current Company</label>
						<input type="text" name="Current Company" class="input" id="company">
					</div>
					<div class="input_wrap">
						<label for="experience">Total Experience</label>
						<input type="text" name="Total Experience" class="input" id="experience">
					</div>
					<div class="input_wrap">
						<label for="designation">Designation</label>
						<input type="text" name="Designation" class="input" id="designation">
					</div>
				</div>
			
		</div>
	</div>
	<div class="signup-image">
		<figure><img src="Signupimages/our logo.jpg"/></figure>
		<a href="LogIn.aspx" class="signup-image-link" style="margin-left: 115px" >Already have an account?</a>
	</div>
	</div>
	


	<div class="btns_wrap">
		<div class="common_btns form_1_btns">
			<button type="button" class="btn_next">Next <span class="icon"><ion-icon name="arrow-forward-sharp"></ion-icon></span></button>
		</div>
		<div class="common_btns form_2_btns" style="display: none;">
			<button type="button" class="btn_back"><span class="icon"><ion-icon name="arrow-back-sharp"></ion-icon></span>Back</button>
			<button type="button" class="btn_next">Next <span class="icon"><ion-icon name="arrow-forward-sharp"></ion-icon></span></button>
		</div>
		<div class="common_btns form_3_btns" style="display: none;">
			<button type="button" class="btn_back"><span class="icon"><ion-icon name="arrow-back-sharp"></ion-icon></span>Back</button>
			<button type="button" class="btn_done">Done</button>
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
</body>


<script>
    var form_1 = document.querySelector(".form_1");
    var form_2 = document.querySelector(".form_2");
    var form_3 = document.querySelector(".form_3");


    var form_1_btns = document.querySelector(".form_1_btns");
    var form_2_btns = document.querySelector(".form_2_btns");
    var form_3_btns = document.querySelector(".form_3_btns");


    var form_1_next_btn = document.querySelector(".form_1_btns .btn_next");
    var form_2_back_btn = document.querySelector(".form_2_btns .btn_back");
    var form_2_next_btn = document.querySelector(".form_2_btns .btn_next");
    var form_3_back_btn = document.querySelector(".form_3_btns .btn_back");

    var form_2_progessbar = document.querySelector(".form_2_progessbar");
    var form_3_progessbar = document.querySelector(".form_3_progessbar");

    var btn_done = document.querySelector(".btn_done");
    var modal_wrapper = document.querySelector(".modal_wrapper");
    var shadow = document.querySelector(".shadow");

    form_1_next_btn.addEventListener("click", function () {
        form_1.style.display = "none";
        form_2.style.display = "block";

        form_1_btns.style.display = "none";
        form_2_btns.style.display = "flex";

        form_2_progessbar.classList.add("active");
    });

    form_2_back_btn.addEventListener("click", function () {
        form_1.style.display = "block";
        form_2.style.display = "none";

        form_1_btns.style.display = "flex";
        form_2_btns.style.display = "none";

        form_2_progessbar.classList.remove("active");
    });

    form_2_next_btn.addEventListener("click", function () {
        form_2.style.display = "none";
        form_3.style.display = "block";

        form_3_btns.style.display = "flex";
        form_2_btns.style.display = "none";

        form_3_progessbar.classList.add("active");
    });

    form_3_back_btn.addEventListener("click", function () {
        form_2.style.display = "block";
        form_3.style.display = "none";

        form_3_btns.style.display = "none";
        form_2_btns.style.display = "flex";

        form_3_progessbar.classList.remove("active");
    });

    btn_done.addEventListener("click", function () {
        modal_wrapper.classList.add("active");
    })

    shadow.addEventListener("click", function () {
        modal_wrapper.classList.remove("active");
    })
</script>
</html>
