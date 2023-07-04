<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StudentConnect_Project.Register" %>

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
			<h2>Personal Info</h2>
			
				<div class="form_container">
					<div class="input_wrap">
						<label for="Firstname"><i class="zmdi zmdi-account material-icons-name"></i></label>
						<asp:TextBox ID="Firstnametxt" CssClass="input" placeholder="Firstname" runat="server"></asp:TextBox>
					</div>
					<div class="input_wrap">
						<label for="Surname"><i class="zmdi zmdi-account material-icons-name"></i></label>
						<asp:TextBox ID="Surnametxt" CssClass="input" placeholder="Surname" runat="server"></asp:TextBox>
					</div>

					<div class="input_wrap">         
                        <label for="Gender"><i class="zmdi zmdi-account material-icons-name"></i></label>  
						<asp:DropDownList CssClass="input" ID="GenderList" runat="server">
                           <asp:ListItem Value="Male" >Male</asp:ListItem>    
                           <asp:ListItem Value="Female">Female</asp:ListItem> 
						</asp:DropDownList> 
                    </div>
				</div>
			
		</div>
		<div class="form_2 data_info" style="display: none;">
			<h2>Education Info</h2>
			
				<div class="form_container">
					
					<div class="input_wrap">
						<label for="Course"><i class="zmdi zmdi-account material-icons-name"></i></label>
						<asp:DropDownList CssClass="input" ID="UniversityList" runat="server">
                           <asp:ListItem Value="Bcom Information Systems" >University of Johannesburg (UJ)</asp:ListItem>    
                           <asp:ListItem Value="Bcom Accounting">University of Pretoria (UP) </asp:ListItem>
                           <asp:ListItem Value="Bcom Law">University of Witwatersrand (WITS) </asp:ListItem>
                       </asp:DropDownList> 
                    </div>
					<div class="input_wrap">
							<label for="Qualification"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<asp:DropDownList CssClass="input" ID="DropDownList1" runat="server">
								<asp:ListItem Value="Bcom Information Systems" >Bcom Information Systems</asp:ListItem>    
								<asp:ListItem Value="Bcom Accounting">Bcom Accounting </asp:ListItem>
								<asp:ListItem Value="Bcom Law">Bcom Law</asp:ListItem>
							</asp:DropDownList>  
                    </div>

					
				
				</div>
			
		</div>
		<div class="form_3 data_info" style="display: none;">
			<h2>Accommodation Info</h2>
			
				<div class="form_container">
					<div class="input_wrap">
							<label for="Accommodation"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<asp:DropDownList CssClass="input" ID="DropDownList2" runat="server">
								<asp:ListItem Value="Uni-stay" >Uni-stay</asp:ListItem>    
                                <asp:ListItem Value="South Point">South Point</asp:ListItem>
                                <asp:ListItem Value="Student Dicks">Student Dicks</asp:ListItem>
							</asp:DropDownList>  
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
</section>
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
