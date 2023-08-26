  <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="StudentConnect_Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="DashboardStyle.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container1 transition-fade" id="swup">
        
        <div class="container2">
            
        <div class="container" >
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
        
        
 </div>
    <div class="popup" id="popup">

            <div class="filter-content">
                <div class="icons">
  <div class="icon">
    <span class="symbol">
      <i class="fa-solid fa-arrow-up-a-z"></i>
    </span>
    <span class="optionname">A-Z</span>
  </div>
  <div class="icon">
    <span class="symbol">
      <i class="fa-solid fa-graduation-cap"></i>
    </span>
    <span class="optionname">University</span>
  </div>
  <div class="icon">
    <span class="symbol">
      <i class="fa-solid fa-house"></i>
    </span>
    <span class="optionname">Accommodation</span>
  </div>
  <div class="icon">
    <span class="symbol">
      <i class="fa-solid fa-book-open-reader"></i>
    </span>
    <span class="optionname">Course</span>
  </div>
  <div class="icon">
    <span class="symbol">
      <i class="fa-solid fa-person-running"></i>
    </span>
    <span class="optionname">Hobbies</span>
  </div>
  
  
  
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
