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
			<h2>Education Info</h2>
			
				<div class="form_container">
					<div class="input_wrap">
						<label for="StudentNumber"><i class="zmdi zmdi-account material-icons-name"></i></label>
						<asp:TextBox ID="studentnumbertxt" CssClass="input" placeholder="StudentNumber" runat="server"></asp:TextBox>
					</div>
					<div class="input_wrap">
						<label for="Course"><i class="zmdi zmdi-account material-icons-name"></i></label>
						<asp:DropDownList CssClass="input" ID="UniversityIDList" runat="server">
							<asp:ListItem Value="" >--Choose Institution--</asp:ListItem> 
                           <asp:ListItem Value="University of Johannesburg (UJ)" >University of Johannesburg (UJ)</asp:ListItem>    
                           <asp:ListItem Value="University of Pretoria (UP)">University of Pretoria (UP) </asp:ListItem>
                           <asp:ListItem Value="University of Witwatersrand (WITS)">University of Witwatersrand (WITS) </asp:ListItem>
							<asp:ListItem Value="Sefako Makgatho Health Sciences University">Sefako Makgatho Health Sciences University </asp:ListItem>
							<asp:ListItem Value="Tshwane University of Technology">Tshwane University of Technology</asp:ListItem>
							<asp:ListItem Value="Vaal University of Technolog">Vaal University of Technology</asp:ListItem>
                       </asp:DropDownList> 
                    </div>
					<div class="input_wrap">
							<label for="Qualification"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<asp:DropDownList CssClass="input" ID="ddlFaculty" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlFaculty_SelectedIndexChanged">
								<asp:ListItem Value="" >--Choose Faculty--</asp:ListItem> 
								<asp:ListItem Text="Faculty of Art, Design and Architecture" Value="ArtDesignArchitecture"></asp:ListItem>
								<asp:ListItem Text="School of Business and Economics" Value="BusinessEconomics"></asp:ListItem>
								<asp:ListItem Text="Faculty of Education" Value="Education"></asp:ListItem>
								<asp:ListItem Text="Faculty of Engineering & Built Environment" Value="EngineeringBuiltEnvironment"></asp:ListItem>
								<asp:ListItem Text="Faculty of Health Sciences" Value="HealthSciences"></asp:ListItem>
								<asp:ListItem Text="Faculty of Humanities" Value="Humanities"></asp:ListItem>
								<asp:ListItem Text="Faculty of Law" Value="Law"></asp:ListItem>
								<asp:ListItem Text="Faculty of Science" Value="Science"></asp:ListItem>
							</asp:DropDownList>  
                    </div>
					<div class="input_wrap">
							<asp:DropDownList ID="ddlDegree" CssClass="input" runat="server">
								<asp:ListItem Value="" >--Choose Degree--</asp:ListItem> 
							</asp:DropDownList>
                    </div>
					<div class="input_wrap">
							<label for="Yearofstudy"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<asp:DropDownList CssClass="input" ID="YearofstudyList" runat="server">
								<asp:ListItem Value="" >--Choose Year of Study--</asp:ListItem> 
								<asp:ListItem Value="1st Year" >1st Year</asp:ListItem>    
								<asp:ListItem Value="2nd Year">2nd Year</asp:ListItem>
								<asp:ListItem Value="3rd Year">3rd Year"</asp:ListItem>
								<asp:ListItem Value="Honors">Honors</asp:ListItem>
								<asp:ListItem Value="Masters">Masters</asp:ListItem>
								<asp:ListItem Value="PhD">PhD</asp:ListItem>
							</asp:DropDownList>  
                    </div>

					
				
				</div>
			
		</div>
		<div class="form_2 data_info"  style="display: none;">
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
                        <label for="GenderList"><i class="zmdi zmdi-account material-icons-name"></i></label>  
						<asp:DropDownList CssClass="input" placeholder="Gender" ID="GenderList" runat="server">
							<asp:ListItem Value="" >--Choose Gender--</asp:ListItem> 
							<asp:ListItem Value="Male" >Male</asp:ListItem>    
							<asp:ListItem Value="Female">Female</asp:ListItem> 
						</asp:DropDownList> 
                    </div>
					<div class="input_wrap">         
                        <label for="Hometown"><i class="zmdi zmdi-account material-icons-name"></i></label>  
						<asp:DropDownList CssClass="input" placeholder="Hometown" ID="HometownList" runat="server">
							<asp:ListItem Value="" >--Choose Hometown--</asp:ListItem> 
							<asp:ListItem Value="Alice" >Alice</asp:ListItem>    
							<asp:ListItem Value="Bethlehem">Bethlehem</asp:ListItem> 
							<asp:ListItem Value="Bellville">Bellville</asp:ListItem>
							<asp:ListItem Value="Benoni">Benoni</asp:ListItem>
							<asp:ListItem Value="Bloemfontein">Bloemfontein</asp:ListItem>
							<asp:ListItem Value="Boksburg">Boksburg</asp:ListItem>
							<asp:ListItem Value="Brakpan">Brakpan</asp:ListItem>
							<asp:ListItem Value="Butterworth">Butterworth</asp:ListItem>
							<asp:ListItem Value="Cape Town">Cape Town</asp:ListItem>
							<asp:ListItem Value="Carletonville">Carletonville</asp:ListItem>
							<asp:ListItem Value="Constantia">Constantia</asp:ListItem>
							<asp:ListItem Value="Durban">Durban</asp:ListItem>
							<asp:ListItem Value="East London">East London</asp:ListItem>
							<asp:ListItem Value="Emalahleni">Emalahleni</asp:ListItem>
							<asp:ListItem Value="Empangeni">Empangeni</asp:ListItem>
							<asp:ListItem Value="George">George</asp:ListItem>
							<asp:ListItem Value="Germiston">Germiston</asp:ListItem>
							<asp:ListItem Value="Giyani">Giyani</asp:ListItem>
							<asp:ListItem Value="Grahamstown">Grahamstown</asp:ListItem>
							<asp:ListItem Value="Graaff-Reinet">Graaff-Reinet</asp:ListItem>
							<asp:ListItem Value="Hopefield">Hopefield</asp:ListItem>
							<asp:ListItem Value="Jagersfontein">Jagersfontein</asp:ListItem>
							<asp:ListItem Value="Johannesburg">Johannesburg</asp:ListItem>
							<asp:ListItem Value="King William's Town">King William's Town</asp:ListItem>
							<asp:ListItem Value="Kimberley">Kimberley</asp:ListItem>
							<asp:ListItem Value="Klerksdorp">Klerksdorp</asp:ListItem>
							<asp:ListItem Value="Kroonstad">Kroonstad</asp:ListItem>
							<asp:ListItem Value="Krugersdorp">Krugersdorp</asp:ListItem>
							<asp:ListItem Value="Ladysmith">Ladysmith</asp:ListItem>
							<asp:ListItem Value="Lebowakgomo">Lebowakgomo</asp:ListItem>
							<asp:ListItem Value="Mahikeng">Mahikeng</asp:ListItem>
							<asp:ListItem Value="Mmabatho">Mmabatho</asp:ListItem>
							<asp:ListItem Value="Mthatha">Mthatha</asp:ListItem>
							<asp:ListItem Value="Musina">Musina</asp:ListItem>
							<asp:ListItem Value="Nelspruit">Nelspruit</asp:ListItem>
							<asp:ListItem Value="Newcastle">Newcastle</asp:ListItem>
							<asp:ListItem Value="Odendaalsrus">Odendaalsrus</asp:ListItem>
							<asp:ListItem Value="Oudtshoorn">Oudtshoorn</asp:ListItem>
							<asp:ListItem Value="Paarl">Paarl</asp:ListItem>
							<asp:ListItem Value="Phalaborwa">Phalaborwa</asp:ListItem>
							<asp:ListItem Value="Phuthaditjhaba">Phuthaditjhaba</asp:ListItem>
							<asp:ListItem Value="Pietermaritzburg">Pietermaritzburg</asp:ListItem>
							<asp:ListItem Value="Pinetown">Pinetown</asp:ListItem>
							<asp:ListItem Value="Polokwane">Polokwane</asp:ListItem>
							<asp:ListItem Value="Port Elizabeth">Port Elizabeth</asp:ListItem>
							<asp:ListItem Value="Port Nolloth">Port Nolloth</asp:ListItem>
							<asp:ListItem Value="Potchefstroom">Potchefstroom</asp:ListItem>
							<asp:ListItem Value="Pretoria">Pretoria</asp:ListItem>
							<asp:ListItem Value="Queenstown">Queenstown</asp:ListItem>
							<asp:ListItem Value="Randburg">Randburg</asp:ListItem>
							<asp:ListItem Value="Randfontein">Randfontein</asp:ListItem>
							<asp:ListItem Value="Roodepoort">Roodepoort</asp:ListItem>
							<asp:ListItem Value="Rustenburg">Rustenburg</asp:ListItem>
							<asp:ListItem Value="Sasolburg">Sasolburg</asp:ListItem>
							<asp:ListItem Value="Secunda">Secunda</asp:ListItem>
							<asp:ListItem Value="Seshego">Seshego</asp:ListItem>
							<asp:ListItem Value="Sibasa">Sibasa</asp:ListItem>
							<asp:ListItem Value="Simon's Town">Simon's Town</asp:ListItem>
							<asp:ListItem Value="Soweto">Soweto</asp:ListItem>
							<asp:ListItem Value="Springs">Springs</asp:ListItem>
							<asp:ListItem Value="Stellenbosch">Stellenbosch</asp:ListItem>
							<asp:ListItem Value="Swellendam">Swellendam</asp:ListItem>
							<asp:ListItem Value="Thabazimbi">Thabazimbi</asp:ListItem>
							<asp:ListItem Value="Uitenhage">Uitenhage</asp:ListItem>
							<asp:ListItem Value="Ulundi">Ulundi</asp:ListItem>
							<asp:ListItem Value="Umlazi">Umlazi</asp:ListItem>
							<asp:ListItem Value="Vanderbijlpark">Vanderbijlpark</asp:ListItem>
							<asp:ListItem Value="Vereeniging">Vereeniging</asp:ListItem>
							<asp:ListItem Value="Virginia">Virginia</asp:ListItem>
							<asp:ListItem Value="Welkom">Welkom</asp:ListItem>
							<asp:ListItem Value="Worcester">Worcester</asp:ListItem>
							<asp:ListItem Value="Zwelitsha">Zwelitsha</asp:ListItem>
						</asp:DropDownList> 
                    </div>
					<div class="form-group">
                        <label for="Image"><i></i></label>
						<asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
					
				</div>
			
			
		</div>
		<div class="form_3 data_info" style="display: none;">
			<h2>Accommodation Info</h2>
			
				<div class="form_container">
					<div class="input_wrap">
							<label for="Accommodation"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<asp:DropDownList CssClass="input" ID="AccommodationIDList" runat="server">
								<asp:ListItem Value="" >--Choose Accommodation--</asp:ListItem> 
								<asp:ListItem Value="1">South Point 56</asp:ListItem>
								<asp:ListItem Value="2" >Uni-stay</asp:ListItem> 
								<asp:ListItem Value="3" >Fields</asp:ListItem>
								<asp:ListItem Value="4" >Units on Park by Eris</asp:ListItem>
								<asp:ListItem Value="5" >Hatfield Studios by Feenstra Group on Prospect St</asp:ListItem>
								<asp:ListItem Value="6" >Studios @ Burnett</asp:ListItem>
								<asp:ListItem Value="7" >Varsity Studios on Park Street</asp:ListItem>
								<asp:ListItem Value="8" >Festival’s Edge on Festival Street owned by Midcity Properties</asp:ListItem>
								<asp:ListItem Value="9" >Hatfield Square on Burnett Street by ResPublica</asp:ListItem>
								<asp:ListItem Value="10" >Campus Key South on South Street</asp:ListItem>
								<asp:ListItem Value="11" >Campus key Glyn Street</asp:ListItem>
								<asp:ListItem Value="12" >No. 269 Festival Street – OC Rental Unit</asp:ListItem>                                
                                <asp:ListItem Value="13">Gateway</asp:ListItem>
							</asp:DropDownList>  
                    </div>
					<div class="input_wrap">
						<label for="Firstname"><i class="zmdi zmdi-account material-icons-name"></i></label>
						<asp:TextBox ID="Passwordtxt1" CssClass="input" placeholder="Password" runat="server"></asp:TextBox>
					</div>
					<div class="input_wrap">
						<label for="Surname"><i class="zmdi zmdi-account material-icons-name"></i></label>
						<asp:TextBox ID="Passwordtxt" CssClass="input" placeholder="Password" runat="server"></asp:TextBox>
					</div>
					
					
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
			<asp:Button ID="Registerbtn" class="btn_done" runat="server" Text="Register" OnClick="Registerbtn_Click"  />
		</div>
	</div>
	</div>
	<div class="signup-image">
		<figure><img src="Signupimages/our logo.jpg"/></figure>
		<a href="LogIn.aspx" class="signup-image-link" style="margin-left: 115px" >Already have an account?</a>
		
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
