<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advertise.aspx.cs" Inherits="StudentConnect_Project.Advertise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="RegisterStyle.css" rel="stylesheet" />
</head>
<body style="background-image:url(https://tse1.mm.bing.net/th?id=OIP.mVnNSk8zSypnEqmYzwlqLAHaE8&amp;pid=Api&amp;P=0&amp;h=180)">
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
			<h2>Product</h2>
			
				<div class="form_container">
					<div class="input_wrap">
						<label for="Course"><i class="zmdi zmdi-account material-icons-name"></i></label>
						<asp:DropDownList CssClass="input" ID="CategoryList" runat="server">
							<asp:ListItem Value="" >--Choose Category--</asp:ListItem> 
                           <asp:ListItem Value="Book" >Book</asp:ListItem>    
                           <asp:ListItem Value="Shoes">Shoes </asp:ListItem>
                           <asp:ListItem Value="Clothes">Clothes</asp:ListItem>
							<asp:ListItem Value="Technology">Technology</asp:ListItem>
							<asp:ListItem Value="Service">Service</asp:ListItem>
							
                       </asp:DropDownList> 
                    </div>
					<div class="input_wrap">
						<label for="Product"><i class="zmdi zmdi-account material-icons-name"></i></label>
						<asp:TextBox ID="ProductName" CssClass="input" placeholder="Product Name" AutoComplete="off" runat="server"></asp:TextBox>
					</div>

					<div class="input_wrap">
							<label for="Product"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<asp:TextBox ID="Pricetxt" CssClass="input" placeholder="Price" AutoComplete="off" runat="server"></asp:TextBox>
                    </div>

					
				
				</div>
			
		</div>
		<div class="form_2 data_info"  style="display: none;">
			<h2>Product</h2>
			
				<div class="form_container">
					<div class="input_wrap">
						<label for="ProductDescription"><i class="zmdi zmdi-account material-icons-name"></i></label>
						<asp:TextBox ID="ProductDescription" CssClass="input" placeholder="Description"  runat="server" TextMode="MultiLine"></asp:TextBox>
					</div>
				</div>	
		</div>
		<div class="form_3 data_info" style="display: none;">
			<h2>Product</h2>
	
				<div class="form_container">
					<div class="input_wrap">
						<label for="Image"><i></i></label>
						<asp:FileUpload ID="FileUpload1" runat="server" />
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
			<asp:Button ID="Submitbtn" class="btn_done" runat="server" Text="Submit" OnClick="Submitbtn_Click" />
			<%--<asp:Button ID="Registerbtn" class="btn_done" runat="server" Text="Register" OnClick="Registerbtn_Click"  />--%>
		</div>
	</div>
	</div>
	<div class="signup-image">
		<figure><img src="Signupimages/our logo.jpg"/></figure>
		<a href="Dashboard.aspx" class="signup-image-link" style="margin-left: 115px" >Go back to Dashboard</a>
		
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
