<!DOCTYPE html>
<head>	
<title>RAMM Designs | ${params.category}</title>

    <% /*  Resources Links for CSS/JS Files */ %>
    
    <r:require module="noborder"/>
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

<hr>
<g:img alt="" class="transition" dir="images/img/page_headers/" file="${params.category}.png" />
<hr>
<div class="main_content">
<p id="category_nav">
<FONT COLOR="#1a3b42">Categories: <g:link controller="product" action="category"  params="[category: 'Logo Design']" class="transition" >Logo Design</g:link> //
<g:link controller="product" action="category"  params="[category: 'Banner Design']" class="transition" >Banner Design</g:link> //
<g:link controller="product" action="category"  params="[category: 'Poster Design']" class="transition" >Poster/Leaflet Design</g:link> //
<g:link controller="product" action="category"  params="[category: 'Business Card Design']" class="transition" >Business Card Design</g:link> //
<g:link controller="product" action="category"  params="[category: 'Social Media Design']" class="transition" >Social Media Design</g:link> //
<g:link controller="home" action="something_else"  class="transition" >Need Something Else</g:link>  /<br>
</font>
</p>
</div>
<br>
<br>




				<g:each in="${testInstanceList}" status="i" var="testInstance">

					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">



<table style="width:100%">

  <tr>
<div class="product_category_wrapper" id="product_category_wrapper">
  <div id="image"><g:img alt="" class="transition" dir="images/img/product-images/small/" file="${fieldValue(bean: testInstance, field: "filePath")}" /></div>
  <div id="imageTitle"><b><g:link action="detail" id="${testInstance.id}">${fieldValue(bean: testInstance, field: "productName")}</g:link></b></div>
  <div id="description"><p>${fieldValue(bean: testInstance, field: "productDescription")}</p>
</div>
  <div id="moreInfo"><p id="orange_price">£${fieldValue(bean: testInstance, field: "price")}</p><br>

<g:link action="detail" id="${testInstance.id}"><g:img alt="" class="transition" dir="images/img/more_info/" file="more_info.png" /></g:link></div>
  <div id="price">

<!-- Add to cart button -->

<g:if test="${session.user}">
     
 <g:form controller="cart" action="cart" name="addtocart">


<g:hiddenField  name="product.id" from="${testInstance.id}" optionKey="id" required="" value="${testInstance.id}" class="many-to-one"/>
<g:hiddenField  name="user.id" from="${session.user.id}" optionKey="id" required="" value="${session.user.id}" class="many-to-one"/>

<g:actionSubmitImage value="submit" type="submit" name="addtocart" controller="cart" action="cart" border="0" src="${resource(dir:'images',file:'img/buttons/addtocart.png')}" border="0" />

        
 </g:form>
</g:if>

<g:if test="${flash.message}">
<div class="message_addcart" role="status">${flash.message}</div>
</g:if>
<g:if test="${session.user == null}">
   
</g:if>

<!-- End of add to cart button -->



</div>

</div>



  </tr>

<g:img alt="" class="transition" dir="images/img/product-images/" file="divider.png" /><br>

</table>


<br>
			</g:each>

				

			


<!-- CUSTOM CODE -->

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
