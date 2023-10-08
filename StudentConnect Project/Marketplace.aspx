<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Marketplace.aspx.cs" Inherits="StudentConnect_Project.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="MarketplaceStyle.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .sent{
            display:none;
        }
    </style>
    <div class="container1 transition-fade" id="swup">
        <div class="container2" onclick="removenavigation()">
            <div class="container" >
                <div class="row">
                    <asp:Repeater ID="MarketPlaceRepeater" runat="server">
                        <ItemTemplate>
                            <div class="card">
                              <div class="bg">
                                  <div class="card-image">
                                        <asp:ImageButton ID="Image1" class="img-fluid" runat="server" ImageUrl='<%# Eval("Productimage") %>' Width="100%" Height="340px"  object-fit="cover" OnClick="Image1_Click" />
                                        
                                    </div>
                                  <div class="Card-Studentnumber">
                                    <asp:Label ID="StudentLabel" runat="server" class="StudentNumber" Text='<%# Eval("Student") %>'></asp:Label>
                                  </div>
                              </div>
                              <div class="blob"></div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>

        </div>
            <div class="Left-Navigation2">


 <ul>

        <li>
            <a href="/Advertise/Advertise.aspx">
                <span class="icon"><ion-icon name="rocket-outline"></ion-icon></span>
                <span class="title">Advertise</span> 
            
            </a>
        </li>
    
        <li>
            <a href="#">
                <span class="icon"><ion-icon name="earth-outline"></ion-icon></span>
                <span class="title">Blog</span>
            
            </a>
        </li>
        <li>
            <a href="#">
                <span class="icon"><ion-icon name="school-outline"></ion-icon></span>
                <span class="title">Tutoring</span>
            
            </a>
        </li>

        <li>
            <a href="#">
                <span class="icon"><ion-icon name="ribbon-outline"></ion-icon></span>
                <span class="title">Bursury</span>                
            </a>
        </li>
    </ul>
</div>
    </div>
    
    
        
    <div class="popup" id="popup">

        <div class="filter-content">
            <div class="icons">
          <div class="icon">
            <div class="btn-flex">
                <i class="fa-solid fa-sliders" style="    position: absolute;color: white;font-size: 25px;padding: 12px;cursor:pointer;"></i>
               <asp:Button class="symbol" style="min-width: 55px;"  ID="Default" runat="server" Text=""  />
            </div>
            <span class="optionname">Default</span>  
          </div>
          <div class="icon">
              <div class="btn-flex">    
                <i class="fa-solid fa-graduation-cap" style="    position: absolute;color: white;font-size: 25px;padding: 12px;cursor:pointer;"></i>
                <button  class="symbol" style="min-width: 55px;" type="button" onclick="universityopenPopup()"></button>
            </div>
            
            <span class="optionname">Category</span>
          </div>
         
          
          
          </div>
    </div>
    <button type="button" onclick="closePopup()">OK</button>
        </div>
    <div class="popup" id="universitypopup">

    <h1>University</h1>
    <label for="Course"><i class="zmdi zmdi-account material-icons-name"></i></label>
    <asp:DropDownList class="textboxfilter" ID="UniversityNameList" runat="server">
                    	<asp:ListItem Value="" >--Choose Category--</asp:ListItem>                             
                        <asp:ListItem Value="Shoes">Shoes </asp:ListItem>
                        <asp:ListItem Value="Clothes">Clothes</asp:ListItem>
	                        <asp:ListItem Value="Book" >Book</asp:ListItem> 
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
                            <div class="button">
                                <asp:Button ID="University" class="filter-button" runat="server" Text="Select"  />
                            </div>
    
    <button type="button" style="margin-top:10px;" onclick="universityclosePopup()">Cancel</button>
    </div>
    <script>
    let Card = document.getElementById("Card");
    let popup = document.getElementById("popup");
    let universitypopup = document.getElementById("universitypopup");
    let accommodationpopup = document.getElementById("accommodationpopup");
    let hometownpopup = document.getElementById("hometownpopup");

        function Spincardforward() {
            ProfileBox.classList.add("Spin-cardforward()");
        }

        function spincardbackward() {
            ProfileBox.classList.remove("spin-cardbackwar");
        }

    function openPopup() {
        popup.classList.add("open-popup");                                                             
    }

    function closePopup() {
        popup.classList.remove("open-popup");
    }

    function universityopenPopup() {
        universitypopup.classList.add("open-popup");
    }
    function universityclosePopup() {
        universitypopup.classList.remove("open-popup");
    }

    

    </script>
    
</asp:Content>
