<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="StudentConnect_Project.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Notificationstyle.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="notification-container">
    <h3 class="m-b-50 heading-line">Notifications<i class="fa fa-bell text-muted"></i></h3>
    <div class="notification-ui_dd-content">
      <div class="notification-list notification-list--unread">
        <div class="notification-list_content">
          <div class="notification-list_img"><img src="ProfileImage/boity.jpg" /></div>
          <div class="notification-list_detail">
            <p><b>Lebo</b> Sent you a message</p>
            <p class="text-muted">This week is operation save the semester, are you ready?</p>
            <p class="text-muted"><small>2 mins Ago</small></p>
          </div>
        </div>
      </div>
      <div class="notification-list notification-list--unread">
        <div class="notification-list_content">
          <div class="notification-list_img"><img src="ProfileImage/Pholly.jpg" /> </div>
          <div class="notification-list_detail">
            <p><b>Phogole</b> Requested a connection </p>
            <p class="text-muted">View this profile.</p>
            <p class="text-muted"><small>8 mins Ago </small></p>
          </div>
        </div>
      </div>
      <div class="notification-list notification-list--read">
        <div class="notification-list_content">
          <div class="notification-list_img"><img src="ProfileImage/Kalenga.jpg" /> </div>
          <div class="notification-list_detail">
            <p><b>Ester Kalenga</b> Accepted your Connection Request.</p>
            <p class="text-muted">Start Messaging</p>
            <p class="text-muted"><small>2 hrs ago|</small></p>
          </div>
        </div>
      </div>
      <div class="notification-list notification-list--read">
        <div class="notification-list_content">
          <div class="notification-list_img"><img src="ProfileImage/slayer.jpg" /> </div>
          <div class="notification-list_detail">
            <p><b>Nomathamsanqa</b> Sent you a connection request</p>
            <p class="text-muted"> Accept noma and connect </p>
            <p class="text-muted"><small>10 mins ago</small></p>
          </div>
        </div>
      </div>
      <div class="notification-list notification-list--unread">
        <div class="notification-list_content">
          <div class="notification-list_img"><img src="ProfileImage/Mpati.jpg" /> </div>
          <div class="notification-list_detail">
            <p><b>Tumelo</b>Accepted your connection request</p>
            <p class="text-muted">Start a conversation.</p>
            <p class="text-muted"><small>13 mins ago</small></p>
          </div>
        </div>
      </div>
      <div class="notification-list notification-list--read">
        <div class="notification-list_content">
          <div class="notification-list_img"><img src="ProfileImage/Pholly2.jpg" /></div>
          <div class="notification-list_detail">
            <p><b>Warren</b>Sent you a connection request</p>
            <p class="text-muted">Accept warren and connect</p>
            <p class="text-muted"><small>20 mins ago</small></p>
          </div>
        </div>
      </div>
      <div class="notification-list notification-list--read">
        <div class="notification-list_content">
          <div class="notification-list_img"><img src="ProfileImage/Kanya2.jpg" /></div>
          <div class="notification-list_detail">
            <p><b>Bongiwe Vundhla</b> Connection suggestion </p>
            <p class="text-muted">connect with bongiwe, you both reside in the same student accommodation.</p>
            <p class="text-muted"><small>10 mins ago</small></p>
          </div>
        </div>
      </div>
    </div>
    <div class="text-center"> <a href="#" class="btn btn-success">Load more activity</a> </div>
  </div>
</asp:Content>
