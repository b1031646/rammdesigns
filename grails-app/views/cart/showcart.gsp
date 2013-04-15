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
</ul>

<div onmousedown="return false"><g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" /></div>

</div>



<!-- Top Content -->

<hr>
SHOPPING CART
<hr>
<p id="category_nav">
<FONT COLOR="#1a3b42">Categories: <g:link controller="product" action="category"  params="[category: 'Logo Design']" class="transition" >Logo Design</g:link> //
<g:link controller="product" action="category"  params="[category: 'Banner Design']" class="transition" >Banner Design</g:link> //
<g:link controller="product" action="category"  params="[category: 'Poster Design']" class="transition" >Poster/Leaflet Design</g:link> //
<g:link controller="product" action="category"  params="[category: 'Business Card Design']" class="transition" >Business Card Design</g:link> //
<g:link controller="product" action="category"  params="[category: 'Social Media Design']" class="transition" >Social Media Design</g:link> //
<g:link controller="home" action="something_else"  class="transition" >Need Something Else</g:link>  /<br>
</font>
</p>
<br>
<br>
				<g:each in="${cart}" status="i" var="cartentry">

					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">



<table style="width:100%">

  <tr>
<div class="product_category_wrapper" id="product_category_wrapper">
  <div id="image"><g:img alt="" class="transition" dir="images/img/product-images/small/" file="${cartentry.product.filePath}" /></div>
  <div id="imageTitle"><b><g:link controller="product" action="detail" id="${cartentry.product.id}">${cartentry.product.productName}</g:link></b></div>
  <div id="description"><p>${cartentry.product.productDescription}</p><br>
<br>

</div>
  <div id="moreInfo">£${cartentry.product.price}<br>

<g:link controller="product" action="detail" id="${cartentry.product.id}"><g:img alt="" class="transition" dir="images/img/more_info/" file="more_info.png" /></g:link></div>
  <div id="price">
<b><g:link controller="cart" action="cartdelete" id="${cartentry.id}" class="transition">Delete</g:link></b>
<!-- Add to cart button -->



<!-- End of add to cart button -->



</div>

</div>



  </tr>

<g:img alt="" class="transition" dir="images/img/product-images/" file="divider.png" /><br>

</table>


<br>
			</g:each>


<b>Total Price:<g:formatNumber number="${total}" type="currency" currencyCode="GBP" /></b>






				

			


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
    </ul>

</div>

</div>
</div>
</div>
<r:layoutResources/>	
</body>
</html>
