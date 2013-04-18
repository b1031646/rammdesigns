<!DOCTYPE html>
<head>	
<title>RAMM Designs | FAQ</title>

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
	<li class="current"><g:link controller="FAQ" action="all" class="transition">FAQ</g:link></li>
</ul>

<div onmousedown="return false"><g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" /></div>

</div>
<hr>
<g:img alt="" class="transition" dir="images/img/page_headers/" file="faq.png" />
<hr>
<br>
<br>

				<g:each in="${FAQInstanceList}" status="i" var="FAQInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					



<table style="width:100%">

  <tr>
<div class="wrapper2">
  <div id="question">
    <div id="q-picture"><g:img alt="Q" class="logo" dir="images" file="img/FAQ/q.png" /></div>
  </div>
  <div id="answer">
    <div id="a-picture"><g:img alt="A" class="logo" dir="images" file="img/FAQ/a.png" /></div>
  </div>
  <div id="answerField"><p>${fieldValue(bean: FAQInstance, field: "question")}</p></div>
  <div id="questionField"><p>${fieldValue(bean: FAQInstance, field: "answer")}</p></div>
</div>
								
					</tr>

<g:img alt="" class="transition" dir="images/img/product-images/" file="divider.png" /><br>
<br>
				</g:each>
				
			</table>
			
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
	<li class="current"><g:link controller="FAQ" action="all" class="transition">FAQ</g:link></li>
    </ul>

</div>

</div>
</div>
</div>
<r:layoutResources/>	
</body>
</html>
