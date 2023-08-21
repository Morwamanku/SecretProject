<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="StudentConnect_Project.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="ViewProfileStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bodywrapper" id="bodywrapper"></div>
    <asp:FormView ID="FormView1" runat="server" OnPageIndexChanging="FormView1_PageIndexChanging">
        <ItemTemplate>
            <div class="flex-wrapper">
                <div class="Profile-image">
                    <asp:ImageButton ID="Image1" class="img-fluid" runat="server" ImageUrl='<%# Eval("image") %>' Height="400px" Width="100%" object-fit="cover"   />
                </div>
                
                <div class="Profile-container ">
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
            bodywrapper.classList.add("bodywrapper");
        }

        function closePopup() {
            popup.classList.remove("open-popup");
            bodywrapper.classList.remove("bodywrapper");
        }
    </script>
</asp:Content>
