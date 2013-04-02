<!DOCTYPE html>
<head>	
<title>RAMM Designs | Contact Us</title>

    <% /*  Resources Links for CSS/JS Files */ %>
    <g:layoutHead/>
    <r:require module="application"/>
    <r:layoutResources/>
    

</head>

<body id="portfolio">
<div id="container">
<div id="login">
<p><h3><g:loginControl/></h3></p>
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
        <li class="current"><g:link controller="home" action="contact" class="transition">Contact Us</g:link></li>
</ul>

<g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" />

</div>



<!-- Top Content -->
<div class="main_content">
<hr>
<g:img alt="" class="transition" dir="images/img/page_headers/" file="contactus.png" />
<hr>
<br>
    <iframe width="900" height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" id="google-map-iframe" src="http://maps.google.co.uk/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Norton,+Sheffield,+S5+9NU,+UK&amp;sll=53.800651,-4.064941&amp;sspn=4.192254,57.084961&amp;ie=UTF8&amp;hq=&amp;hnear=Sheffield,+South+Yorkshire+S5+9NU,+United+Kingdom&amp;ll=53.432447,-1.481781&amp;spn=0.073635,0.404434&amp;z=11&amp;iwloc=near&amp;output=embed"></iframe> 
     
    <div id="about_page">

    <h2>Directions</h2>
    
    <p class="contacts"><big>•</big> From the City Centre take Penistone Rd out of the City Centre.<br>
<big>•</big> Turn right up Herries Road opposite Sheffield Wednesday’s Hillsborough stadium.<br>
<big>•</big> Take the second left onto Wordsworth Avenue.<br>
<big>•</big> Continue on Wordsworth Avenue across two roundabouts and take a left onto Margetson Crescent.<br>
<big>•</big> Knutton Road is situated behind the shops on Margetson Crescent.<br>

<big>•</big> Sheffield City Centre - 4 miles <br>

<big>•</big> M1 Junction 35 - 2 miles<br>
</p>
 <br>   
<h2>Buses</h2>
<p class="contacts"> 
<big>•</big> The following buses stop near to SOAR Works: 83, 83A, 98, 53, 17 and P1. For an up-to-date timetable <a href="${createLink(action:'buses', controller:'home')}" target="_blank">Click Here</a>
</button><br> 
</p>


    </div>
    
    
    <div class="contact_info">
    <form class="contact_form" method="post" action="">
        <h2>Write us a letter</h2>
        <input type="text" class="autoclear" name="name" value="Enter your name"/> <br />
        <input type="text" class="autoclear" name="mail" value="Enter your E-mail"/> <br />
        <textarea cols="30" rows="15" name="message"></textarea>
        <div class="button_cont">
        <input type="submit" value="Send" />
        </div>
    </form>
    
    <div class="other_contacts">
        <h2>Get in touch...</h2>
        <p>Need any more information? Get in touch and we will be happy to assist you...</p>
        <div class="contact_item phone">0114 2675339</div>
        <div class="contact_item mail">ramm.designs@gmail.com</div>
        <div class="contact_item twitter"><a href="${createLink(action:'twitter', controller:'home')}" target="_blank">RAMM_Designs</a></div>
    
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
        <li class="current"><g:link controller="home" action="contact" class="transition">Contact Us</g:link></li>
    </ul>
</div>

</div>
</div>
</div>
<r:layoutResources/>
</body>
</html>
