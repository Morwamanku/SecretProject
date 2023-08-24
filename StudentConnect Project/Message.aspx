<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="StudentConnect_Project.Message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="MessageStyle.css" rel="stylesheet" />
</head>
<body>
    <video autoplay loop muted plays-inline class="back-video">
            <source src="Background-video/Spacy.mp4" type="video/mp4" />
        </video>

    <form id="form1" runat="server">
         <div class="btn">            
                <ul>
                    <li>
                        <a href="Dashboard.aspx">
                            <span class="icon"><ion-icon name="arrow-back-outline"></ion-icon></span>
                            
                                           
                        </a>
                    </li>
                   
                    
                </ul>
            </div>
            <div class="container">
        <div class="leftside">
            <div class="header">
                <div class="userimg">
                    <img src="ProfileImage/Me photo.jpg" class="cover" />
                </div>
                <ul class="nav_icons">
                    <li><ion-icon name="menu-outline"></ion-icon></li>
                    <li><ion-icon name="close-outline"></ion-icon></li>

                </ul>
            </div>
            <!--search_bar-->
            <div class="search_chat">
                <div>
                    <input type="text" placeholder="Search or start new chat" />
              </div>
                <ion-icon name="search-outline"></ion-icon>
            </div>
            <!--chat list-->
            
            <div class="chatlist">
                <asp:Repeater ID="ChataRepeater" runat="server">
                    <ItemTemplate>
                        <div class="block">
                    <div class="imgbox">
                        <asp:ImageButton ID="Image1" class="img-fluid" runat="server" ImageUrl='<%# Eval("image") %>' Width="100%" Height="40px"  object-fit="cover" OnClick="Image1_Click"  />
                    </div>
                    <div class="details">
                        <div class="listHead">
                            <h4><asp:Label ID="FirstnameLabel" runat="server"  Text='<%# Eval("Firstname") %>'></asp:Label><asp:Label ID="ConnectConfirmed_IDLabel" runat="server" class="ConnectConfirmed_ID" Text='<%# Eval("ConnectConfirmed_ID") %>'></asp:Label></h4>
                            <p class="time"><asp:Label ID="StudentNumberLabel" runat="server"  Text='<%# Eval("StudentNumber") %>'></asp:Label></p>
                        </div>
                        
                    </div>
                </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>




        <div class="rightside">
            <div class="right-container">
                <asp:Repeater ID="InboxRepeater" runat="server">
                <ItemTemplate>
                    <div class="message-wrapper">
                        <div class="message-flex">
                        <div class="message-user">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Width="50" />
                        </div>
                            <div class="message">
                                <p><asp:Label ID="Messagelabel" runat="server"  Text='<%# Eval("message") %>'></asp:Label> </p>
                            </div>
                        </div>
                
                
            </div>
                </ItemTemplate>
            </asp:Repeater>
            </div>

            <div class="input-text ">
                <asp:Label ID="ConfirmedIDLabel" runat="server" class="ConnectConfirmed_ID" Text='<%# Eval("ConfirmedID") %>'></asp:Label>
                    <div class="message-flex">
                        <asp:TextBox CssClass="text-box"  ID="messageTextBox" runat="server" ></asp:TextBox>
                    <div class="send-btn">
                        <asp:Button ID="SButton" class="submit-button" AutoPostBack="True" runat="server" CausesValidation="True" Text="" OnClick="SButton_Click" />
                        <i class="fa fa-paper-plane" aria-hidden="true"></i>
                    </div>
                    </div>                  


            </div>
                
            
        </div>
    </div>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script  src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

        
    </form>
</body>
</html>
