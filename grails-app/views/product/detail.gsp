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

<g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" />

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
<g:link controller="product" action="category"  params="[category: 'Logo Design']" class="transition" >Need Something Else</g:link>  /<br>
</font>
</p>
    <h1 class="title_work"><g:fieldValue bean="${productInstance}" field="productName"/></h1>

    <div class="view_work">   
        <div class="title_img"><g:img alt="" class="transition" dir="images/img/product-images/large/" file="${fieldValue(bean: productInstance, field: "filePath")}" /></div>
        
        <div class="work_info_text">
        <h4>Category: <g:link controller="product" action="category" id="${params.category}" params="[category: "${productInstance.category}"]" ><g:fieldValue bean="${productInstance}" field="category"/></g:link></h4>
        
        
        
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