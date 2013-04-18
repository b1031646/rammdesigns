<!DOCTYPE html>
<head>	
<title>RAMM Designs | Contact Us</title>

    <% /*  Resources Links for CSS/JS Files */ %>
   
    <r:require module="application"/>
    <r:layoutResources/>
    

</head>

<body id="portfolio">
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
        <li class="current"><g:link controller="home" action="contact" class="transition">Contact Us</g:link></li>
	<li><g:link controller="FAQ" action="all" class="transition">FAQ</g:link></li>
</ul>

<div onmousedown="return false"><g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" /></div>

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
    
	<!-- IF statements to control when to re-focus page on contact form -->


<g:if test="${contact?.name}">
     <body onLoad="document.contactForm.send.focus()">
</g:if>
<g:if test="${contact?.email}">
     <body onLoad="document.contactForm.send.focus()">
</g:if>
<g:if test="${contact?.message}">
     <body onLoad="document.contactForm.send.focus()">
</g:if>
<g:if test="${contact?.name == ''}">
     <body onLoad="document.contactForm.send.focus()">
</g:if>
<g:if test="${contact?.email == ''}">
     <body onLoad="document.contactForm.send.focus()">
</g:if>
<g:if test="${contact?.message == ''}">
     <body onLoad="document.contactForm.send.focus()">
</g:if>
<g:if test="${flash.message == 'Your message has been sent. We will be in touch shortly.'}">
     <body onLoad="document.contactForm.send.focus()">
</g:if>



	<!-- Contact Form -->

    
    <div class="contact_form_info">

    <g:form class ="contact_form" action="contact" name="contactForm">

        <h2>Send us a message...</h2>
        <div id="errors"><input type="text" class="autoclear" name="name" value="Enter your name"/><g:renderErrors bean="${contact}" as="list" field="name"/></div> <br />
        <div id="errors"><input type="text" class="autoclear" name="email" value="Enter your E-mail"/><g:renderErrors bean="${contact}" as="list" field="email"/></div> <br />
        <div id="errors"><textarea cols="30" rows="15" name="message"></textarea><g:renderErrors bean="${contact}" as="list" field="message"/>

	<!-- Contact Form Error & Success Messages -->

	<!-- IF statement to show green success message  -->
        
        <g:if test="${flash.message == 'Your message has been sent. We will be in touch shortly.'}">
     <div id ="success"> 
<br>
${flash.message}
     <g:hasErrors bean="${contact}">
       <div class="errors">
         <g:renderErrors bean="${contact}"></g:renderErrors>
       </div>
     </g:hasErrors>
</div>
</g:if>


</div>

        <div class="button_cont">

        <g:submitButton class="contactButton" name="send" value="Send"></g:submitButton>

        </div>
<br>
<br>
    </g:form>
    

	<!-- Other Contacts -->

    <div class="contact_page_other_contacts">
        <h2>Get in touch...</h2>
<br>
        <p>Need any more information? Get in touch and we will be happy to assist you...</p>
        <div class="contact_item phone">0114 2675339</div>
        <div class="contact_item mail">ramm.designs@gmail.com</div>
        <div class="contact_item twitter"><a href="${createLink(action:'twitter', controller:'home')}" target="_blank">RAMM_Designs</a></div>
    
    </div>
    
    </div>
      
	<!-- Footer -->

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
	<li><g:link controller="FAQ" action="all" class="transition">FAQ</g:link></li>
    </ul>
</div>

</div>
</div>
</div>
<r:layoutResources/>
</body>
</html>
