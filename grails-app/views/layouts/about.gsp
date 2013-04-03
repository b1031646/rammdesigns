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
	<li class="current"><g:link controller="home" action="about" class="transition">About</g:link></li>
        <li><g:link controller="home" action="team" class="transition">Meet Our Team</g:link></li>
        <li><g:link controller="home" action="contact" class="transition">Contact Us</g:link></li>
</ul>

<g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" />

</div>



<!-- Top Content -->
<div class="main_content">
<hr>
<g:img alt="" class="transition" dir="images/img/page_headers/" file="aboutus.png" />
<hr>
<div id="about_page">


<p>
RAMM understands the need for an exceptional graphic design service. We are different to other design companies because we operate like an online shop, allowing the customer to receive an honest buying experience with clear upfront costs. It is therefore not necessary to obtain a quote for most of our products before ordering. This is a time saving element of our service that benefits our customers.

Our detailed consultation process allows us to understand the requirements of our clients. We make sure we liaise with you regularly throughout the design process to make sure our visions match yours. If something isn’t right, or you have some new ideas, then we can make your desired amendments. If you are not satisfied, then we are not satisfied and as a result, you won’t pay a penny until you are happy with the end product.
Your Idea. Your Vision. Our Promise.</p> 


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
