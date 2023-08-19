<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="StudentConnect_Project.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="DashboardStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container1">
        <div class="container2">
           
            
        <div class="container">
                <div class="row">
                    <asp:Repeater ID="RequestRepeater" runat="server" >
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
