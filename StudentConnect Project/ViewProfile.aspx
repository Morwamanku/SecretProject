<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="StudentConnect_Project.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="ViewProfileStyle.css" rel="stylesheet" />
    
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@200;300;400;500;600;700;800&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
      rel="stylesheet"
    />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
      
      
      .folder {
        width: 350px;
        height: 450px;
        backdrop-filter: blur(10px) saturate(0);
        -webkit-backdrop-filter: blur(10px) saturate(0);
        background: rgba(57, 61, 68, 0.58);
        border-radius: 10mm;
        border: 1px solid rgba(255, 255, 255, 0.125);
        box-shadow: rgba(38, 57, 77, 0.5) 0px 20px 30px -10px;
        box-sizing: border-box;
        padding: 20px;
        transition: 0.25s ease;
        margin-left: 440px;
        margin-top: 5px;
        position: absolute;
      }
      .folder .icons {
        width: 100%;
        height: 100%;
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        grid-template-rows: repeat(3, 1fr);
      }
      .folder .title {
        width: 300px;
        height: fit-content;
        font-family: poppins;
        color: rgb(0, 0, 0);
        position: absolute;
        bottom: calc(100% + 20px);
        left: 50%;
        transform: translate(-50%, 0);
        text-align: center;
        font-size: 20px;
        font-weight: 500;
      }
      .folder .icons .icon {
        width: 120px;
        height: 120px;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
      }
      .symbol {
        width: 55px;
        height: 55px;
        background: rgb(52, 55, 60);
        border-radius: 50%;
        text-align: center;
        line-height: 55px;
        color: white;
        font-size: 23px;
        cursor: pointer;
      }
      .folder .icons .icon .name {
        font-family: poppins;
        font-size: 14px;
        color: white;
        margin-top: 3px;
        cursor: pointer;
      }
      .folder.close {
        width: 50px;
        height: 50px;
        border-radius: 6mm;
        padding: 5px;
      }
      .folder.close .icons {
        display: none;
      }
      .folder.close .title {
        display: none;
      }
      .folder.close .preview {
        width: 100%;
        height: 100%;
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        grid-template-rows: repeat(3, 1fr);
        cursor: pointer;
      }
      .folder.close .dot {
        width: 30px;
        height: 30px;
        position: relative;
        z-index: -1;
      }
      .folder.close .dot::before {
        position: absolute;
        content: "";
        width: 12px;
        height: 12px;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: white;
        border-radius: 50%;
      }
      .folder.open {
        width: 400px;
        height: 400px;
        padding: 20px;
      }
      .folder.open .icons {
        animation: displayIcons 0.5s ease;
      }
      @keyframes displayIcons {
        0%,
        10% {
          display: none;
          opacity: 0;
          transform: scale(0);
        }
        100% {
          display: grid;
          opacity: 1;
          transform: scale(1);
        }
      }
    </style>
    <div class="bodywrapper" id="bodywrapper"></div>
    <asp:FormView ID="FormView1" runat="server" OnPageIndexChanging="FormView1_PageIndexChanging">
        <ItemTemplate>
            <div class="flex-wrapper">
                <div class="Profile-image">
                    <asp:ImageButton ID="Image1" class="img-fluid" runat="server" ImageUrl='<%# Eval("image") %>' Height="460px" object-fit="cover"   />
                </div>
                <div class="Profile-container ">
                  
                      <div class="folder close">
                        <div class="title">My Folder</div>
                        
                        <div class="icons">
                          <div class="icon">
                            <span class="symbol">
                              <i class="fa-brands fa-google"></i>
                            </span>
                            <span class="name">Google</span>
                          </div>
                          <div class="icon">
                            <span class="symbol">
                              <i class="fa-solid fa-envelope"></i>
                            </span>
                            <span class="name">Mail</span>
                          </div>
                          <div class="icon">
                            <span class="symbol">
                              <i class="fa-solid fa-location-dot"></i>
                            </span>
                            <span class="name">Maps</span>
                          </div>
                          <div class="icon">
                            <span class="symbol">
                              <i class="fa-brands fa-youtube"></i>
                            </span>
                            <span class="name">Youtube</span>
                          </div>
                          <div class="icon">
                            <span class="symbol">
                              <i class="fa-brands fa-google-drive"></i
                            ></span>
                            <span class="name">Drive</span>
                          </div>
                          <div class="icon">
                            <span class="symbol">
                              <i class="fa-solid fa-circle-play"></i>
                            </span>
                            <span class="name">Music</span>
                          </div>
                          <div class="icon">
                            <span class="symbol">
                              <i class="fa-brands fa-google-play"></i>
                            </span>
                            <span class="name">Play Store</span>
                          </div>
                          <div class="icon">
                            <span class="symbol"> <i class="fa-brands fa-google-pay"></i> </span
                            ><span class="name">GPay</span>
                          </div>
                          <div class="icon">
                            <span class="symbol">
                              <i class="fa-solid fa-tv"></i>
                            </span>
                            <span class="name">Google TV</span>
                          </div>
                        </div>
                  </div>

                   <h1><asp:Label ID="Label1" runat="server"  Text='<%# Eval("Firstname") %>'></asp:Label>
                       <asp:Label ID="Label2" runat="server" Text='<%# Eval("Surname") %>'></asp:Label>
                   </h1>
                    <p>Im a cool dude that loves good food. I love technology. I would love be a software egineer and work for Amazon one day. I like cars and sports such as UFC </p>
                    <div class="content">
                        <p>StudentNumber:<asp:Label ID="StudentNumberLabel" runat="server"  Text='<%# Eval("StudentNumber") %>'></asp:Label></p>
                        <p>Name:<asp:Label ID="FirstnameLabel" runat="server"  Text='<%# Eval("Firstname") %>'></asp:Label></p>
                        <p>Surname: <asp:Label ID="SurnameLabel1" runat="server" Text='<%# Eval("Surname") %>'></asp:Label> </p>
                        <p>Hometown:<asp:Label ID="HometownLabel" runat="server" class="Hometown" Text='<%# Eval("Hometown") %>'></asp:Label> </p>
                        <p>Institution: <asp:Label ID="UniversityNameLabel" runat="server" class="UniversityName" Text='<%# Eval("UniversityName") %>'></asp:Label> </p>
                        <p>Degree: <asp:Label ID="QualificationNameLabel1" runat="server" class="QualificationName" Text='<%# Eval("QualificationName") %>'></asp:Label></p>
                        <p>LinkedIn: www.LinkedIn.Phogole.com
                        </p>
                    </div>
                    <div class="Profile-buttons">
                        <asp:Button ID="Backbtn" CssClass="p-btn" runat="server" Text="Back" OnClick="Backbtn_Click" />
                        <button  class="p-btn" type="button" onclick="openPopup()">Request</button>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        

    </asp:FormView>

    <asp:FormView ID="FormView2" runat="server">
        <ItemTemplate>
            <div class="popup" id="popup">
            <asp:ImageButton ID="Image1" class="popup-img" runat="server" ImageUrl='<%# Eval("image") %>'  object-fit="cover"   />
            <h3>Are you sure you would like to request</h3>
            
            <div class="Profile-buttons">
                <button class="p-btn" type="button" onclick="closePopup()">Back</button>
                <asp:Button ID="Connectbtn" CssClass="p-btn" runat="server" Text="Request" OnClick="Connectbtn_Click" />
            </div>
            
        </div>
        </ItemTemplate>

    </asp:FormView>
    
    
    <script>
        let popup = document.getElementById("popup");
        let bodywrapper = document.getElementById("bodywrapper");

        function openPopup() {
            popup.classList.add("open-popup");
            bodywrapper.classList.add("open-bodywrapper");
        }

        function closePopup() {
            popup.classList.remove("open-popup");
            bodywrapper.classList.remove("open-bodywrapper");
        }
    </script>
    <script>
        let folder = document.querySelector(".folder");
        document.addEventListener("click", (e) => {
            if (e.target == folder || folder.contains(e.target)) {
                if (folder.classList.contains("close")) {
                    folder.classList.toggle("close");
                    folder.classList.toggle("open");
                }
            } else {
                if (folder.classList.contains("open")) {
                    folder.classList.toggle("close");
                    folder.classList.toggle("open");
                }
            }
        });
    </script>
</asp:Content>
