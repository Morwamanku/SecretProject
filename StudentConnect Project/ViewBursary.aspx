<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewBursary.aspx.cs" Inherits="StudentConnect_Project.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="ViewProfileStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="bodywrapper" id="bodywrapper" ></div>
<asp:FormView ID="FormView1" runat="server"  >
    <ItemTemplate>
        <div class="flex-wrapper" onclick="removenavigation()">
            <div class="Profile-image">
                <asp:ImageButton ID="Image1" class="img-fluid" runat="server" ImageUrl='<%# Eval("BursaryImage") %>' Height="460px" object-fit="cover"   />
            </div>
            <div class="Profile-container ">
              
                  

               <h1><asp:Label ID="Label1" runat="server"  Text='<%# Eval("BursaryName") %>'></asp:Label>
                  
               </h1>
                <p><asp:Label ID="BursaryDescriptionLabel" runat="server"  Text='<%# Eval("Description") %>'></asp:Label></p>
                <div class="content">
                    
                    <p>Qualifications:<asp:Label ID="QualifiactionsLabel" runat="server"  Text='<%# Eval("Qualifications") %>'></asp:Label></p>
                    <p>Year of Study: <asp:Label ID="StudyYearLabel" runat="server" Text='<%# Eval("StudyYear") %>'></asp:Label> </p>
                    <p>Documents:<asp:Label ID="DocumentsLabel" runat="server"  Text='<%# Eval("Documents") %>'></asp:Label></p>
                    <p>Opening Date:<asp:Label ID="OpeningDateLabel3" runat="server"  Text='<%# Eval("OpeningDate") %>'></asp:Label></p>
                    <p>Closing Date:<asp:Label ID="ClosingDateLabel" runat="server"  Text='<%# Eval("ClosingDate") %>'></asp:Label></p>
                    <p>Link:<asp:Label ID="LinkLabel" runat="server"  Text='<%# Eval("Link") %>'></asp:Label></p>
                </div>
                <div class="Profile-buttons">
                    <asp:Button ID="Backbtn" CssClass="p-btn" runat="server" Text="Back" OnClick="Backbtn_Click"   />
                   
                </div>
            </div>
        </div>
    </ItemTemplate>
    

</asp:FormView>
    
<%--<asp:FormView ID="FormView2" runat="server">
    <ItemTemplate>
        <div class="popup" id="popup">
        <asp:ImageButton ID="Image1" class="popup-img" runat="server" ImageUrl='<%# Eval("image") %>'  object-fit="cover"   />
        <h3>Are you sure you would like to request</h3>
        
        <div class="Profile-buttons">
            <button class="p-btn" type="button" onclick="closePopup()">Back</button>
            <asp:Button ID="Connectbtn" class="connectbtn_done" CssClass="p-btn" runat="server" Text="Request"  />
        </div>
        
    </div>
    </ItemTemplate>

</asp:FormView>--%>


<div class="modal_wrapper">
<div class="shadow"></div>
    <div class="success_wrap">
	    <span class="modal_icon"><ion-icon name="checkmark-sharp"></ion-icon></span>
	    <p>Request Made</p>
    </div>
</div>

<script>
    var connectbtn_done = document.querySelector(".connectbtn_done");
    var modal_wrapper = document.querySelector(".modal_wrapper");
    var shadow = document.querySelector(".shadow");

    connectbtn_done.addEventListener("click", function () {
        modal_wrapper.classList.add("active");
    })

    shadow.addEventListener("click", function () {
        modal_wrapper.classList.remove("active");
    })
</script>

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
