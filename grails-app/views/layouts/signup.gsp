<!DOCTYPE html>
<head>	
<title>RAMM Designs | Login</title>

<!-- Resources Links for CSS/JS Files --> 

    <g:layoutHead/>
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


<!-- Top Navigation Bar --> 
 
<ul class="main_navi">
        <li><g:link controller="home" action="index" class="transition">Home</g:link></li>
        <li><g:link controller="home" action="products" class="transition">Products</g:link></li>
	<li><g:link controller="home" action="about" class="transition">About</g:link></li>
        <li><g:link controller="home" action="team" class="transition">Meet Our Team</g:link></li>
        <li><g:link controller="home" action="contact" class="transition">Contact Us</g:link></li>
</ul>

<!-- Ramm Designs Logo -->

<g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" />

</div>


<!-- Registration Area logo -->
<hr>
<g:img alt="RAMM:Designs" class="logo" dir="images" file="img/page_headers/userregistrationheader.png" />
<hr>

<!-- Code to show errors during registration -->
<br>

<!-- This is the start of the registration form fields -->

     <g:form action="signup" name="registerForm">
       <div class="formField">
         <p class = "info"><label for="username">Username *</label></p>
        <div id ="errors"><g:textField name="username" value="${user?.username}"></g:textField><g:renderErrors bean="${user}" as="list" field="username"/></div>
       </div>
<br>
       <div class="formField">
         <p class = "info"><label for="password">Password *</label></p>
         <div id ="errors"><g:passwordField name="password" value="${user?.password}"></g:passwordField><g:renderErrors bean="${user}" as="list" field="password"/></div>
       </div>
<br>
       <div class="formField">
         <p class = "info"><label for="confirm">Confirm Password *</label></p>
         <g:passwordField name="confirm" value="${params?.confirm}"></g:passwordField>
       </div>
<br>
       <div class="formField">
         <p class = "info"><label for="firstName">First Name *</label></p>
         <div id ="errors"><g:textField name="firstName" value="${user?.firstName}"></g:textField><g:renderErrors bean="${user}" as="list" field="firstName"/></div>
       </div>
<br>
    <div class="formField">
      <p class = "info"><label for="lastName">Last Name *</label></p>
      <div id ="errors"><g:textField name="lastName" value="${user?.lastName}"></g:textField><g:renderErrors bean="${user}" as="list" field="lastName"/></div>
    </div>
<br>
    <g:submitButton class="formButton" name="register" value="Register"></g:submitButton>
  </g:form>
<r:layoutResources/>

<!-- Footer -->

<div id="footer">
<hr>
<br>
    &#169; RAMM Designs 2013. All rights reserved.
    
<!-- Footer Navigation Bar -->

    <ul class="footer_navi">
      <li><g:link controller="home" action="index" class="transition">Home</g:link></li>
        <li><g:link controller="home" action="products" class="transition">Products</g:link></li>
	<li><g:link controller="home" action="about" class="transition">About</g:link></li>
        <li><g:link controller="home" action="team" class="transition">Meet Our Team</g:link></li>
        <li><g:link controller="home" action="contact" class="transition">Contact Us</g:link></li>
    </ul>

</div>
</body>
</html>
