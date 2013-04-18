<!DOCTYPE html>
<head>	
<title>RAMM Designs | Products</title>

    <% /*  Resources Links for CSS/JS Files */ %>
    
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

<ul class="main_navi">
        <li><g:link controller="home" action="index" class="transition">Home</g:link></li>
        <li class="current"><g:link controller="home" action="products" class="transition">Products</g:link></li>
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
<g:img alt="" class="transition" dir="images/img/page_headers/" file="products.png" />
<hr>
<br>

    <ul class="work_list">
        
        <li>
        <div class="work_preview">
            
        </div>
           
        <div class="work_info">
 
        <div class="work_preview"><g:link controller="product" action="category" id="${params.category}" params="[category: 'Logo Design']" class="transition" ><g:img alt="" dir="images"  file="img/product-tiles/large/logodesign.png"/></g:link>
	<g:link controller="product" action="logo_design"  class="transition" ><img alt="" class="view" src="img/linz.png" /></g:link>
           
        </div>
<br>
    <p>View our different logo design packages and give your company the attention it deserves. As part of the service, we will make five designs based on your requirements and visions. You are then free to pick your favourite from the selection.</p>
<hr>
        </div>
        

        </li>
        
        <li class="last_img">
             <div class="work_preview"></div>
           
        <div class="work_info">
 
        <div class="work_preview"><g:link controller="product" action="category" id="${params.category}" params="[category: 'Banner Design']" class="transition" ><g:img alt="" class="transition" dir="images" file="img/product-tiles/large/bannerdesign.png" /></g:link>
           <g:link controller="home" action="products" class="transition" ><g:img alt="" class="view" dir="images"  file="img/linz.png" /></g:link> 
        </div>
<br>
    <p>View our different banner design packages and make your company’s products and services stand out from the crowd. Typical banners are used for advertising through the Google AdWords network and other advertising networks.</p>
<hr>
        </div>
        

        </li>
        
        <li>
             <div class="work_preview"></div>
           
        <div class="work_info">
        
        <div class="work_preview"><g:link controller="product" action="category" id="${params.category}" params="[category: 'Poster Design']" class="transition" ><g:img alt="Best work" class="transition" dir="images" file="img/product-tiles/large/posterdesign.png" /></g:link>
        <g:link controller="home" action="products" class="transition" ><g:img alt="" class="view" dir="images"  file="img/linz.png" /></g:link>
           
        </div>
<br>
    <p>View our different poster design packages and make your company’s events, products and services catch the eye of your potential customers. Typical posters are used for events and trade show promotions. We can cater for most sizes of poster ranging from A4 size upwards.</p>
<hr>
        </div>
        

        </li>
        
        <li class="last_img">
             <div class="work_preview"></div>
           
        <div class="work_info">
 
        <div class="work_preview"><g:link controller="product" action="category" id="${params.category}" params="[category: 'Business Card Design']" class="transition" ><g:img alt="" class="transition" dir="images" file="img/product-tiles/large/businesscarddesign.png" /></g:link>
        <g:link controller="home" action="products" class="transition" ><g:img alt="" class="view" dir="images"  file="img/linz.png" /></g:link>
           
        </div>
<br>
    <p>View our range business of card design packages and give your company the edge at business meetings. Make sure you secure the custom and not your competitors with our eye-catching designs. Single or double sided options available. </p>
<hr>
        </div>
        

        </li>
        
        <li>
             <div class="work_preview"></div>
           
        <div class="work_info">

        <div class="work_preview"><g:link controller="product" action="category" id="${params.category}" params="[category: 'Social Media Design']" class="transition" ><g:img alt="" class="transition" dir="images" file="img/product-tiles/large/socialmediadesign.png" /></g:link>
        <g:link controller="home" action="products" class="transition" ><g:img alt="" class="view" dir="images"  file="img/linz.png" /></g:link>
           
        </div>
<br>
    <p>A large of proportion of the world’s population now uses social networking websites on a regular basis. Intelligent tracking understands the interests of your potential clients. Make sure your company’s social network page catches their interest and secures their custom.</p>
        </div>
        

        </li>
        <li class="last_img">
        <div class="work_preview"></div>
          
        <div class="work_info">
        
        <div class="work_preview"><g:link controller="home" action="something_else" class="transition" ><g:img alt="Best work" class="transition" dir="images" file="img/product-tiles/large/needsomethingelse.png" /></g:link>
        <g:link controller="home" action="products" class="transition" ><g:img alt="" class="view" dir="images"  file="img/linz.png" /></g:link>
           
        </div>
<br>
    <p>Can’t find what you’re looking for? Feel free to contact us and we can discuss your options. This could include large scale projects and other customised products not listed above. For further information, click the image above.</p>
        </div>
        

        </li>
    
    </ul>
  
 
<div id="footer">
<hr>
<br>
    &#169; RAMM Designs 2013. All rights reserved.
    
    <ul class="footer_navi">
       <li><g:link controller="home" action="index" class="transition">Home</g:link></li>
        <li class="current"><g:link controller="home" action="products" class="transition">Products</g:link></li>
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
