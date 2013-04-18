<!DOCTYPE html>
<head>	
<title>RAMM Designs | ${params.category}</title>

    <% /*  Resources Links for CSS/JS Files */ %>
    
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
	<li><g:link controller="FAQ" action="all" class="transition">FAQ</g:link></li>
</ul>

<div onmousedown="return false"><g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" /></div>

</div>



<!-- Top Content -->
<div class="main_content">
<hr>
<g:img alt="" class="transition" dir="images/img/page_headers/" file="myaccount.png" />
<hr>	
<p id="category_nav">
<FONT COLOR="#1a3b42">Categories: <g:link controller="user" action="my_account"  class="transition" >My Account</g:link> //
<g:link controller="user" action="edit_details" id="${session.user.id}" class="transition" >Edit Details</g:link> /
</font>
</p>
<br>			
<p id="my_account">You last updated your details on:</p> <FONT COLOR="#1a3b42"><g:formatDate date="${userInstance?.lastUpdated}" type="date" style="LONG"/></font> <p id="my_account">at</p> <FONT COLOR="#1a3b42"><g:formatDate date="${userInstance?.lastUpdated}" type="time" style="SHORT"/></font> <br>
<br> 
		<div id="edit-user" class="content scaffold-edit" role="main">
			
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${userInstance?.id}" />
				<g:hiddenField name="version" value="${userInstance?.version}" />
				<fieldset class="form">
					<g:render template="form_myaccount"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="user_update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					
				</fieldset>
			</g:form>
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
	<li><g:link controller="FAQ" action="all" class="transition">FAQ</g:link></li>
    </ul>

</div>

</div>
</div>
</div>
<r:layoutResources/>	
</body>
</html>
