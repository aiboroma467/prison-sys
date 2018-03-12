<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sign-up.aspx.cs" Inherits="sign_up" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initail-scale=1"/>
    <title>Sign up</title>

    <link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/style2.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <header>
			<div class="container container-main">
				<div class="row">
					<div class="col-md-4">
						<img class="logo" src="images/badge2.jpg" alt="theblog"/>
					</div>
					<div class="col-md-8">
					    <h1>FEDERAL REPUBLIC OF NIGERIA
                           <span class="em-text">NIGERIAN PRISON SERVICE</span></h1>
                            <p>RIVERS STATE COMMAND</p>
					</div>
				</div>
			</div>
		</header>


        <div class="container container-main">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
						aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation </span>
						<span class="icon-bar"> </span>
						<span class="icon-bar"> </span>
						<span class="icon-bar"> </span>
						</button>
					</div>
					<div id="navbar" class="collapse navbar-collapse"> 
						<ul class="nav navbar-nav">
							<li><a href="Default.aspx">Home</a></li>
							<li><a href="about.aspx">About</a></li>
							<li><a href="contact.aspx">contact</a></li>
							<li class="dropdown active">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Dropdown <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="sign-up.aspx">Sign up</a></li>
									<li><a href="sign-in.aspx">Sign in</a></li>
									
								</ul>
							</li>
						</ul>
					
					</div>
				</div>
			</nav>





		
		<section id="title-bar">
			<div class="container">
				<div class="row">
					<div class="col-md-2">
					    
                    </div>
                    <div class="col-md-10">
						<h1> Register</h1>
                        <asp:Panel ID="Panel1"  runat="server" Visible="False">
                           <div  class="message">
                                <asp:Label ID="msgfal" runat="server"></asp:Label>
                           </div>
                        </asp:Panel>
                        <asp:Panel ID="Panel2"  runat="server" Visible="False">
                           <div  class="messageGreen">
                                <asp:Label ID="msgsucc" runat="server"></asp:Label>
                           </div>
                        </asp:Panel>
					    
                    </div>
				</div>
			</div>
		</section>










					
    
                    <form class="form-horizontal">
 
  
                    </form>



						<form class="form-horizontal"> 
							<div class="form-group"> 
								<label class="col-sm-2 control-label">Names</label> 
								
                                <div class="col-sm-6">
								    <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Names"></asp:TextBox>
                                </div>
							</div> 
							<div class="form-group"> 
								<label class="col-sm-2 control-label">Address</label> 

                                <div class="col-sm-6">
								    <asp:TextBox ID="address" runat="server" class="form-control" placeholder="Address"></asp:TextBox>
                                </div>
							</div> 
							<div class="form-group"> 
								<label class="col-sm-2 control-label">Gender</label> 
								    
                                <div class="col-sm-4">
								    <asp:DropDownList ID="gender" runat="server" class="form-control" Width="150px" Height="28px">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
							</div> 
							<div class="form-group"> 
								<label class="col-sm-2 control-label">State</label> 
								
                                <div class="col-sm-4">
                                <asp:DropDownList ID="state" runat="server" class="form-control" Width="170px" Height="28px">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Abia</asp:ListItem>
                                    <asp:ListItem>Adamawa</asp:ListItem>
                                    <asp:ListItem>Anambra</asp:ListItem>
                                    <asp:ListItem> Akwa Ibom</asp:ListItem>
                                    <asp:ListItem>Bauchi</asp:ListItem>
                                    <asp:ListItem>Bayelsa</asp:ListItem>
                                    <asp:ListItem>Benue</asp:ListItem>
                                    <asp:ListItem>Borno</asp:ListItem>
                                    <asp:ListItem>Cross River</asp:ListItem>
                                    <asp:ListItem>Delta</asp:ListItem>
                                    <asp:ListItem>Ebonyi</asp:ListItem>
                                    <asp:ListItem>Enugu</asp:ListItem>
                                    <asp:ListItem>Edo</asp:ListItem>
                                    <asp:ListItem>Ekiti</asp:ListItem>
                                    <asp:ListItem>Gombe</asp:ListItem>
                                    <asp:ListItem>Imo</asp:ListItem>
                                    <asp:ListItem>Jigawa</asp:ListItem>
                                    <asp:ListItem>Kaduna</asp:ListItem>
                                    <asp:ListItem>Kano</asp:ListItem>
                                    <asp:ListItem>Katsina</asp:ListItem>
                                    <asp:ListItem>Kebbi</asp:ListItem>
                                    <asp:ListItem>Kogi</asp:ListItem>
                                    <asp:ListItem>Kwara</asp:ListItem>
                                    <asp:ListItem>Lagos</asp:ListItem>
                                    <asp:ListItem>Nasarawa</asp:ListItem>
                                    <asp:ListItem>Niger</asp:ListItem>
                                    <asp:ListItem>Ogun</asp:ListItem>
                                    <asp:ListItem>Ondo</asp:ListItem>
                                    <asp:ListItem>Osun</asp:ListItem>
                                    <asp:ListItem>Oyo</asp:ListItem>
                                    <asp:ListItem>Plateau</asp:ListItem>
                                    <asp:ListItem>Rivers</asp:ListItem>
                                    <asp:ListItem>Sokoto</asp:ListItem>
                                    <asp:ListItem>Taraba</asp:ListItem>
                                    <asp:ListItem>Yobe</asp:ListItem>
                                    <asp:ListItem>Zamfara</asp:ListItem>
                                </asp:DropDownList>
            
                                </div>
							</div>
                            <div class="form-group"> 
								<label class="col-sm-2 control-label">Phone</label> 
								
                                <div class="col-sm-4">
								    <asp:TextBox ID="phone" runat="server" class="form-control" placeholder="Phone"></asp:TextBox>
                                </div>
							</div>
                           <div class="form-group"> 
								<label class="col-sm-2 control-label">Email</label> 
								
                                <div class="col-sm-4">
								    <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Phone"></asp:TextBox>
                                </div>
							</div>
                           <div class="form-group"> 
								<label class="col-sm-2 control-label">Username</label> 
								
                                <div class="col-sm-4">
								    <asp:TextBox ID="username" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
                                </div>
							</div>

                            <div class="form-group"> 
								<label class="col-sm-2 control-label">Password</label> 
								
                                <div class="col-sm-4">
								    <asp:TextBox ID="pwd" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
							</div>

                            <div class="form-group"> 
								<label class="col-sm-2 control-label">Confirm Password</label> 
								
                                <div class="col-sm-4">
								    <asp:TextBox ID="confirm" runat="server" class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                </div>
							</div>
                             <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-4">
                                  <asp:Button ID="Button1" CssClass="btn1" runat="server" Text="Create" onclick="Button1_Click"/>
                                </div>
                              </div>
                                
			               </form> 
							


       <footer>
				<div class="row">
					<div class="col-md-6">
						<ul">
							<li><a href="index.html">Home</a></li>
							<li><a href="about.html">About</a></li>
							<li><a href="contact.html">Contact</a></li>
							<li><a href="#Privacy">Privacy Policy</a></li>
						</ul>
					</div>
					<div class="col-md-6">
						copyright &copy; 2017 All right reversed Abraham Iboroma
					</div>
				</div>
		</footer>


    


</div>

     <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>-->
		
	<script src="jquery/jquery/jquery-2.0.3.min.js"></script> 
		<script src="js/bootstrap.js"></script>
	   <script src="js/main.js"></script>
    </form>
</body>
</html>
