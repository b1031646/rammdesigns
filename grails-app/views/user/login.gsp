<!DOCTYPE html>
<head>	
<title>RAMM Designs | Login</title>

    <% /*  Resources Links for CSS/JS Files */ %>
    
    <r:require module="application"/>

    <r:layoutResources/>


</head>
<body>
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
        <li><g:link controller="home" action="contact" class="transition">Contact Us</g:link></li>
	<li><g:link controller="FAQ" action="all" class="transition">FAQ</g:link></li>
</ul>

<div onmousedown="return false"><g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" /></div>

</div>

<hr>
<g:img alt="RAMM:Designs" class="logo" dir="images" file="img/page_headers/userloginheader.png" />
<hr>
<div id="large_error" role="status">${flash.message}</div>
<br>
<!-- Top Content -->
   <g:form action="login" name="loginForm">
   <p class="info">
        Please login with your username and password. <br />
        Don't have an account?
        <g:link controller="user" action="signup">Sign up now!</g:link>
      </p>
<br>
       <div><p class="info">Username *</p></div>
       <div id ="errors"><g:textField name="username"
                    value="${fieldValue(bean:loginCmd, field:'username')}"> </g:textField><g:renderErrors bean="${loginCmd}" as="list" field="username"/> </div>
       <div><p class="info">Password *</p></div>
       <div id ="errors"><g:passwordField name="password"></g:passwordField> <g:renderErrors bean="${loginCmd}" as="list" field="password"/></div>
       <br/>
<g:submitButton class="contactButton" name="Login" value="Login"></g:submitButton>
    
    </g:form>
    
  


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
	<li><g:link controller="FAQ" action="all" class="transition">FAQ</g:link></li>
    </ul>

</div>
    
</div>
</div>

<r:layoutResources/>
</body>
</html>
