<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="StudentConnect_Project.Signup" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css"/>
             
    <!-- Main css -->
    <link href="SignupStyle.css" rel="stylesheet" />
    <title>Sign up</title>
</head>

 <body>
     <video autoplay loop muted plays-inline class="back-video">
                <source src="Background-video/solar_system (720p).mp4" type="video/mp4" />
            </video>
        <section class="sign-in">
            <div>
                <div class="logo">
                    <h1 class="logo"></h1>
                </div>
            </div>
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">Student Sign up</h2>
                            <form method="post" class="register-form" id="registerform" runat="server">
                                <div class="form-group">
                                    <label for="Firstname"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <asp:TextBox ID="Firstnametxt" placeholder="First Name" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="Surname"><i></i></label>
                                    <asp:TextBox ID="Surnametxt" placeholder="Last Name" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="studentnumber"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox  ID="studentnumbertxt" placeholder="Student Number" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="Gender"><i class="zmdi zmdi-account material-icons-name"></i></label>
               
                                        <asp:DropDownList  ID="GenderList" runat="server">
                                            <asp:ListItem Value="Male" >Male</asp:ListItem>    
                                            <asp:ListItem Value="Female">Female</asp:ListItem> 
                                        </asp:DropDownList> 
                                    </div>
                                
                                <div class="form-group">
                                    <label for="Hometown"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:DropDownList ID="HometownList" runat="server">
                                    <asp:ListItem Value="Pretoria" >Pretoria</asp:ListItem>    
                                    <asp:ListItem Value="Johannesburg">Johannesburg</asp:ListItem>
                                    <asp:ListItem Value="Polokwane">Polokwane</asp:ListItem>
                                 </asp:DropDownList> 
                                </div>
                                <div class="form-group">
                                    <label for="University"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:DropDownList ID="UniversityList" runat="server">
                                    <asp:ListItem Value="Bcom Information Systems" >Bcom Information Systems</asp:ListItem>    
                                    <asp:ListItem Value="Bcom Accounting">Bcom Accounting </asp:ListItem>
                                    <asp:ListItem Value="Bcom Law">Bcom Law</asp:ListItem>
                                 </asp:DropDownList>  
                                </div>
                                
                                <div class="form-group">
                                    <label for="AccommodationName"><i></i></label>
                                    <asp:DropDownList ID="AccommodationNametxt" runat="server">
                                        <asp:ListItem Value="Uni-stay" >Uni-stay</asp:ListItem>    
                                        <asp:ListItem Value="South Point">South Point</asp:ListItem>
                                        <asp:ListItem Value="Student Dicks">Student Dicks</asp:ListItem>
                                     </asp:DropDownList> 
                                </div>
                                
                                <div class="form-group">
                                    <label for="Image"><i></i></label>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="Password"><i class="zmdi zmdi-lock"></i></label>
                                    <asp:TextBox ID="Passwordtxt" placeholder="Password" runat="server"></asp:TextBox>

                                </div>
                    
                                <div class="form-group">
                                    <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                    <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree to all statements in <a href="#" class="term-service"> Terms of service</a></label>
                                </div>

                                
                                <div class="form-group form-button">
                                    <asp:Button ID="signupbtn" runat="server" class="form-submit" Text="Register" OnClick="signupbtn_Click" />
                                </div>

                            </form>
                        </div>
                        <div class="signup-image">
                            <figure><img src="Signupimages/our logo.jpg"/></figure>
                            <a href="LogIn.aspx" class="signup-image-link" >Already have an account?</a>
                        </div>
                    </div>
                </div>

            </section>
      

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="Signupjs/main.js"></script>
</body>
</html>

