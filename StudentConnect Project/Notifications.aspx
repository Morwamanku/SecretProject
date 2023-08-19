<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="StudentConnect_Project.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Notificationstyle.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="notification-container">
    <div class="notification-ui_dd-content">
        <asp:Repeater ID="NotifactionRepeater" runat="server">
            <ItemTemplate>
                <div class="notification-list notification-list--unread">
                    <div class="notification-list_content">
                      <div class="notification-list_img"><asp:ImageButton ID="Image1" class="img-fluid" runat="server" ImageUrl='<%# Eval("image") %>' Width="100%" Height="63px"  object-fit="cover" /></div>
                      <div class="notification-list_detail">
                        <p><b><asp:Label ID="FirstnameLabel" runat="server"  Text='<%# Eval("Firstname") %>'></asp:Label><asp:Label ID="ConnectConfirmed_IDLabel" runat="server" class="ConnectConfirmed_ID" Text='<%# Eval("ConnectConfirmed_ID") %>'></asp:Label></b> Sent you a message</p>
                        <p class="text-muted"><asp:Label ID="Messagelabel" runat="server"  Text='<%# Eval("message") %>'></asp:Label> </p>
                        <p class="text-muted"><small>2 mins Ago</small></p>
                      </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div class="text-center"> <a href="#" class="btn btn-success">Load more activity</a> </div>
  </div>
</asp:Content>