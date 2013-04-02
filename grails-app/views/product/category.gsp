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
        <li><g:link controller="home" action="contact" class="transition">Contact Us</g:link></li>
</ul>

<g:img alt="SimpleTape" class="logo" dir="images" file="img/logo.png" />

</div>



<!-- Top Content -->
<div class="main_content">
<hr>
<g:img alt="" class="transition" dir="images/img/page_headers/" file="${params.category}.png" />
</p>
<hr>
<br>




				<g:each in="${testInstanceList}" status="i" var="testInstance">

					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">



<table style="width:100%">

  <tr>
<div class="product_category_wrapper" id="product_category_wrapper">
  <div id="image"><g:img alt="" class="transition" dir="images/img/product-images/small/" file="${fieldValue(bean: testInstance, field: "filePath")}" /></div>
  <div id="imageTitle"><b><g:link action="show" id="${testInstance.id}">${fieldValue(bean: testInstance, field: "productName")}</g:link></b></div>
  <div id="description">${fieldValue(bean: testInstance, field: "productDescription")}
</div>
  <div id="moreInfo">£${fieldValue(bean: testInstance, field: "price")}</div>
  <div id="price"><g:link action="show" id="${testInstance.id}"><g:img alt="" class="transition" dir="images/img/more_info/" file="more_info.png" /></g:link></div>
</div>



  </tr>


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
    </ul>

</div>

</div>
</div>
</div>
<r:layoutResources/>	
</body>
</html>
