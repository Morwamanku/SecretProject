<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Marketplace.aspx.cs" Inherits="StudentConnect_Project.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="MarketplaceStyle.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .sent{
            display:none;
        }
    </style>
    <div class="container1 transition-fade" id="swup">
        <div class="container2" onclick="removenavigation()">
            <div class="container" >
                <div class="row">
                    <asp:Repeater ID="MarketPlaceRepeater" runat="server">
                        <ItemTemplate>
                            <div class="card">
                              <div class="bg">
                                  <div class="card-image">
                                        <asp:ImageButton ID="Image1" class="img-fluid" runat="server" ImageUrl='<%# Eval("Productimage") %>' Width="100%" Height="340px"  object-fit="cover" OnClick="Image1_Click" />
                                        
                                    </div>
                                  <div class="Card-Studentnumber">
                                    <asp:Label ID="StudentLabel" runat="server" class="StudentNumber" Text='<%# Eval("Student") %>'></asp:Label>
                                  </div>
                              </div>
                              <div class="blob"></div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>

        </div>
            <div class="Left-Navigation2">


 <ul>

        <li>
            <a href="/Advertise/Advertise.aspx">
                <span class="icon"><ion-icon name="rocket-outline"></ion-icon></span>
                <span class="title">Advertise</span> 
            
            </a>
        </li>
    
        <li>
            <a href="#">
                <span class="icon"><ion-icon name="earth-outline"></ion-icon></span>
                <span class="title">Blog</span>
            
            </a>
        </li>
        <li>
            <a href="#">
                <span class="icon"><ion-icon name="school-outline"></ion-icon></span>
                <span class="title">Tutoring</span>
            
            </a>
        </li>

        <li>
            <a href="#">
                <span class="icon"><ion-icon name="ribbon-outline"></ion-icon></span>
                <span class="title">Bursury</span>                
            </a>
        </li>
    </ul>
</div>
    </div>
    
    
        
    
    
    
    
</asp:Content>
