<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="StudentConnect_Project.Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="MessageStyle.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
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
                        <asp:ImageButton ID="Image1" class="img-fluid" runat="server" ImageUrl='<%# Eval("image") %>' Width="100%" Height="40px"  object-fit="cover"  />
                    </div>
                    <div class="details">
                        <div class="listHead">
                            <h4><asp:Label ID="FirstnameLabel" runat="server"  Text='<%# Eval("Firstname") %>'></asp:Label><asp:Label ID="ConnectConfirmed_IDLabel" runat="server" class="ConnectConfirmed_ID" Text='<%# Eval("ConnectConfirmed_ID") %>'></asp:Label></h4>
                            <p class="time">15:30</p>
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
                            <img src="pexels-alexander-kovalev-2847648.jpg"/>
                        </div>
                            <div class="message">
                                <p><asp:Label ID="Messagelabel" runat="server"  Text='<%# Eval("message") %>'></asp:Label><asp:Label ID="ConnectConfirmed_IDLabel2" runat="server" class="ConnectConfirmed_ID" Text='<%# Eval("ConnectConfirmed_ID") %>'></asp:Label> </p>
                            </div>
                        </div>
                
                
            </div>
                </ItemTemplate>
            </asp:Repeater>
            </div>
            <div class="input-text ">
                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <InsertItemTemplate>
                    <asp:Label ID="ConfirmedIDLabel" runat="server" CssClass="hidden-ID" Text='<%# Bind("ConfirmedID") %>'></asp:Label> 
                    <div class="message-flex">
                        <asp:TextBox CssClass="text-box"  ID="messageTextBox" runat="server" Text='<%# Bind("message") %>'></asp:TextBox>
                    <div class="send-btn">
                        <asp:LinkButton ID="InsertButton" CssClass="submit-button" runat="server" CausesValidation="True" CommandName="Insert" Text="" />
                        <i class="fa fa-paper-plane" aria-hidden="true"></i>
                    </div>
                    </div>                  
                </InsertItemTemplate>
                <ItemTemplate>
                    message:
                    <asp:Label ID="messageLabel" runat="server" Text='<%# Bind("message") %>' />
                    <asp:Label ID="ConfirmedIDLabel3" runat="server" CssClass="hidden-ID" Text='<%# Bind("ConfirmedID") %>'></asp:Label> 
                    <br />
                </ItemTemplate>
            </asp:FormView>
            </div>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-ELVRCFJ;Initial Catalog=STUDENTCONNECT_DATABASE;Integrated Security=True"
                InsertCommand="INSERT INTO messages (ConfirmedID,message) VALUES (@ConfirmedID,@message)">
                <InsertParameters>
                    <asp:Parameter Name="ConfirmedID" Type="String" />
                    <asp:Parameter Name="message" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
                
            
        </div>
    </div>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script  src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

        
    </form>
</body>
</html>
