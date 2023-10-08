<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Tutor.aspx.cs" Inherits="StudentConnect_Project.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="DashboardStyle.css" rel="stylesheet" />
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
                        <asp:Repeater ID="TutorRepeater" runat="server" >
                            <ItemTemplate>
                                <div class="col-lg-4">
                            <div class="card p-0">
                                <div class="card-image">
                                    
                                    <asp:ImageButton ID="Image1" class="img-fluid" runat="server" ImageUrl='<%# Eval("image") %>' Width="100%" Height="340px"  object-fit="cover" OnClick="Image1_Click" />
                                </div>
            
                                <div class="card-content d-flex flex-column align-items-center">
                                    <div class="Fullname">
                                        <asp:Label ID="FirstnameLabel" runat="server"  Text='<%# Eval("Firstname") %>'></asp:Label>
                                        <asp:Label ID="SurnameLabel1" runat="server" Text='<%# Eval("Surname") %>'></asp:Label> 
                                    </div>
                
                                    <asp:Label ID="QualificationNameLabel1" runat="server" class="QualificationName" Text='<%# Eval("QualificationName") %>'></asp:Label>
                
                                    <div class="Card-Studentnumber">
                                        <asp:Label ID="StudentNumberLabel" runat="server" class="StudentNumber" Text='<%# Eval("StudentNumber") %>'></asp:Label>
                                    </div>
                
                                </div>
            
                            </div>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
               </div>
           </div>
        
           <div class="Left-Navigation2">
   

            <ul>
   
                   <li>
                       <a href="Advertise.aspx">
                           <span class="icon"><ion-icon name="rocket-outline"></ion-icon></span>
                           <span class="title">Advertise</span> 
               
                       </a>
                   </li>
       
                   <li>
                       <a href="MarketPlace.aspx">
                           <span class="icon"><ion-icon name="earth-outline"></ion-icon></span>
                           <span class="title">MarketPlace</span>
               
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
                   <asp:Button class="symbol" style="min-width: 55px;"  ID="Default" runat="server" Text="" OnClick="Default_Click" />
                </div>
                <span class="optionname">Default</span>  
              </div>
              <div class="icon">
                  <div class="btn-flex">    
                    <i class="fa-solid fa-graduation-cap" style="    position: absolute;color: white;font-size: 25px;padding: 12px;cursor:pointer;"></i>
                    <button  class="symbol" style="min-width: 55px;" type="button" onclick="universityopenPopup()"></button>
                </div>
                
                <span class="optionname">University</span>
              </div>
              <div class="icon">
                  <div class="btn-flex">
                      <i class="fa-solid fa-house" style="    position: absolute;color: white;font-size: 25px;padding: 12px;cursor:pointer;"></i>
                        <button  class="symbol" style="min-width: 55px;" type="button" onclick="accommodationopenPopup()" ></button>
                    </div>
                <span class="optionname">Accommodation</span>
              </div>
              <div class="icon">
                  <div class="btn-flex">
                        <i class="fa-solid fa-book-open-reader" style="    position: absolute;color: white;font-size: 25px;padding: 12px;cursor:pointer;"></i>
                      <button  class="symbol" style="min-width: 55px;" type="button" onclick="hometownopenPopup()" ></button>
              </div>
                <span class="optionname">Hometown</span>
              </div>
              <div class="icon">
                  <div class="btn-flex">
                      <i class="fa-solid fa-person-running" style="    position: absolute;color: white;font-size: 25px;padding: 12px;cursor:pointer;"></i>
                      <asp:Button class="symbol" ID="Hobbiesbtn" runat="server" Text="" />
                    </div>
                <span class="optionname">Hobbies</span>
              </div>
              </div>
        </div>
        <button type="button" onclick="closePopup()">OK</button>
            </div>

    <div class="popup" id="universitypopup">

        <h1>University</h1>
        <label for="Course"><i class="zmdi zmdi-account material-icons-name"></i></label>
        <asp:DropDownList class="textboxfilter" ID="UniversityNameList" runat="server">
                        <asp:ListItem Value="" >--Choose Institution--</asp:ListItem> 
                        <asp:ListItem Value="University of Johannesburg (UJ)" >University of Johannesburg (UJ)</asp:ListItem>    
                        <asp:ListItem Value="University of Pretoria (UP)">University of Pretoria (UP) </asp:ListItem>
                        <asp:ListItem Value="University of Witwatersrand (WITS)">University of Witwatersrand (WITS) </asp:ListItem>
                        <asp:ListItem Value="Sefako Makgatho Health Sciences University">Sefako Makgatho Health Sciences University </asp:ListItem>
                        <asp:ListItem Value="Tshwane University of Technology">Tshwane University of Technology</asp:ListItem>
                        <asp:ListItem Value="Vaal University of Technolog">Vaal University of Technology</asp:ListItem>
        </asp:DropDownList>
        <div class="button">
            <asp:Button ID="University" class="filter-button" runat="server" Text="Select" OnClick="University_Click" />
        </div>
        
        <button type="button" style="margin-top:10px;" onclick="universityclosePopup()">Cancel</button>
        </div>

    <div class="popup" id="accommodationpopup">

    <h1>Accommodation</h1>
    <div class="form-group">
    <label for="inputAccommodation">Accommodation</label>
    <label for="Accommodation"><i class="zmdi zmdi-account material-icons-name"></i></label>
    <asp:DropDownList CssClass="textboxfilter" ID="AccommodationIDList" runat="server">
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
    <div class="button">
        <asp:Button class="filter-button" ID="Accommodationbtn" runat="server" Text="select" OnClick="Accommodationbtn_Click" />
    </div>
    
    <button type="button" style="margin-top:10px;" onclick="accommodationclosePopup()">Cancel</button>
    </div>

        <div class="popup" id="hometownpopup">

    <h1>Hometown</h1>
    <div class="form-group">
    <label for="inputHometown">Hometown</label>
    <label for="Hometown"><i class="zmdi zmdi-account material-icons-name"></i></label>  
        <asp:DropDownList CssClass="textboxfilter" placeholder="Hometown" ID="HometownList" runat="server">
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
    <div class="button">
        <asp:Button ID="Hometown" class="filter-button" runat="server" Text="Select" OnClick="Hometown_Click" />
    </div>
    
    <button type="button" style="margin-top:10px;" onclick="hometownclosePopup()">Cancel</button>
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

        function accommodationopenPopup() {
            accommodationpopup.classList.add("open-popup");
        }
        function accommodationclosePopup() {
            accommodationpopup.classList.remove("open-popup");
        }

        function hometownopenPopup() {
            hometownpopup.classList.add("open-popup");
        }
        function hometownclosePopup() {
            hometownpopup.classList.remove("open-popup");
        }

    </script>
    
    <script>
    jQuery(function ($) {

        $(".sidebar-dropdown > a").click(function () {
            $(".sidebar-submenu").slideUp(200);
            if (
                $(this)
                    .parent()
                    .hasClass("active")
            ) {
                $(".sidebar-dropdown").removeClass("active");
                $(this)
                    .parent()
                    .removeClass("active");
            } else {
                $(".sidebar-dropdown").removeClass("active");
                $(this)
                    .next(".sidebar-submenu")
                    .slideDown(200);
                $(this)
                    .parent()
                    .addClass("active");
            }
        });

        $("#close-sidebar").click(function () {
            $(".page-wrapper").removeClass("toggled");
        });
        $("#show-sidebar").click(function () {
            $(".page-wrapper").addClass("toggled");
        });




    });
</script>

<script>
    const darkMode = document.querySelector('.dark-mode');

    darkMode.addEventListener('click', () => {
        document.body.classList.toggle('dark-mode-variables');
        darkMode.querySelector('span:nth-child(1)').classList.toggle('active');
        darkMode.querySelector('span:nth-child(2)').classList.toggle('active');
        
    })
</script>
</asp:Content>
