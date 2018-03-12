<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initail-scale=1"/>
    <title>About</title>
    <link href="css/bootstrap.css" rel="stylesheet"/>
	<link href="css/style2.css" rel="stylesheet"/>
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
							<li class="active"><a href="about.aspx">About</a></li>
							<li><a href="contact.aspx">Contact</a></li>
							<li class="dropdown">
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
					<div class="col-md-12">
						<h3>About</h3>
					</div>
				</div>
			</div>
		</section>
		
		<section id="about">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h3>Welcome to The Official Website of The Nigeria Prison Service </h3>
						<p>
                            

                            The Online Prison Service System. This Service is made available by the Government of Nigeria. 
                            The system is designed to provides information about inmates and aware of their crimes. 
                            Here People can make online complains to the nigeria prison service. 
                            In order to do so, users have to first register themselves on the system.

                            


                            
						</p>
						
						<br />
						
													
							<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
								  <h4 class="panel-title">
									<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									  Users
									</a>
								  </h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								  <div class="panel-body">
                                      User can also see the list of Most Wanted Criminals in various area through this web application. 
                                     Here you can also see the details of a Missing person so that you can contact the police or person 
                                     if found.
									
                                   
								  </div>
								</div>
							  </div>
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
								  <h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									  
                                        Admin Court Register

									</a>
								  </h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
								  <div class="panel-body">
                                        The system enable an Administrator to provide services to users and here the administrator can add and upload information, update, 
                                        delete, view the record added. The administrator can also change his account for more security.
								  </div>
								</div>
							  </div>
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
								  <h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
									  prison warden 
									</a>
								  </h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
								  <div class="panel-body">
									Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 
                                    3 wolf moon officia aute, non cupidatat skateboard dolor br
                                    unch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a 
                                    bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, 
                                    craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice 
                                    lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably
                                     haven't heard of them accusamus labore sustainable VHS.
								  </div>
								</div>
							  </div>
							</div>
						
						
						

						
						
					</div>
					<div class="col-md-4">
						
					</div>
					
				</div>
			</div>
		</section>
		
		<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>-->
		
	<script src="jquery/jquery/jquery-2.0.3.min.js"></script> 
		<script src="js/bootstrap.js"></script>
	   <script src="js/main.js"></script>
		
		
		<footer>
			<div class="containernnn">
				<div class="row">
					<div class="col-md-6">
						<ul">
							<li><a href="index.html">Home</a></li>
							<li><a href="about.html">About</a></li>
							<li><a href="contact.html">contact</a></li>
							<li><a href="#Privacy">Privacy Policy</a></li>
						</ul>
					</div>
					<div class="col-md-6">
						copyright &copy; 2017 All right reversed Abraham Iboroma
					</div>
				</div>
			</div>
		</footer>
		
		
	

    </form>
</body>
</html>

