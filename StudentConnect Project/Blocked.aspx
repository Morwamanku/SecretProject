<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Blocked.aspx.cs" Inherits="StudentConnect_Project.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="DashboardStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container1">
        <div class="container2">
            <div class="dark-mode">
                    <span class="material-icons-sharp active">
                        light_mode
                    </span>
                    <span class="material-icons-sharp">
                        dark_mode
                    </span>
                </div>
        
           
            
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="card p-0">
                            <div class="card-image">
                                <img src="https://images.pexels.com/photos/2746187/pexels-photo-2746187.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
                                    alt=""/>
                            </div>
                            <div class="card-content d-flex flex-column align-items-center">
                                <h4 class="pt-2">SomeOne Famous</h4>
                                <h5>Creative Desinger</h5>

                                <ul class="social-icons d-flex justify-content-center">
                                    <li style="--i:1">
                                        <a href="#">
                                            <span class="fab fa-facebook"></span>
                                        </a>
                                    </li>
                                    <li style="--i:2">
                                        <a href="#">
                                            <span class="fab fa-twitter"></span>
                                        </a>
                                    </li>
                                    <li style="--i:3">
                                        <a href="#">
                                            <span class="fab fa-instagram"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card p-0">
                            <div class="card-image">
                                <img src="https://i.pinimg.com/564x/04/ad/8d/04ad8d94c465aba235aed3f9d6ebf5dc.jpg"
                                    alt=""/>
                            </div>
                            <div class="card-content d-flex flex-column align-items-center">
                                <h4 class="pt-2">SomeOne Famous</h4>
                                <h5>Creative Desinger</h5>

                                <ul class="social-icons d-flex justify-content-center">
                                    <li style="--i:1">
                                        <a href="#">
                                            <span class="fab fa-facebook"></span>
                                        </a>
                                    </li>
                                    <li style="--i:2">
                                        <a href="#">
                                            <span class="fab fa-twitter"></span>
                                        </a>
                                    </li>
                                    <li style="--i:3">
                                        <a href="#">
                                            <span class="fab fa-instagram"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card p-0">
                            <div class="card-image">
                                <img src="https://i.pinimg.com/564x/e0/03/af/e003af19e7033b0e5d528235f18ad52f.jpg"
                                    alt=""/>
                            </div>
                            <div class="card-content d-flex flex-column align-items-center">
                                <h4 class="pt-2">SomeOne Famous</h4>
                                <h5>Creative Desinger</h5>

                                <ul class="social-icons d-flex justify-content-center">
                                    <li style="--i:1">
                                        <a href="#">
                                            <span class="fab fa-facebook"></span>
                                        </a>
                                    </li>
                                    <li style="--i:2">
                                        <a href="#">
                                            <span class="fab fa-twitter"></span>
                                        </a>
                                    </li>
                                    <li style="--i:3">
                                        <a href="#">
                                            <span class="fab fa-instagram"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <div class="Left-Navigation">
            <div class="advertise-container">
                <img src="https://tse2.mm.bing.net/th?id=OIP.GqS38d_qf8A4c1RGOs8AUgHaKF&amp;pid=Api&amp;P=0&amp;h=180" />
            </div>

             <ul>
    
                    <li>
                        <a href="#">
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
 
    

    

    <script>
            let Card = document.getElementById("Card");

            function Spincardforward() {
                ProfileBox.classList.add("Spin-cardforward()");
            }

            function spincardbackward() {
                ProfileBox.classList.remove("spin-cardbackwar");
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
