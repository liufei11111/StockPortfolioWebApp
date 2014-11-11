<div id="wrapper1" style="z-index:0;">
		<div class="navbar navbar-fixed-top">
			<div class="container">
				<div class="navbar-inner">
					
					<div  class="navbar-brand" style="cursor:poniter;" onclick="window.location='index.jsp'"><div class="brand-bg"><img src='img/logo.png' width='170px' height='60px'/></div></div>	
					
					<div class="menu">
						<ul  class="nav navbar-nav">
							<li class="ms_top ms_havesubmenu"><a class="menu_navigation ms_top ms_havesubmenu" href="index.jsp"><span>Home</span></a></li>
							<%
								if(session.getAttribute("uname") != null) {
							%>
							<li class="ms_top ms_havesubmenu"><a class="menu_navigation ms_top ms_havesubmenu" href="#"><span>Hi <%= session.getAttribute("uname") %></span></a></li>
							
							<li class="ms_top ms_havesubmenu"><a class="menu_navigation ms_top ms_havesubmenu" href="create.jsp"><span>New Outfit</span></a></li>
							<li class="ms_top ms_havesubmenu"><a class="menu_navigation ms_top ms_havesubmenu" href="myown.jsp"><span>My Own</span></a></li>
							<li class="ms_top ms_havesubmenu"><a class="menu_navigation ms_top ms_havesubmenu" href="logout.jsp"><span>Logout</span></a></li>
							<%
								} else {
							%>
							<li class="ms_top ms_havesubmenu"><a class="menu_navigation ms_top ms_havesubmenu" href="login.jsp"><span>Login</span></a></li>
							<%
								}
							%>						
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-top:80px;">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item active">
          <img  src="" width="940" alt="">
          <div class="container">
          	<div class="flip"> 
				  <div class="card"> 
				    <div class="face front">Invests</div> 
				    <div class="face back">Or lost?</div> 
				  </div> 
			   </div> 
          	
            <div class="carousel-caption">
              <h1 style="font-family: 'Arvo', serif"></h1>
            </div>
          </div>
        </div>
        <div class="item">

          <div class="container">
            <div class="carousel-caption">
              <h1 style="font-family: 'Satisfy', cursive;">Get up to the business trend!</h1>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Boost</a></p>
            </div>
          </div>

        </div>
        <div class="item" >
        	
          	<div class="container">
              	<div class="carousel-caption">
              		<h1 style="font-family: 'Satisfy', cursive; font-size:70px;">Explore the unseen opportunities</h1>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Roll!</a></p>
           		 </div>
            </div>
          </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->