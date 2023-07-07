<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="StudentConnect_Project.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@48,400,0,0" />
	<title> Settings</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
    
	<link href="Content/bootstrap.min.css" rel="stylesheet" />
    
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="SettingsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="setting-container">
			<div class="bg-white shadow  d-block d-sm-flex">
				<div class="profile-tab-nav">
					<%--<div class="p-4">
						<div class="img-circle text-center mb-3" >
							<img  src="ProfileImage/Pholly.jpg" alt="Image" class="shadow" " 
							enctype="multipart/form-data"/>
							   
						</div>
						<h4 class="text-center">Phogole Thobejnae</h4>
					</div>--%>
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="account-tab" data-toggle="pill" href="#account" role="tab" aria-controls="account" style="border-radius: 25px 0 0" aria-selected="true">
							<span class="material-symbols-sharp">manage_accounts</span>
							Account
						</a>
						<a class="nav-link" id="password-tab" data-toggle="pill" href="#password" role="tab" aria-controls="password" aria-selected="false">
							<span class="material-symbols-sharp">lock</span>
							Password
						</a>
						<a class="nav-link" id="security-tab" data-toggle="pill" href="#security" role="tab" aria-controls="security" aria-selected="false">
							<i class="fa fa-user text-center mr-1"></i> 
							Security
						</a>
						<a class="nav-link" id="notification-tab" data-toggle="pill" href="#notification" role="tab" aria-controls="notification" aria-selected="false">
							<span class="material-symbols-sharp">notifications</span> 
							Notification
						</a>
						<a class="nav-link" id="TimeSpent-tab" data-toggle="pill" href="#TimeSpent" role="tab" aria-controls="TimeSpent" aria-selected="false">
							<span class="material-symbols-sharp">schedule</span> 
							Time Spent
						</a>
						<a class="nav-link" id="Archive-tab" data-toggle="pill" href="#Archive" role="tab" aria-controls="Archive" aria-selected="false">
							<span class="material-symbols-sharp">archive</span> 
							Archive
						</a>
						<a class="nav-link" id="Favourite-tab" data-toggle="pill" href="#Favourite" role="tab" aria-controls="Favourite" aria-selected="false">
							<span class="material-symbols-sharp">favorite</span> 
							Favourite
						</a>
						<a class="nav-link" id="Option1-tab" data-toggle="pill" href="#Option1" role="tab" aria-controls="Option1" aria-selected="false">
							<span class="material-symbols-sharp">bookmark</span> 
							Option1
						</a>
						<a class="nav-link" id="Option2-tab" data-toggle="pill" href="#Option2" role="tab" aria-controls="Option2" aria-selected="false">
							<span class="material-symbols-sharp">translate</span> 
							Option2
						</a>
						<a class="nav-link" id="Option3-tab" data-toggle="pill" href="#Option3" role="tab" aria-controls="Option3" aria-selected="false">
							<span class="material-symbols-sharp">wifi_protected_setup</span>
							Option3
						</a>
					</div>
				</div>
				<div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
					<div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
						<h3 class="mb-4">Account Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>First Name</label>
								  	<input type="text" class="form-control" value=""/>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Last Name</label>
								  	<input type="text" class="form-control" value=""/>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Email</label>
								  	<input type="text" class="form-control" value=""/>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Student number</label>
								  	<input type="text" class="form-control" value=""/>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Institution</label>
								  	<input type="text" class="form-control" value=""/>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>City</label>
								  	<input type="text" class="form-control" value=""/>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
								  	<label>Bio</label>
									<textarea class="form-control" rows="4"></textarea>
								</div>
							</div>
						</div>
						<div>
							<button class="btn btn-primary">Update</button>
							<button class="btn btn-light">Cancel</button>
						</div>
					</div>
					<div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
						<h3 class="mb-4">Password Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Old password</label>
								  	<input type="password" class="form-control"/>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>New password</label>
								  	<input type="password" class="form-control"/>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Confirm new password</label>
								  	<input type="password" class="form-control"/>
								</div>
							</div>
						</div>
						<div>
							<button class="btn btn-primary">Update</button>
							<button class="btn btn-light">Cancel</button>
						</div>
					</div>
					<div class="tab-pane fade" id="security" role="tabpanel" aria-labelledby="security-tab">
						<h3 class="mb-4">Security Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Login</label>
								  	<input type="text" class="form-control"/>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Two-factor auth</label>
								  	<input type="text" class="form-control"/>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="recovery"/>
										<label class="form-check-label" for="recovery">
										Recovery
										</label>
									</div>
								</div>
							</div>
						</div>
						<div>
							<button class="btn btn-primary">Update</button>
							<button class="btn btn-light">Cancel</button>
						</div>
					</div>
					<div class="tab-pane fade" id="notification" role="tabpanel" aria-labelledby="notification-tab">
						<h3 class="mb-4">Notification Settings</h3>
						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id="notification1"/>
								<label class="form-check-label" for="notification1">
									See notifications of people who sent you a Request
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id="notification2"/>
								<label class="form-check-label" for="notification2">
									See Chats Notifications
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id="notification3"/>
								<label class="form-check-label" for="notification3">
									Theme
								</label>
							</div>
						</div>
						<div>
							<button class="btn btn-primary">Update</button>
							<button class="btn btn-light">Cancel</button>
						</div>
					</div>
					<div class="tab-pane fade" id="TimeSpent" role="tabpanel" aria-labelledby="TimeSpent-tab">
						<h3 class="mb-4">TimeSpent Settings</h3>
						
					</div>
					<div class="tab-pane fade" id="Archive" role="tabpanel" aria-labelledby="Archive-tab">
						<h3 class="mb-4">Archive</h3>
						
					</div>
					<div class="tab-pane fade" id="Favourite" role="tabpanel" aria-labelledby="Favourite-tab">
						<h3 class="mb-4">Favourite</h3>
						
					</div>
					<div class="tab-pane fade" id="Option1" role="tabpanel" aria-labelledby="Option1-tab">
						<h3 class="mb-4">Option1 Settings</h3>
						
					</div>
					<div class="tab-pane fade" id="Option2" role="tabpanel" aria-labelledby="Option2-tab">
						<h3 class="mb-4">Option2 Settings</h3>
						
					</div>
					<div class="tab-pane fade" id="Option3" role="tabpanel" aria-labelledby="Option3-tab">
						<h3 class="mb-4">Option3 Settings</h3>
						
					</div>
				</div>
			</div>
		</div>
</asp:Content>
