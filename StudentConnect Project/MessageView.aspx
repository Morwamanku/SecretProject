<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageView.aspx.cs" Inherits="StudentConnect_Project.MessageView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="MessageStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
                <div class="Phoneviewcontainer">
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
            <input type="text" style="min-width:400px;" placeholder="Search or start new chat" />
          
      </div>
        <ion-icon name="search-outline"></ion-icon>
    </div>
    <!--chat list-->
    
    <div class="Phoneviewcontainer">
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
            <div class="input-text ">
                <asp:Label ID="ConfirmedIDLabel" runat="server" class="ConnectConfirmed_ID" Text='<%# Eval("ConfirmedID") %>'></asp:Label>
                    <div class="message-flex">
 
                        <asp:TextBox ID="messageTextBox" CssClass="text-box" runat="server"></asp:TextBox>
    
                        <div class="send-btn">
                            <%--<asp:Button ID="SButton" class="submit-button" AutoPostBack="True" runat="server" CausesValidation="True" Text="" OnClick="SButton_Click" />--%>
                            <i class="fa fa-paper-plane" aria-hidden="true"></i>
                        </div>
                    </div>                  
            </div>
        </div>
        
    </div>
</div>
    </form>
</body>
</html>
