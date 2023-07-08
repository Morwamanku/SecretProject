<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="StudentConnect_Project.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="ViewProfileStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
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
                        <p>Age: 21</p>
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
                        <asp:Button ID="Connectbtn" CssClass="p-btn" runat="server" Text="Connect" OnClick="Connectbtn_Click" />
                    </div>
                </div>
            </div>
        </ItemTemplate>
        
    </asp:FormView>
    
</asp:Content>
