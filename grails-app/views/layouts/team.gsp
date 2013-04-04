<!DOCTYPE html>
<head>	
<title>RAMM Designs | Meet Our Team</title>

    <% /*  Resources Links for CSS/JS Files */ %>
    <g:layoutHead/>	
    <r:require module="application"/>
    <r:layoutResources/>
    

    
</head>

<body id="home">
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
        <li class="current"><g:link controller="home" action="team" class="transition">Meet Our Team</g:link></li>
        <li><g:link controller="home" action="contact" class="transition">Contact Us</g:link></li>
</ul>

<g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" />

</div>



<!-- Top Content -->
<div class="main_content">
<hr>
<g:img alt="" class="transition" dir="images/img/page_headers/" file="meetourteam.png" />
<hr>
<br>
<p>Meet our friendly team of highly skilled staff who have over 20 years of experience between them. We use the Adobe Creative Suite to develop our work, which is a professional and industry-standard software suite. We also use a detailed planning procedure to make sure the end product is tailored exactly to your needs.</p>

    <div class="our_team">
        <div class="member">
        <g:img dir="images" file="img/team/team_large/colledge.png" title="RAMM Employee" alt="Matt"/>
        <div class="team_info">
        
        <h2>Matthew Colledge</h2>
        
        <p>Matt has a wealth of experience with design software such as Adobe Photoshop and Illustrator. He stays up to date with the latest design fashions and trends to make sure that your company is never left behind. He specialises in design work for contemporary businesses.</p>
        
        </div>
    
        </div>
        
        <div class="member last_img">
        <g:img dir="images" file="img/team/team_large/pitts.png" title="RAMM Employee" alt="Rich"/>
        
        <div class="team_info">
        
        <h2>Richard Pitts</h2>
        
        <p>Rich had been working as a freelance graphic designer for over five years until he joined the RAMM Designs team. He has worked with companies of all sizes and is great at understanding their needs, based on his intensive research and industry knowledge. </p>
        
        </div>
        
        </div>
        
        <div class="member">
        <g:img dir="images" file="img/team/team_large/yildiz.png" title="RAMM Employee" alt="Mike"/>
        
        <div class="team_info">
        
        <h2>Michael Yildiz</h2>
        
        <p>Mike is a passionate graphic designer with an interest in vintage design. With the dramatic increase in vintage styled promotion, it made sense to recruit a designer dedicated to this trend. Mike has a wealthy portfolio of vintage work completed for other clients. </p>
        
        </div>
        
        </div>
        
        <div class="member last_img">
        <g:img dir="images" file="img/team/team_large/stanfield.png" title="RAMM Employee" alt="Arron"/>
        
        <div class="team_info">
        
        <h2>Arron Stanfield</h2>
        
        <p>Arron is an experienced graphic designer with a passion for printed graphic work. He specialises in poster, leaflet and business card design, utilising software such as Adobe InDesign. He keeps up to date with the latest trends and will make your company event stand out.</p>
        
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
        <li class="current"><g:link controller="home" action="team" class="transition">Meet Our Team</g:link></li>
        <li><g:link controller="home" action="contact" class="transition">Contact Us</g:link></li>
    </ul>

</div>

</div>
</div>
</div>
<r:layoutResources/>
</body>
</html>
