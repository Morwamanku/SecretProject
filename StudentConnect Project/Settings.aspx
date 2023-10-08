<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="StudentConnect_Project.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="SettingsStyle.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />

    <style>

        .setting-container{
            width:100%;
            margin-top:30px;
        }

       .setting-row{
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            margin-right: -15px;
            margin-left: -15px;
       }

       .card-options{
           width:300px;
            position: relative;           
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 1px solid rgba(0, 0, 0, 0.125);
            border-radius: 0.25rem;
       }

       .filter{
           display:none;
       }
       
                
            
        
        @media (max-width: 1400px) {
            .setting-container{
                max-width: 540px;
            }
          
            .setting-row {
             
                flex-wrap: wrap;
                flex-direction: column;
                justify-content:center;
                margin-inline:auto;
            }

            .card-options{
                width:400px;
            }

            .card{
                width:300px;
            }

        }
    </style>
<div class="setting-container p-0" onclick="removenavigation()">
    <div class="setting-row">
        <div class="col-md-5 col-xl-4">

            <div class="card-options" style="border-radius:25px; width: 300px; margin-bottom:30px;justify-content: center;margin-inline: auto;">
                <div class="card-header">
                    <h5 class="card-title mb-0">Profile Settings</h5>
                </div>

                <div class="list-group list-group-flush" role="tablist" style="border-radius:0px 0px 25px 25px; " >
                    <a class="list-group-item list-group-item-action active" data-toggle="list" href="#account" role="tab">
                      Account
                    </a>
                    <a class="list-group-item list-group-item-action" data-toggle="list" href="#password" role="tab">
                      Password
                    </a>
                    <a class="list-group-item list-group-item-action" data-toggle="list" href="#privacy and safety" role="tab">
                      Privacy and safety
                    </a>
                    <a class="list-group-item list-group-item-action" data-toggle="list" href="#email notifications" role="tab">
                      Email notifications
                    </a>
                    <a class="list-group-item list-group-item-action" data-toggle="list" href="#web notifications" role="tab">
                      Web notifications
                    </a>
                    <a class="list-group-item list-group-item-action" data-toggle="list" href="#" role="tab">
                      Widgets
                    </a>
                    <a class="list-group-item list-group-item-action" data-toggle="list" href="#" role="tab">
                      Your data
                    </a>
                    <a class="list-group-item list-group-item-action" data-toggle="list" href="#" role="tab">
                      Delete account
                    </a>
                </div>
            </div>
        </div>

        <div class="col-md-7 col-xl-8">
            <div class="tab-content">
                <div class="tab-pane fade show active" id="account" role="tabpanel">

                    <div class="card" style="border-radius: 25px; min-width: 300px; justify-content: center;margin-inline: auto;">
                        <div class="card-header">
                            <div class="card-actions float-right">
                                <div class="dropdown show">
                                    <a href="#" data-toggle="dropdown" data-display="static">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal align-middle">
                                            <circle cx="12" cy="12" r="1"></circle>
                                            <circle cx="19" cy="12" r="1"></circle>
                                            <circle cx="5" cy="12" r="1"></circle>
                                        </svg>
                                    </a>

                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="#">Action</a>
                                        <a class="dropdown-item" href="#">Another action</a>
                                        <a class="dropdown-item" href="#">Something else here</a>
                                    </div>
                                </div>
                            </div>
                            <h5 class="card-title mb-0">Public info</h5>
                        </div>
                        <div class="card-body">
                            
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label for="inputUsername">Student Number</label>
                                            
                                            <asp:TextBox ID="StudentNumbertxt" class="form-control" placeholder="Student Number" runat="server"></asp:TextBox>
                                        </div>
                                        
                                    </div>
                                    <div class="col-md-4">
                                        <div class="text-center">
                                            <asp:FormView ID="FormView1" runat="server">
                                                <ItemTemplate>
                                                    
                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' class="rounded-circle img-responsive mt-2" width="128px" Height="128px"/>
                                                </ItemTemplate>
                                            </asp:FormView>
                                            
                                            <div class="mt-2">
                                                <span class="btn btn-primary"><i class="fa fa-upload"></i></span>
                                            </div>
                                            <small>For best results, use an image at least 128px by 128px in .jpg format</small>
                                        </div>
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-primary">Save changes</button>


                        </div>
                    </div>

                    <div class="card" style="border-radius: 25px; min-width: 300px;justify-content: center;margin-inline: auto;">
                        <div class="card-header">
                            <div class="card-actions float-right">
                                <div class="dropdown show">
                                    <a href="#" data-toggle="dropdown" data-display="static">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal align-middle">
                                            <circle cx="12" cy="12" r="1"></circle>
                                            <circle cx="19" cy="12" r="1"></circle>
                                            <circle cx="5" cy="12" r="1"></circle>
                                        </svg>
                                    </a>

                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="#">Action</a>
                                        <a class="dropdown-item" href="#">Another action</a>
                                        <a class="dropdown-item" href="#">Something else here</a>
                                    </div>
                                </div>
                            </div>
                            <h5 class="card-title mb-0">Private info</h5>
                        </div>
                        <div class="card-body">
                         
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputFirstName">First name</label>
                                       
                                        <asp:TextBox ID="FirstNametxt" CssClass="form-control" placeholder="First name" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputLastName">Last name</label>
                                       
                                        <asp:TextBox ID="Lastnametxt" CssClass="form-control" placeholder="Last name" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputUsername">Biography</label>

                                    <asp:TextBox class="form-control" ID="Biotxt" placeholder="Tell something about yourself" runat="server"></asp:TextBox>
                                 </div>
                                <div class="form-group">
                                    <label for="inputUniversity">Degree</label>
                                        	<label for="Course"><i class="zmdi zmdi-account material-icons-name"></i></label>
	                                        <asp:DropDownList CssClass="form-control" ID="UniversityIDList" runat="server">
					                                        <asp:ListItem Value="" >--Choose Institution--</asp:ListItem> 
                                                            <asp:ListItem Value="University of Johannesburg (UJ)" >University of Johannesburg (UJ)</asp:ListItem>    
                                                            <asp:ListItem Value="University of Pretoria (UP)">University of Pretoria (UP) </asp:ListItem>
                                                            <asp:ListItem Value="University of Witwatersrand (WITS)">University of Witwatersrand (WITS) </asp:ListItem>
					                                        <asp:ListItem Value="Sefako Makgatho Health Sciences University">Sefako Makgatho Health Sciences University </asp:ListItem>
					                                        <asp:ListItem Value="Tshwane University of Technology">Tshwane University of Technology</asp:ListItem>
					                                        <asp:ListItem Value="Vaal University of Technolog">Vaal University of Technology</asp:ListItem>
                                            </asp:DropDownList> 
                                </div>
                                <div class="form-group">
                                    <label for="inputFaculty">Faculty</label>
					                <label for="Qualification"><i class="zmdi zmdi-account material-icons-name"></i></label>
					                <asp:DropDownList CssClass="form-control" ID="ddlFaculty" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlFaculty_SelectedIndexChanged">
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
                                <div class="form-group">
                                    <label for="inputDegree">Degree</label>
					                <asp:DropDownList ID="ddlDegree" CssClass="form-control" runat="server">
						                <asp:ListItem Value="" >--Choose Degree--</asp:ListItem> 
					                </asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <label for="inputYearofstudy">Yearofstudy</label>
                                    <label for="Yearofstudy"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <asp:DropDownList CssClass="form-control" ID="YearofstudyList" runat="server">
				                                    <asp:ListItem Value="" >--Choose Year of Study--</asp:ListItem> 
				                                    <asp:ListItem Value="1st Year" >1st Year</asp:ListItem>    
				                                    <asp:ListItem Value="2nd Year">2nd Year</asp:ListItem>
				                                    <asp:ListItem Value="3rd Year">3rd Year"</asp:ListItem>
				                                    <asp:ListItem Value="Honors">Honors</asp:ListItem>
				                                    <asp:ListItem Value="Masters">Masters</asp:ListItem>
				                                    <asp:ListItem Value="PhD">PhD</asp:ListItem>
                                    </asp:DropDownList>     
                                </div>
                                <div class="form-group">
                                    <label for="inputHometown">Hometown</label>
                                    <label for="Hometown"><i class="zmdi zmdi-account material-icons-name"></i></label>  
                                    <asp:DropDownList CssClass="form-control" placeholder="Hometown" ID="HometownList" runat="server">
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
                                    <label for="inputAccommodation">Accommodation</label>
                                    <label for="Accommodation"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <asp:DropDownList CssClass="form-control" ID="AccommodationIDList" runat="server">
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
                                <asp:Button ID="Updatebtn" runat="server" Text="Update" OnClick="Updatebtn_Click" />
                                
                                
                        </div>
                    </div>

                </div>
                <div class="tab-pane fade" id="password" role="tabpanel">
                    <div class="card" style="border-radius: 25px; width:300px;justify-content: center;margin-inline: auto;">
                        <div class="card-body">
                            <h5 class="card-title">Password</h5>

                            
                                <div class="form-group">
                                    <label for="inputPasswordCurrent">Current password</label>
                                    <input type="password" class="form-control" id="inputPasswordCurrent">
                                    <small><a href="#">Forgot your password?</a></small>
                                </div>
                                <div class="form-group">
                                    <label for="inputPasswordNew">New password</label>
                                    <input type="password" class="form-control" id="inputPasswordNew">
                                </div>
                                <div class="form-group">
                                    <label for="inputPasswordNew2">Verify password</label>
                                    <input type="password" class="form-control" id="inputPasswordNew2">
                                </div>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                           

                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="privacy and safety" role="tabpanel">
                    <div class="card" style="border-radius: 25px; width:300px;justify-content: center;margin-inline: auto;">
                        <div class="card-body">
                            <h5 class="card-title">Privacy and safety</h5>
                               
                                <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="email notifications" role="tabpanel">
                    <div class="card" style="border-radius: 25px; width:300px;justify-content: center;margin-inline: auto;">
                        <div class="card-body">
                            <h5 class="card-title">email notifications</h5>
               
                                <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="web notifications" role="tabpanel">
                    <div class="card" style="border-radius: 25px; width:400px;justify-content: center;margin-inline: auto;">
                        <div class="card-body">
                            <h5 class="card-title">web notifications</h5>
               
                                <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
        const darkMode = document.querySelector('.dark-mode');

        darkMode.addEventListener('click', () => {
            document.body.classList.toggle('dark-mode-variables');
            darkMode.querySelector('span:nth-child(1)').classList.toggle('active');
            darkMode.querySelector('span:nth-child(2)').classList.toggle('active');

        })
    </script>
</asp:Content>
