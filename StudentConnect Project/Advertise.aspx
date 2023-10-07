<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advertise.aspx.cs" Inherits="StudentConnect_Project.Advertise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="RegisterStyle.css" rel="stylesheet" />
</head>
<body style="background-image:url('Advertise background.jpg')">
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
							<asp:ListItem Value="Phones">Phones</asp:ListItem>
							<asp:ListItem Value="Laptops">Laptops</asp:ListItem>
							<asp:ListItem Value="Cameras">Cameras</asp:ListItem>
							<asp:ListItem Value="TVs">TVs</asp:ListItem>
							<asp:ListItem Value="Audio equipment">Audio equipment</asp:ListItem>
							<asp:ListItem Value="Accessories">Accessories</asp:ListItem>
							<asp:ListItem Value="Jewelry">Jewelry</asp:ListItem>
							<asp:ListItem Value="Handbags">Handbags</asp:ListItem>
							<asp:ListItem Value="Furniture">Furniture</asp:ListItem>
							<asp:ListItem Value="Appliances">Appliances</asp:ListItem>
							<asp:ListItem Value="Home decor">Home decor</asp:ListItem>
							<asp:ListItem Value="Gardening tools">Gardening tools</asp:ListItem>
							<asp:ListItem Value="Kitchenware">Kitchenware</asp:ListItem>
							<asp:ListItem Value="Cars">Cars</asp:ListItem>
							<asp:ListItem Value="Motorcycles">Motorcycles</asp:ListItem>
							<asp:ListItem Value="Auto parts">Auto parts</asp:ListItem>
							<asp:ListItem Value="Accessories">Accessories</asp:ListItem>
							<asp:ListItem Value="Tires">Tires</asp:ListItem>
							<asp:ListItem Value="Toys for kids">Toys for kids</asp:ListItem>
							<asp:ListItem Value="Board games">Board games</asp:ListItem>
							<asp:ListItem Value="Video games">Video games</asp:ListItem>
							<asp:ListItem Value="Collectibles">Collectibles</asp:ListItem>
							<asp:ListItem Value="Outdoor play equipment">Outdoor play equipment</asp:ListItem>
						
							<asp:ListItem Value="CDs and vinyl records">CDs and vinyl records</asp:ListItem>
							<asp:ListItem Value="DVDs and Blu-rays">DVDs and Blu-rays</asp:ListItem>
							<asp:ListItem Value="E-books">E-books</asp:ListItem>
							<asp:ListItem Value="Sheet music">Sheet music</asp:ListItem>
							<asp:ListItem Value="Sports equipment">Sports equipment</asp:ListItem>
							<asp:ListItem Value="Gym gear">Gym gear</asp:ListItem>
							<asp:ListItem Value="Athletic apparel">Athletic apparel</asp:ListItem>
							<asp:ListItem Value="Bicycles">Bicycles</asp:ListItem>
							<asp:ListItem Value="Fitness trackers">Fitness trackers</asp:ListItem>
							<asp:ListItem Value="Skincare products">Skincare products</asp:ListItem>
							<asp:ListItem Value="Makeup">Makeup</asp:ListItem>
							<asp:ListItem Value="Haircare products">Haircare products</asp:ListItem>
							<asp:ListItem Value="Vitamins and supplements">Vitamins and supplements</asp:ListItem>
							<asp:ListItem Value="Personal care items">Personal care items</asp:ListItem>
							<asp:ListItem Value="Groceries">Groceries</asp:ListItem>
							<asp:ListItem Value="Gourmet foods">Gourmet foods</asp:ListItem>
							<asp:ListItem Value="Beverages">Beverages</asp:ListItem>
							<asp:ListItem Value="Snacks">Snacks</asp:ListItem>
							<asp:ListItem Value="Cooking ingredients">Cooking ingredients</asp:ListItem>
							<asp:ListItem Value="Cleaning services">Cleaning services</asp:ListItem>
							<asp:ListItem Value="Repair services">Repair services</asp:ListItem>
							<asp:ListItem Value="Professional consulting">Professional consulting</asp:ListItem>
							<asp:ListItem Value="Transportation services">Transportation services</asp:ListItem>
							<asp:ListItem Value="Phone cases">Phone cases</asp:ListItem>
							<asp:ListItem Value="Chargers and cables">Chargers and cables</asp:ListItem>
							<asp:ListItem Value="Laptop bags">Laptop bags</asp:ListItem>
							<asp:ListItem Value="Screen protectors">Screen protectors</asp:ListItem>
							<asp:ListItem Value="Headphones">Headphones</asp:ListItem>
							<asp:ListItem Value="Rings">Rings</asp:ListItem>
							<asp:ListItem Value="Necklaces">Necklaces</asp:ListItem>
							<asp:ListItem Value="Watches">Watches</asp:ListItem>
							<asp:ListItem Value="Earrings">Earrings</asp:ListItem>
							<asp:ListItem Value="Bracelets">Bracelets</asp:ListItem>
							
							
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
<script type="text/javascript">
    // Attach an event listener to the TextBox for input
    document.getElementById('<%= ProductDescription.ClientID %>').addEventListener('input', function () {
        var textBox = this;
        var maxWords = 100; // Change this to your desired word limit

        // Split the text by spaces to count the words
        var words = textBox.value.trim().split(/\s+/);
        var wordCount = words.length;

        if (wordCount > maxWords) {
            // If the word count exceeds the limit, trim the text
            textBox.value = words.slice(0, maxWords).join(' ');
        }
    });
</script>

</html>
