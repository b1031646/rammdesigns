<!DOCTYPE html>
<head>	
<title>RAMM Designs | view_work</title>

    <% /*  Resources Links for CSS/JS Files */ %>
    <g:layoutHead/>
    <r:require module="application"/>
    <r:layoutResources/>


</head>

<body id="view_work">
<div id="container">
<div id="login">
<p id="logintaglib"><g:loginControl/></p>
</div>
    <div class="stripe"></div>

<div id="content">

<!-- Header -->

<div id="header">

<div id="loader"><img alt="" src="img/ajax-loader.gif" /></div>

<ul class="main_navi">
    <li><g:link controller="home" action="index" class="transition">Home</g:link></li>
        <li><g:link controller="home" action="products" class="transition">Products</g:link></li>
	<li><g:link controller="home" action="about" class="transition">About</g:link></li>
        <li><g:link controller="home" action="team" class="transition">Meet Our Team</g:link></li>
        <li><g:link controller="home" action="contact" class="transition">Contact Us</g:link></li>
</ul>

<g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" />

</div>



<!-- Top Content -->
<div class="main_content">

    <h1 class="title_work">SimpleTape: Minimalistic Site Template</h1>

    <div class="view_work">   
        <div class="title_img"><img alt="Work Name Here" src="img/portfolio/works/1.png" /></div>
        
        <div class="work_info_text">
        <h3>Work info:</h3>
        <h4>Client: <a target="_blank" href="http://themeforest.net/">www.anysite.net</a></h4>
        <h4>Tools: <a>HTML+CSS</a>, <a>Photoshop CS5</a>, <a>CSS3</a>, <a>JQuery</a></h4>
        
        <div class="description">
        <h4 class="description">DESCRIPTION:</h4>
        
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
        Aenean non leo nisl. Duis lectus odio, semper eu ultricies sit amet, 
        consectetur vel nunc. Nam gravida diam sapien. 
        Nullam aliquet scelerisque enim eget rhoncus. <a href="portfolio.htm">View all work..</a></p>
        </div>
        </div>
    
    </div>
      
<div id="footer">
<hr>
<br>
    &#169; RAMM Designs 2013. All rights reserved.
    
    <ul class="footer_navi">
        <li><g:link controller="home" action="index" class="transition">Home</g:link></li>
        <li><g:link controller="home" action="products" class="transition">Products</g:link></li>
	<li><g:link controller="home" action="about" class="transition">About</g:link></li>
        <li><g:link controller="home" action="team" class="transition">Meet Our Team</g:link></li>
        <li><g:link controller="home" action="contact" class="transition">Contact Us</g:link></li>
    </ul>
</div>

</div>
</div>
</div>
<r:layoutResources/>
</body>
</html>
