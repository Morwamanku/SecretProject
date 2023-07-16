<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="StudentConnect_Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="DashboardStyle.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container1">
        
        <div class="container2">
            <div class="flex-filter">
                <div class="dark-mode">
                    <span class="material-icons-sharp active">
                        light_mode
                    </span>
                    <span class="material-icons-sharp">
                        dark_mode
                    </span>
                </div>
            <button  class="filter" type="button" onclick="openPopup()"><span style="font-size:17px">Filter</span><ion-icon name="funnel-outline" style="font-size:17px; margin-top:3px;"></ion-icon></button>
            </div>
        <div class="container">
                <div class="row">
                    <asp:Repeater ID="DashboardRepeater" runat="server" OnItemCommand="DashboardRepeater_ItemCommand">
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
    <div class="popup" id="popup">
            <img src="ProfileImage/Me photo.jpg" />
            <h3>Filter</h3>
            <div class="filter-content">
                <div class="filter-option">
            <asp:RadioButton ID="RadioButton5" runat="server" OnCheckedChanged="RadioButton5_CheckedChanged" />
                <asp:Label ID="Label1" runat="server" Text="Hometown"></asp:Label>
            </div>
            <div class="filter-option">
                <asp:RadioButton ID="RadioButton1" runat="server" />
                <asp:Label ID="Label2" runat="server" Text="A-Z"></asp:Label>
            </div>
        <div class="filter-option">
            <asp:RadioButton ID="RadioButton2" runat="server" />
                <asp:Label ID="Label3" runat="server" Text="Hobbies"></asp:Label>
            </div>
        <div class="filter-option">
                <asp:RadioButton ID="RadioButton4" runat="server" />
                <asp:Label ID="Label4" runat="server" Text="University"></asp:Label>
            </div>
            </div>
            
            <button type="button" onclick="closePopup()">OK</button>
        </div>
  
    <script>
        let Card = document.getElementById("Card");
        let popup = document.getElementById("popup");

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
