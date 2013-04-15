<!DOCTYPE html>
<head>	
<title>RAMM Designs | <g:fieldValue bean="${productInstance}" field="productName"/></title>

    <% /*  Resources Links for CSS/JS Files */ %>
    
    <r:require module="application"/>
    <r:layoutResources/>
<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>

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

<div onmousedown="return false"><g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" /></div>

</div>


<!-- Top Content -->

<hr>
<g:img alt="" class="transition" dir="images/img/page_headers/" file="${productInstance.category}.png" />
<hr>
<div class="main_content">
<p id="category_nav">
<FONT COLOR="#1a3b42">Categories: <g:link controller="product" action="category"  params="[category: 'Logo Design']" class="transition" >Logo Design</g:link> //
<g:link controller="product" action="category"  params="[category: 'Banner Design']" class="transition" >Banner Design</g:link> //
<g:link controller="product" action="category"  params="[category: 'Poster Design']" class="transition" >Poster/Leaflet Design</g:link> //
<g:link controller="product" action="category"  params="[category: 'Business Card Design']" class="transition" >Business Card Design</g:link> //
<g:link controller="product" action="category"  params="[category: 'Social Media Design']" class="transition" >Social Media Design</g:link> //
<g:link controller="home" action="something_else"  params="[category: 'Logo Design']" class="transition" >Need Something Else</g:link>  /<br>
</font>
</p>
    <h1 class="title_work"><g:fieldValue bean="${productInstance}" field="productName"/></h1>

    <div class="view_work">   
        <div class="title_img"><g:img alt="" class="transition" dir="images/img/product-images/large/" file="${fieldValue(bean: productInstance, field: "filePath")}" /></div>
        
        <div class="work_info_text">
        <h4>Category: <g:link controller="product" action="category" id="${params.category}" params="[category: "${productInstance.category}"]" ><g:fieldValue bean="${productInstance}" field="category"/></g:link></h4>

<br>
<g:if test="${session.user}">
     
 <g:form controller="cart" action="cart" name="addtocart">


<g:hiddenField  name="product.id" from="${productInstance.id}" optionKey="id" required="" value="${productInstance.id}" class="many-to-one"/>
<g:hiddenField  name="user.id" from="${session.user.id}" optionKey="id" required="" value="${session.user.id}" class="many-to-one"/>

<g:submitButton class="cartButton" name="addtocart" value="Add to Cart"></g:submitButton>
        
 </g:form>
</g:if>

<g:if test="${flash.message}">
<div class="message_addcart" role="status">${flash.message}</div>
</g:if>
<g:if test="${session.user == null}">
   <g:form controller="user" action="login_product" name="loginForm">
   <p class="info">
        Please login with your username and password. <br />
        Don't have an account?
        <g:link controller="user" action="signup">Sign up now!</g:link>
      </p>
<br>
       <div><p class="info">Username *</p></div>
       <div id ="errors"><g:textField name="username"
                    value="${fieldValue(bean:login_productCmd, field:'username')}"> </g:textField><g:renderErrors bean="${login_productCmd}" as="list" field="username"/> </div>
       <div><p class="info">Password *</p></div>
       <div id ="errors"><g:passwordField name="password"></g:passwordField> <g:renderErrors bean="${login_productCmd}" as="list" field="password"/></div>
       <br/>
	<g:hiddenField  name="product.id" from="${productInstance.id}" optionKey="id" required="" value="${productInstance.id}" class="many-to-one"/>
       <g:submitButton class="loginButton" name="Login" value="Login"></g:submitButton>
    </g:form>
</g:if>

        <div class="description">
        <h4 class="description">DESCRIPTION:</h4>
        
        <p><g:fieldValue bean="${productInstance}" field="productDescription"/></p>
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
	
		</div>
<r:layoutResources/>
</body>
</html>
